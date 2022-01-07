; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_track_queue_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_track_queue_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@MSG_ORDERED_TAG = common dso_local global i32 0, align 4
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_track_queue_full(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @jiffies, align 4
  %7 = ashr i32 %6, 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = ashr i32 %10, 4
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load i32, i32* @jiffies, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %34

29:                                               ; preds = %14
  %30 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 10
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %70

40:                                               ; preds = %34
  %41 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %47 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %46, i32 0, i32 %51)
  store i32 -1, i32* %3, align 4
  br label %70

53:                                               ; preds = %40
  %54 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %60 = load i32, i32* @MSG_ORDERED_TAG, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %59, i32 %60, i32 %61)
  br label %68

63:                                               ; preds = %53
  %64 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %65 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %45, %39, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
