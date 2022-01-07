; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_misc_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_misc_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sm501_devdata = type { i32, i32, i64 }

@SM501_MISC_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"MISC_CONTROL %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm501_misc_control(%struct.device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sm501_devdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.sm501_devdata* @dev_get_drvdata(%struct.device* %11)
  store %struct.sm501_devdata* %12, %struct.sm501_devdata** %7, align 8
  %13 = load %struct.sm501_devdata*, %struct.sm501_devdata** %7, align 8
  %14 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.sm501_devdata*, %struct.sm501_devdata** %7, align 8
  %18 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SM501_MISC_CONTROL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readl(i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = load i64, i64* %5, align 8
  %28 = or i64 %26, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %3
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.sm501_devdata*, %struct.sm501_devdata** %7, align 8
  %35 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SM501_MISC_CONTROL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i64 %33, i64 %38)
  %40 = load %struct.sm501_devdata*, %struct.sm501_devdata** %7, align 8
  %41 = call i32 @sm501_sync_regs(%struct.sm501_devdata* %40)
  %42 = load %struct.sm501_devdata*, %struct.sm501_devdata** %7, align 8
  %43 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %32, %3
  %48 = load %struct.sm501_devdata*, %struct.sm501_devdata** %7, align 8
  %49 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i64, i64* %10, align 8
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local %struct.sm501_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @sm501_sync_regs(%struct.sm501_devdata*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
