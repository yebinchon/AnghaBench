; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ahb.c_ath5k_ahb_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ahb.c_ath5k_ahb_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar231x_board_config* }
%struct.ar231x_board_config = type { i64, i64 }

@BOARD_CONFIG_BUFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, i32, i32*)* @ath5k_ahb_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_ahb_eeprom_read(%struct.ath_common* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath5k_hw*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.ar231x_board_config*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %14 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %13, i32 0, i32 0
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %14, align 8
  store %struct.ath5k_hw* %15, %struct.ath5k_hw** %8, align 8
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.platform_device* @to_platform_device(i32 %18)
  store %struct.platform_device* %19, %struct.platform_device** %9, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ar231x_board_config*, %struct.ar231x_board_config** %22, align 8
  store %struct.ar231x_board_config* %23, %struct.ar231x_board_config** %10, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ar231x_board_config*, %struct.ar231x_board_config** %26, align 8
  store %struct.ar231x_board_config* %27, %struct.ar231x_board_config** %10, align 8
  %28 = load %struct.ar231x_board_config*, %struct.ar231x_board_config** %10, align 8
  %29 = getelementptr inbounds %struct.ar231x_board_config, %struct.ar231x_board_config* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %11, align 8
  %32 = load %struct.ar231x_board_config*, %struct.ar231x_board_config** %10, align 8
  %33 = getelementptr inbounds %struct.ar231x_board_config, %struct.ar231x_board_config* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* @BOARD_CONFIG_BUFSZ, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %12, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ugt i32* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

48:                                               ; preds = %3
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
