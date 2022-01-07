; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_get_supplies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_wm8350_power.c_wm8350_get_supplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_STATE_MACHINE_STATUS = common dso_local global i32 0, align 4
@WM8350_MISC_OVERRIDES = common dso_local global i32 0, align 4
@WM8350_COMPARATOR_OVERRIDES = common dso_local global i32 0, align 4
@WM8350_BATTERY_CHARGER_CONTROL_2 = common dso_local global i32 0, align 4
@WM8350_USB_SM_MASK = common dso_local global i32 0, align 4
@WM8350_USB_SM_SHIFT = common dso_local global i32 0, align 4
@WM8350_CHG_ISEL_MASK = common dso_local global i32 0, align 4
@WM8350_USB_SM_100_SLV = common dso_local global i32 0, align 4
@WM8350_USB_SM_500_SLV = common dso_local global i32 0, align 4
@WM8350_USB_SM_STDBY_SLV = common dso_local global i32 0, align 4
@WM8350_USB_LIMIT_OVRDE = common dso_local global i32 0, align 4
@WM8350_USB_SUPPLY = common dso_local global i32 0, align 4
@WM8350_BATT_SUPPLY = common dso_local global i32 0, align 4
@WM8350_WALL_FB_OVRDE = common dso_local global i32 0, align 4
@WM8350_LINE_SUPPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*)* @wm8350_get_supplies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_get_supplies(%struct.wm8350* %0) #0 {
  %2 = alloca %struct.wm8350*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %9 = load i32, i32* @WM8350_STATE_MACHINE_STATUS, align 4
  %10 = call i32 @wm8350_reg_read(%struct.wm8350* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %12 = load i32, i32* @WM8350_MISC_OVERRIDES, align 4
  %13 = call i32 @wm8350_reg_read(%struct.wm8350* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %15 = load i32, i32* @WM8350_COMPARATOR_OVERRIDES, align 4
  %16 = call i32 @wm8350_reg_read(%struct.wm8350* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %18 = load i32, i32* @WM8350_BATTERY_CHARGER_CONTROL_2, align 4
  %19 = call i32 @wm8350_reg_read(%struct.wm8350* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @WM8350_USB_SM_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @WM8350_USB_SM_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @WM8350_CHG_ISEL_MASK, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @WM8350_USB_SM_100_SLV, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @WM8350_USB_SM_500_SLV, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @WM8350_USB_SM_STDBY_SLV, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %31, %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @WM8350_USB_LIMIT_OVRDE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @WM8350_USB_SUPPLY, align 4
  store i32 %45, i32* %7, align 4
  br label %81

46:                                               ; preds = %39, %35
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @WM8350_USB_SM_100_SLV, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @WM8350_USB_SM_500_SLV, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @WM8350_USB_SM_STDBY_SLV, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54, %50, %46
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @WM8350_USB_LIMIT_OVRDE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @WM8350_USB_SUPPLY, align 4
  %68 = load i32, i32* @WM8350_BATT_SUPPLY, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %7, align 4
  br label %80

70:                                               ; preds = %63, %58, %54
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @WM8350_WALL_FB_OVRDE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @WM8350_LINE_SUPPLY, align 4
  store i32 %76, i32* %7, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @WM8350_BATT_SUPPLY, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %75
  br label %80

80:                                               ; preds = %79, %66
  br label %81

81:                                               ; preds = %80, %44
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
