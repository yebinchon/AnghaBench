; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbals_from_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbals_from_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32 }
%struct.zfcp_queue_req = type { i32 }
%struct.scatterlist = type { i32 }
%struct.qdio_buffer_element = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %0, %struct.zfcp_queue_req* %1, i32 %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_qdio*, align 8
  %8 = alloca %struct.zfcp_queue_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qdio_buffer_element*, align 8
  %13 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %7, align 8
  store %struct.zfcp_queue_req* %1, %struct.zfcp_queue_req** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %15 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %8, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @zfcp_qdio_sbal_limit(%struct.zfcp_qdio* %14, %struct.zfcp_queue_req* %15, i32 %16)
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %19 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %8, align 8
  %20 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %18, %struct.zfcp_queue_req* %19)
  store %struct.qdio_buffer_element* %20, %struct.qdio_buffer_element** %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %23 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %44, %5
  %27 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %28 = icmp ne %struct.scatterlist* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %31 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %34 = call i32 @sg_virt(%struct.scatterlist* %33)
  %35 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @zfcp_qdio_fill_sbals(%struct.zfcp_qdio* %30, %struct.zfcp_queue_req* %31, i32 %32, i32 %34, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %48

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %46 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %45)
  store %struct.scatterlist* %46, %struct.scatterlist** %10, align 8
  br label %26

47:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @zfcp_qdio_sbal_limit(%struct.zfcp_qdio*, %struct.zfcp_queue_req*, i32) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, %struct.zfcp_queue_req*) #1

declare dso_local i32 @zfcp_qdio_fill_sbals(%struct.zfcp_qdio*, %struct.zfcp_queue_req*, i32, i32, i32) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
