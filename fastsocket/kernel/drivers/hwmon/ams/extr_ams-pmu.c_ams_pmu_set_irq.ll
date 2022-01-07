; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-pmu.c_ams_pmu_set_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-pmu.c_ams_pmu_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMS_IRQ_FREEFALL = common dso_local global i32 0, align 4
@AMS_FF_ENABLE = common dso_local global i32 0, align 4
@AMS_IRQ_SHOCK = common dso_local global i32 0, align 4
@AMS_SHOCK_ENABLE = common dso_local global i32 0, align 4
@AMS_IRQ_GLOBAL = common dso_local global i32 0, align 4
@AMS_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8)* @ams_pmu_set_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ams_pmu_set_irq(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @AMS_IRQ_FREEFALL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, i32* @AMS_FF_ENABLE, align 4
  %14 = call i32 @ams_pmu_get_register(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i8, i8* %4, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, 128
  store i32 %19, i32* %5, align 4
  br label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, -129
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @AMS_FF_ENABLE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ams_pmu_set_register(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @AMS_IRQ_SHOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32, i32* @AMS_SHOCK_ENABLE, align 4
  %34 = call i32 @ams_pmu_get_register(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i8, i8* %4, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, 128
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, -129
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @AMS_SHOCK_ENABLE, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ams_pmu_set_register(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %27
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @AMS_IRQ_GLOBAL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load i32, i32* @AMS_CONTROL, align 4
  %54 = call i32 @ams_pmu_get_register(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i8, i8* %4, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, 128
  store i32 %59, i32* %7, align 4
  br label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, -129
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @AMS_CONTROL, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ams_pmu_set_register(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %47
  ret void
}

declare dso_local i32 @ams_pmu_get_register(i32) #1

declare dso_local i32 @ams_pmu_set_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
