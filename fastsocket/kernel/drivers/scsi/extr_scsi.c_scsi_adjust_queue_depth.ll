; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_adjust_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_adjust_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"scsi_adjust_queue_depth, bad queue type, disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_adjust_queue_depth(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %76

11:                                               ; preds = %3
  %12 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %11
  %26 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i64 @blk_queue_tagged(%struct.TYPE_5__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @blk_queue_resize_tags(%struct.TYPE_5__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %68

39:                                               ; preds = %31, %25
  br label %40

40:                                               ; preds = %39, %11
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %55 [
    i32 129, label %45
    i32 128, label %50
    i32 0, label %59
  ]

45:                                               ; preds = %40
  %46 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  br label %67

50:                                               ; preds = %40
  %51 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  br label %67

55:                                               ; preds = %40
  %56 = load i32, i32* @KERN_WARNING, align 4
  %57 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %58 = call i32 @sdev_printk(i32 %56, %struct.scsi_device* %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %40, %55
  %60 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %59, %50, %45
  br label %68

68:                                               ; preds = %67, %38
  %69 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %70 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %69, i32 0, i32 3
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32 %73, i64 %74)
  br label %76

76:                                               ; preds = %68, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @blk_queue_tagged(%struct.TYPE_5__*) #1

declare dso_local i64 @blk_queue_resize_tags(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
