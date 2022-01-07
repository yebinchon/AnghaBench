; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_chip_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_chip_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@WL1251_POWER_ON_SLEEP = common dso_local global i32 0, align 4
@REGISTERS_BASE = common dso_local global i32 0, align 4
@REGISTERS_DOWN_SIZE = common dso_local global i32 0, align 4
@CHIP_ID_B = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"chip id 0x%x (1251 PG12)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"chip id 0x%x (1251 PG11)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported chip id: 0x%x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*)* @wl1251_chip_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_chip_wakeup(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %5 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %6 = call i32 @wl1251_power_on(%struct.wl1251* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %88

11:                                               ; preds = %1
  %12 = load i32, i32* @WL1251_POWER_ON_SLEEP, align 4
  %13 = call i32 @msleep(i32 %12)
  %14 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %15 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.wl1251*)**
  %19 = load i32 (%struct.wl1251*)*, i32 (%struct.wl1251*)** %18, align 8
  %20 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %21 = call i32 %19(%struct.wl1251* %20)
  %22 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %23 = load i32, i32* @REGISTERS_BASE, align 4
  %24 = load i32, i32* @REGISTERS_DOWN_SIZE, align 4
  %25 = call i32 @wl1251_set_partition(%struct.wl1251* %22, i32 0, i32 0, i32 %23, i32 %24)
  %26 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %27 = call i32 @wl1251_fw_wakeup(%struct.wl1251* %26)
  %28 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %29 = load i32, i32* @CHIP_ID_B, align 4
  %30 = call i32 @wl1251_reg_read32(%struct.wl1251* %28, i32 %29)
  %31 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %32 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %34 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %49 [
    i32 128, label %36
    i32 129, label %42
    i32 130, label %48
  ]

36:                                               ; preds = %11
  %37 = load i32, i32* @DEBUG_BOOT, align 4
  %38 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %39 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @wl1251_debug(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %56

42:                                               ; preds = %11
  %43 = load i32, i32* @DEBUG_BOOT, align 4
  %44 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %45 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wl1251_debug(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %56

48:                                               ; preds = %11
  br label %49

49:                                               ; preds = %11, %48
  %50 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %51 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wl1251_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %86

56:                                               ; preds = %42, %36
  %57 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %58 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %63 = call i32 @wl1251_fetch_firmware(%struct.wl1251* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %86

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %70 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %75 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %80 = call i32 @wl1251_fetch_nvs(%struct.wl1251* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %86

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %73, %68
  br label %86

86:                                               ; preds = %85, %83, %66, %49
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %9
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @wl1251_power_on(%struct.wl1251*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wl1251_set_partition(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local i32 @wl1251_fw_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_reg_read32(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1251_error(i8*, i32) #1

declare dso_local i32 @wl1251_fetch_firmware(%struct.wl1251*) #1

declare dso_local i32 @wl1251_fetch_nvs(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
