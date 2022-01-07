; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_notify_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_notify_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i32, %struct.ubi_notification*)* }
%struct.ubi_notification = type { i32, i32 }

@ubi_notifiers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_notify_all(%struct.ubi_device* %0, i32 %1, %struct.notifier_block* %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca %struct.ubi_notification, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.notifier_block* %2, %struct.notifier_block** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %11 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %7, i32 0, i32 1
  %12 = call i32 @ubi_do_get_device_info(%struct.ubi_device* %10, i32* %11)
  %13 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %58, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %19 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %58

32:                                               ; preds = %22
  %33 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %34 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %35 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %7, i32 0, i32 0
  %42 = call i32 @ubi_do_get_volume_info(%struct.ubi_device* %33, i32 %40, i32* %41)
  %43 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %44 = icmp ne %struct.notifier_block* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %32
  %46 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %47 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %46, i32 0, i32 0
  %48 = load i32 (%struct.notifier_block*, i32, %struct.ubi_notification*)*, i32 (%struct.notifier_block*, i32, %struct.ubi_notification*)** %47, align 8
  %49 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 %48(%struct.notifier_block* %49, i32 %50, %struct.ubi_notification* %7)
  br label %55

52:                                               ; preds = %32
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @blocking_notifier_call_chain(i32* @ubi_notifiers, i32 %53, %struct.ubi_notification* %7)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %31
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %16

61:                                               ; preds = %16
  %62 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %63 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @ubi_do_get_device_info(%struct.ubi_device*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_do_get_volume_info(%struct.ubi_device*, i32, i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.ubi_notification*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
