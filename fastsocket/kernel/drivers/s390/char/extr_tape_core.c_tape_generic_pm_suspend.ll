; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_generic_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_generic_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.tape_device = type { i64, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"(%08x): tape_generic_pm_suspend(%p)\0A\00", align 1
@MS_UNLOADED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"A cartridge is loaded in tape device %s, refusing to suspend\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Tape device %s is busy, refusing to suspend\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"(%08x): Drive suspended.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_generic_pm_suspend(%struct.ccw_device* %0) #0 {
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
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %15 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %18 = call i32 (i32, i8*, i32, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.tape_device* %17)
  %19 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %20 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MS_UNLOADED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 0
  %27 = call i32 @dev_name(i32* %26)
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %13
  %32 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %33 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @get_ccwdev_lock(i32 %34)
  %36 = call i32 @spin_lock_irq(i32 %35)
  %37 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %38 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %46 [
    i32 130, label %40
    i32 129, label %40
    i32 128, label %40
  ]

40:                                               ; preds = %31, %31, %31
  %41 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %42 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @get_ccwdev_lock(i32 %43)
  %45 = call i32 @spin_unlock_irq(i32 %44)
  br label %58

46:                                               ; preds = %31
  %47 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %48 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %47, i32 0, i32 0
  %49 = call i32 @dev_name(i32* %48)
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %52 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @get_ccwdev_lock(i32 %53)
  %55 = call i32 @spin_unlock_irq(i32 %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %40
  %59 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %60 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i32, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %46, %24, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.tape_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @DBF_LH(i32, i8*, i32, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
