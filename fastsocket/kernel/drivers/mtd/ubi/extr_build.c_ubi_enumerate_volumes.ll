; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_enumerate_volumes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_enumerate_volumes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.notifier_block = type { i32 }

@UBI_MAX_DEVICES = common dso_local global i32 0, align 4
@ubi_devices = common dso_local global %struct.ubi_device** null, align 8
@UBI_VOLUME_ADDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_enumerate_volumes(%struct.notifier_block* %0) #0 {
  %2 = alloca %struct.notifier_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %11, i64 %13
  %15 = load %struct.ubi_device*, %struct.ubi_device** %14, align 8
  store %struct.ubi_device* %15, %struct.ubi_device** %5, align 8
  %16 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %17 = icmp ne %struct.ubi_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %28

19:                                               ; preds = %10
  %20 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %21 = load i32, i32* @UBI_VOLUME_ADDED, align 4
  %22 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %23 = call i64 @ubi_notify_all(%struct.ubi_device* %20, i32 %21, %struct.notifier_block* %22)
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %18
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %6

31:                                               ; preds = %6
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @ubi_notify_all(%struct.ubi_device*, i32, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
