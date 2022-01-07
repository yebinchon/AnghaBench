; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.request = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @fc_bsg_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_bsg_remove(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %6 = icmp ne %struct.request_queue* %5, null
  br i1 %6, label %7, label %74

7:                                                ; preds = %1
  %8 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @spin_lock_irq(i32 %10)
  %12 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %13 = call i32 @blk_stop_queue(%struct.request_queue* %12)
  br label %14

14:                                               ; preds = %7, %63
  %15 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %16 = call %struct.request* @blk_fetch_request(%struct.request_queue* %15)
  store %struct.request* %16, %struct.request** %3, align 8
  %17 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %22, %28
  %30 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %29, %35
  %37 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %38 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %36, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %45 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @spin_unlock_irq(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %14
  br label %69

51:                                               ; preds = %14
  %52 = load %struct.request*, %struct.request** %3, align 8
  %53 = icmp ne %struct.request* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  %57 = load %struct.request*, %struct.request** %3, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.request*, %struct.request** %3, align 8
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @blk_end_request_all(%struct.request* %59, i32 %61)
  br label %63

63:                                               ; preds = %54, %51
  %64 = call i32 @msleep(i32 200)
  %65 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %66 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @spin_lock_irq(i32 %67)
  br label %14

69:                                               ; preds = %50
  %70 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %71 = call i32 @bsg_unregister_queue(%struct.request_queue* %70)
  %72 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %73 = call i32 @blk_cleanup_queue(%struct.request_queue* %72)
  br label %74

74:                                               ; preds = %69, %1
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @blk_stop_queue(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bsg_unregister_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
