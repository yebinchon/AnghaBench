; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbal_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbal_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_buffer_element = type { i32, i32 }
%struct.zfcp_qdio = type { i32 }
%struct.zfcp_queue_req = type { i64, i64, i32, i32 }

@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_MORE_SBALS = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@FSF_MAX_SBALS_PER_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qdio_buffer_element* (%struct.zfcp_qdio*, %struct.zfcp_queue_req*, i32)* @zfcp_qdio_sbal_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qdio_buffer_element* @zfcp_qdio_sbal_chain(%struct.zfcp_qdio* %0, %struct.zfcp_queue_req* %1, i32 %2) #0 {
  %4 = alloca %struct.qdio_buffer_element*, align 8
  %5 = alloca %struct.zfcp_qdio*, align 8
  %6 = alloca %struct.zfcp_queue_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qdio_buffer_element*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %5, align 8
  store %struct.zfcp_queue_req* %1, %struct.zfcp_queue_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %10 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %11 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio* %9, %struct.zfcp_queue_req* %10)
  store %struct.qdio_buffer_element* %11, %struct.qdio_buffer_element** %8, align 8
  %12 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %13 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %14 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %18 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %21 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store %struct.qdio_buffer_element* null, %struct.qdio_buffer_element** %4, align 8
  br label %65

25:                                               ; preds = %3
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %27 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %28 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %26, %struct.zfcp_queue_req* %27)
  store %struct.qdio_buffer_element* %28, %struct.qdio_buffer_element** %8, align 8
  %29 = load i32, i32* @SBAL_SFLAGS0_MORE_SBALS, align 4
  %30 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %31 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %35 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %39 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %40 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = srem i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %44 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %48 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FSF_MAX_SBALS_PER_REQ, align 8
  %51 = icmp sgt i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %55 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %57 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %6, align 8
  %58 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio* %56, %struct.zfcp_queue_req* %57)
  store %struct.qdio_buffer_element* %58, %struct.qdio_buffer_element** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %61 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  store %struct.qdio_buffer_element* %64, %struct.qdio_buffer_element** %4, align 8
  br label %65

65:                                               ; preds = %25, %24
  %66 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  ret %struct.qdio_buffer_element* %66
}

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_curr(%struct.zfcp_qdio*, %struct.zfcp_queue_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, %struct.zfcp_queue_req*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
