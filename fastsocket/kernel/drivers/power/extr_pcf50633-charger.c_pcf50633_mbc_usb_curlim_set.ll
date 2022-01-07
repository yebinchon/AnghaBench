; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pcf50633-charger.c_pcf50633_mbc_usb_curlim_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pcf50633-charger.c_pcf50633_mbc_usb_curlim_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32, i32 }
%struct.pcf50633_mbc = type { i32, i32 }

@PCF50633_MBCC7_USB_1000mA = common dso_local global i32 0, align 4
@PCF50633_MBCC7_USB_500mA = common dso_local global i32 0, align 4
@PCF50633_MBCC7_USB_100mA = common dso_local global i32 0, align 4
@PCF50633_MBCC7_USB_SUSPEND = common dso_local global i32 0, align 4
@PCF50633_REG_MBCC7 = common dso_local global i32 0, align 4
@PCF50633_MBCC7_USB_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error setting usb curlim to %d mA\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"usb curlim to %d mA\0A\00", align 1
@PCF50633_REG_MBCS2 = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_MASK = common dso_local global i32 0, align 4
@PCF50633_MBCS2_MBC_BAT_FULL = common dso_local global i32 0, align 4
@PCF50633_REG_MBCC1 = common dso_local global i32 0, align 4
@PCF50633_MBCC1_CHGENA = common dso_local global i32 0, align 4
@PCF50633_MBCC1_RESUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf50633_mbc_usb_curlim_set(%struct.pcf50633* %0, i32 %1) #0 {
  %3 = alloca %struct.pcf50633*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcf50633_mbc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %12 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pcf50633_mbc* @platform_get_drvdata(i32 %13)
  store %struct.pcf50633_mbc* %14, %struct.pcf50633_mbc** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 1000
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @PCF50633_MBCC7_USB_1000mA, align 4
  store i32 %18, i32* %7, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 500
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @PCF50633_MBCC7_USB_500mA, align 4
  store i32 %23, i32* %7, align 4
  br label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 100
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @PCF50633_MBCC7_USB_100mA, align 4
  store i32 %28, i32* %7, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @PCF50633_MBCC7_USB_SUSPEND, align 4
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %35 = load i32, i32* @PCF50633_REG_MBCC7, align 4
  %36 = load i32, i32* @PCF50633_MBCC7_USB_MASK, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %43 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %53

47:                                               ; preds = %33
  %48 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %49 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_info(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %55 = load i32, i32* @PCF50633_REG_MBCS2, align 4
  %56 = call i32 @pcf50633_reg_read(%struct.pcf50633* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @PCF50633_MBCS2_MBC_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @PCF50633_MBCS2_MBC_BAT_FULL, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %65 = load i32, i32* @PCF50633_REG_MBCC1, align 4
  %66 = load i32, i32* @PCF50633_MBCC1_CHGENA, align 4
  %67 = load i32, i32* @PCF50633_MBCC1_CHGENA, align 4
  %68 = call i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633* %64, i32 %65, i32 %66, i32 %67)
  br label %75

69:                                               ; preds = %53
  %70 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %71 = load i32, i32* @PCF50633_REG_MBCC1, align 4
  %72 = load i32, i32* @PCF50633_MBCC1_RESUME, align 4
  %73 = load i32, i32* @PCF50633_MBCC1_RESUME, align 4
  %74 = call i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633* %70, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %78 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %5, align 8
  %80 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %79, i32 0, i32 1
  %81 = call i32 @power_supply_changed(i32* %80)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.pcf50633_mbc* @platform_get_drvdata(i32) #1

declare dso_local i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @pcf50633_reg_read(%struct.pcf50633*, i32) #1

declare dso_local i32 @power_supply_changed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
