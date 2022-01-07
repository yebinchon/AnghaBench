; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_init_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, i32, i32, i32 }

@w6692_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: couldn't get interrupt %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: IRQ %d count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: IRQ(%d) getting no IRQs during init %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w6692_hw*)* @init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_card(%struct.w6692_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %3, align 8
  store i32 3, i32* %4, align 4
  %6 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %7 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %6, i32 0, i32 3
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @spin_lock_irqsave(i32* %7, i32 %8)
  %10 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %11 = call i32 @disable_hwirq(%struct.w6692_hw* %10)
  %12 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %13 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %12, i32 0, i32 3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @spin_unlock_irqrestore(i32* %13, i32 %14)
  %16 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %17 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @w6692_irq, align 4
  %20 = load i32, i32* @IRQF_SHARED, align 4
  %21 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %22 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %25 = call i64 @request_irq(i32 %18, i32 %19, i32 %20, i32 %23, %struct.w6692_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %29 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %32 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %98

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %89, %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  %43 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %44 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %43, i32 0, i32 3
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @spin_lock_irqsave(i32* %44, i32 %45)
  %47 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %48 = call i32 @initW6692(%struct.w6692_hw* %47)
  %49 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %50 = call i32 @enable_hwirq(%struct.w6692_hw* %49)
  %51 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %52 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %51, i32 0, i32 3
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i32 %53)
  %55 = call i32 @msleep_interruptible(i32 10)
  %56 = load i32, i32* @debug, align 4
  %57 = load i32, i32* @DEBUG_HW, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %42
  %61 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %62 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %65 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %68 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %60, %42
  %72 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %73 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %71
  %77 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %78 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %81 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 3, %83
  %85 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82, i32 %84)
  %86 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %87 = call i32 @reset_w6692(%struct.w6692_hw* %86)
  br label %89

88:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %98

89:                                               ; preds = %76
  br label %38

90:                                               ; preds = %38
  %91 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %92 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %95 = call i32 @free_irq(i32 %93, %struct.w6692_hw* %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %90, %88, %27
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @disable_hwirq(%struct.w6692_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.w6692_hw*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @initW6692(%struct.w6692_hw*) #1

declare dso_local i32 @enable_hwirq(%struct.w6692_hw*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, i32) #1

declare dso_local i32 @reset_w6692(%struct.w6692_hw*) #1

declare dso_local i32 @free_irq(i32, %struct.w6692_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
