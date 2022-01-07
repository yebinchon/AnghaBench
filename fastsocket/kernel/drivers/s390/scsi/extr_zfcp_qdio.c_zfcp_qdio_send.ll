; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.TYPE_2__*, %struct.zfcp_qdio_queue }
%struct.TYPE_2__ = type { i32 }
%struct.zfcp_qdio_queue = type { i32, i32, i32 }
%struct.zfcp_queue_req = type { i32, i32 }

@QDIO_FLAG_SYNC_OUTPUT = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_qdio_send(%struct.zfcp_qdio* %0, %struct.zfcp_queue_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_queue_req*, align 8
  %6 = alloca %struct.zfcp_qdio_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %4, align 8
  store %struct.zfcp_queue_req* %1, %struct.zfcp_queue_req** %5, align 8
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %11, i32 0, i32 1
  store %struct.zfcp_qdio_queue* %12, %struct.zfcp_qdio_queue** %6, align 8
  %13 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %5, align 8
  %14 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.zfcp_queue_req*, %struct.zfcp_queue_req** %5, align 8
  %17 = getelementptr inbounds %struct.zfcp_queue_req, %struct.zfcp_queue_req* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @QDIO_FLAG_SYNC_OUTPUT, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %21 = call i32 @zfcp_qdio_account(%struct.zfcp_qdio* %20)
  %22 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %23 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @do_QDIO(i32 %26, i32 %27, i32 0, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %6, align 8
  %36 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @zfcp_qdio_zero_sbals(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %57

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %6, align 8
  %45 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %44, i32 0, i32 1
  %46 = call i32 @atomic_sub(i32 %43, i32* %45)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %6, align 8
  %49 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %53 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %6, align 8
  %54 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = srem i32 %55, %52
  store i32 %56, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %42, %34
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @zfcp_qdio_account(%struct.zfcp_qdio*) #1

declare dso_local i32 @do_QDIO(i32, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zfcp_qdio_zero_sbals(i32, i32, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
