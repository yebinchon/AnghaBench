; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, %struct.zfcp_qdio_queue }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.zfcp_qdio_queue = type { i32, i32, i32 }

@ZFCP_STATUS_ADAPTER_QDIOUP = common dso_local global i32 0, align 4
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_qdio_close(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca %struct.zfcp_qdio*, align 8
  %3 = alloca %struct.zfcp_qdio_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %2, align 8
  %6 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = call i32 @atomic_read(i32* %9)
  %11 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %17 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %16, i32 0, i32 4
  store %struct.zfcp_qdio_queue* %17, %struct.zfcp_qdio_queue** %3, align 8
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %19 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %22 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %23 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = call i32 @atomic_clear_mask(i32 %21, i32* %25)
  %27 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %28 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %27, i32 0, i32 3
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %31 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %30, i32 0, i32 2
  %32 = call i32 @wake_up(i32* %31)
  %33 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %34 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %39 = call i32 @qdio_shutdown(i32 %37, i32 %38)
  %40 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %3, align 8
  %41 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %40, i32 0, i32 1
  %42 = call i32 @atomic_read(i32* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %15
  %47 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %3, align 8
  %48 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %53 = srem i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %3, align 8
  %58 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @zfcp_qdio_zero_sbals(i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %46, %15
  %64 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %3, align 8
  %65 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %3, align 8
  %67 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %66, i32 0, i32 1
  %68 = call i32 @atomic_set(i32* %67, i32 0)
  %69 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %70 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %73 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @atomic_set(i32* %74, i32 0)
  br label %76

76:                                               ; preds = %63, %14
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @qdio_shutdown(i32, i32) #1

declare dso_local i32 @zfcp_qdio_zero_sbals(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
