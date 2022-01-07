; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc91x.c_smc_ethtool_geteeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc91x.c_smc_ethtool_geteeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Reading %d bytes at %d(0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Read 0x%x from 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @smc_ethtool_geteeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_ethtool_geteeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %14 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i32, i32, ...) @DBG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @smc_ethtool_geteeprom_len(%struct.net_device* %23)
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %69, %3
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %28 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %72

41:                                               ; preds = %31
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* %12, align 4
  %44 = ashr i32 %43, 1
  %45 = call i32 @smc_read_eeprom_word(%struct.net_device* %42, i32 %44, i32* %11)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %73

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %52, 1
  %54 = call i32 (i32, i8*, i32, i32, ...) @DBG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = ashr i32 %55, 8
  %57 = and i32 %56, 255
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %63, i32* %68, align 4
  br label %69

69:                                               ; preds = %50
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %8, align 4
  br label %25

72:                                               ; preds = %40, %25
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %48
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @DBG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @smc_ethtool_geteeprom_len(%struct.net_device*) #1

declare dso_local i32 @smc_read_eeprom_word(%struct.net_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
