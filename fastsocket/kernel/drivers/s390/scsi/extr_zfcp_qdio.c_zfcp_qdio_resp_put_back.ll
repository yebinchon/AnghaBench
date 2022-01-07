; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_resp_put_back.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_resp_put_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.TYPE_2__*, %struct.zfcp_qdio_queue }
%struct.TYPE_2__ = type { %struct.ccw_device* }
%struct.ccw_device = type { i32 }
%struct.zfcp_qdio_queue = type { i32, i64 }

@QDIO_FLAG_SYNC_INPUT = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_qdio*, i32)* @zfcp_qdio_resp_put_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_resp_put_back(%struct.zfcp_qdio* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_qdio_queue*, align 8
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %10, i32 0, i32 1
  store %struct.zfcp_qdio_queue* %11, %struct.zfcp_qdio_queue** %5, align 8
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ccw_device*, %struct.ccw_device** %15, align 8
  store %struct.ccw_device* %16, %struct.ccw_device** %6, align 8
  %17 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %5, align 8
  %18 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %5, align 8
  %21 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %20, i32 0, i32 0
  %22 = call i64 @atomic_read(i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %27 = load i32, i32* @QDIO_FLAG_SYNC_INPUT, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @do_QDIO(%struct.ccw_device* %26, i32 %27, i32 0, i64 %28, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %5, align 8
  %36 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @atomic_set(i32* %36, i64 %37)
  br label %53

39:                                               ; preds = %2
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %5, align 8
  %42 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load i64, i64* @QDIO_MAX_BUFFERS_PER_Q, align 8
  %46 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %5, align 8
  %47 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = srem i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %5, align 8
  %51 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %50, i32 0, i32 0
  %52 = call i32 @atomic_set(i32* %51, i64 0)
  br label %53

53:                                               ; preds = %39, %34
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @do_QDIO(%struct.ccw_device*, i32, i32, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
