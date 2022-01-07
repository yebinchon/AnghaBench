; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbale_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbale_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_buffer_element = type { i32 }
%struct.zfcp_qdio = type { i32 }
%struct.zfcp_queue_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qdio_buffer_element* (%struct.zfcp_qdio*, %struct.zfcp_queue_req*, i32)* @zfcp_qdio_sbale_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qdio_buffer_element* @zfcp_qdio_sbale_next(%struct.zfcp_qdio* %0, %struct.zfcp_queue_req* %1, i32 %2) #0 {
  %4 = alloca %struct.qdio_buffer_element*, align 8
  %5 = alloca %struct.zfcp_qdio*, align 8
  %6 = alloca %struct.zfcp_queue_req*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %5, align 8
  store %struct.zfcp_queue_req* %1, %struct.zfcp_queue_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %9 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %12 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %18 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.qdio_buffer_element* @zfcp_qdio_sbal_chain(%struct.zfcp_qdio* %17, %struct.zfcp_queue_req* %18, i32 %19)
  store %struct.qdio_buffer_element* %20, %struct.qdio_buffer_element** %4, align 8
  br label %29

21:                                               ; preds = %3
  %22 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %23 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %27 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %28 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio* %26, %struct.zfcp_queue_req* %27)
  store %struct.qdio_buffer_element* %28, %struct.qdio_buffer_element** %4, align 8
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  ret %struct.qdio_buffer_element* %30
}

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbal_chain(%struct.zfcp_qdio*, %struct.zfcp_queue_req*, i32) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio*, %struct.zfcp_queue_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
