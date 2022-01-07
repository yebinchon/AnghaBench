; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_generic_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_generic_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.tape_device = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"(%08x): tape_generic_offline(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"(%08x): Set offline failed - drive in use.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"(%08x): Drive set offline.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_generic_offline(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.tape_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = call %struct.tape_device* @dev_get_drvdata(i32* %6)
  store %struct.tape_device* %7, %struct.tape_device** %4, align 8
  %8 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %9 = icmp ne %struct.tape_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %15 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %18 = call i32 (i32, i8*, i32, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.tape_device* %17)
  %19 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %20 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_ccwdev_lock(i32 %21)
  %23 = call i32 @spin_lock_irq(i32 %22)
  %24 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %25 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %43 [
    i32 130, label %27
    i32 129, label %27
    i32 128, label %33
  ]

27:                                               ; preds = %13, %13
  %28 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %29 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_ccwdev_lock(i32 %30)
  %32 = call i32 @spin_unlock_irq(i32 %31)
  br label %55

33:                                               ; preds = %13
  %34 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %35 = call i32 @tape_state_set(%struct.tape_device* %34, i32 130)
  %36 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %37 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_ccwdev_lock(i32 %38)
  %40 = call i32 @spin_unlock_irq(i32 %39)
  %41 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %42 = call i32 @tape_cleanup_device(%struct.tape_device* %41)
  br label %55

43:                                               ; preds = %13
  %44 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %45 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %49 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @get_ccwdev_lock(i32 %50)
  %52 = call i32 @spin_unlock_irq(i32 %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %33, %27
  %56 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %57 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %43, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.tape_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @DBF_LH(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @tape_state_set(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_cleanup_device(%struct.tape_device*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
