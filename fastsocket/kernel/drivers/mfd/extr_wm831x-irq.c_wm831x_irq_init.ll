; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"No interrupt specified - functionality limited\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wm831x-irq\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate IRQ worker\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@wm831x_irq_worker = common dso_local global i32 0, align 4
@WM831X_INTERRUPT_STATUS_1_MASK = common dso_local global i64 0, align 8
@WM831X_SYSTEM_INTERRUPTS_MASK = common dso_local global i64 0, align 8
@wm831x_cpu_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"wm831x\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm831x_irq_init(%struct.wm831x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %9 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %8, i32 0, i32 5
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %15 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %86

18:                                               ; preds = %2
  %19 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %21 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %23 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %28 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @ESRCH, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %86

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %36 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %38 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %37, i32 0, i32 3
  %39 = load i32, i32* @wm831x_irq_worker, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %61, %33
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %44 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %50 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 65535, i32* %54, align 4
  %55 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %56 = load i64, i64* @WM831X_INTERRUPT_STATUS_1_MASK, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @wm831x_reg_write(%struct.wm831x* %55, i64 %59, i32 65535)
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %66 = load i64, i64* @WM831X_SYSTEM_INTERRUPTS_MASK, align 8
  %67 = call i32 @wm831x_reg_write(%struct.wm831x* %65, i64 %66, i32 0)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @wm831x_cpu_irq, align 4
  %70 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %71 = load i32, i32* @IRQF_SHARED, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %74 = call i32 @request_irq(i32 %68, i32 %69, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.wm831x* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %64
  %78 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %79 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %77, %26, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i64, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.wm831x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
