; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_start_and_await_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_start_and_await_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"irqs are disabled, cannot poll for event\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STU300_ERROR_NONE = common dso_local global i32 0, align 4
@I2C_CR_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@I2C_CR = common dso_local global i64 0, align 8
@STU300_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"wait_for_completion_interruptible_timeout() returned %d waiting for event %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"controller timed out waiting for event %d, reinit hardware\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"controller (start) error %d waiting for event %d, reinit hardware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*, i32, i32)* @stu300_start_and_await_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_start_and_await_event(%struct.stu300_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stu300_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @irqs_disabled()
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %92

16:                                               ; preds = %3
  %17 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %18 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %17, i32 0, i32 5
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %21 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %20, i32 0, i32 3
  %22 = call i32 @init_completion(i32* %21)
  %23 = load i32, i32* @STU300_ERROR_NONE, align 4
  %24 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %25 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %28 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %30 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %29, i32 0, i32 5
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = load i32, i32* @I2C_CR_INTERRUPT_ENABLE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %37 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @I2C_CR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @stu300_wr8(i32 %35, i64 %40)
  %42 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %43 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %42, i32 0, i32 3
  %44 = load i32, i32* @STU300_TIMEOUT, align 4
  %45 = call i32 @wait_for_completion_interruptible_timeout(i32* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %16
  %49 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %50 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %92

57:                                               ; preds = %16
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %62 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %68 = call i32 @stu300_init_hw(%struct.stu300_dev* %67)
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %92

71:                                               ; preds = %57
  %72 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %73 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @STU300_ERROR_NONE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  %78 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %79 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %83 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.stu300_dev*, %struct.stu300_dev** %5, align 8
  %88 = call i32 @stu300_init_hw(%struct.stu300_dev* %87)
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %77, %60, %48, %12
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @stu300_wr8(i32, i64) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @stu300_init_hw(%struct.stu300_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
