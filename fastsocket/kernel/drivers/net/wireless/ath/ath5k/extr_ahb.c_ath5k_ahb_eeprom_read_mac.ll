; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ahb.c_ath5k_ahb_eeprom_read_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ahb.c_ath5k_ahb_eeprom_read_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.platform_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ar231x_board_config* }
%struct.ar231x_board_config = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32*)* @ath5k_ahb_eeprom_read_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_ahb_eeprom_read_mac(%struct.ath5k_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.ar231x_board_config*, align 8
  %7 = alloca i32*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.platform_device* @to_platform_device(i32 %10)
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ar231x_board_config*, %struct.ar231x_board_config** %14, align 8
  store %struct.ar231x_board_config* %15, %struct.ar231x_board_config** %6, align 8
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.platform_device* @to_platform_device(i32 %18)
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.ar231x_board_config*, %struct.ar231x_board_config** %6, align 8
  %25 = getelementptr inbounds %struct.ar231x_board_config, %struct.ar231x_board_config* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.ar231x_board_config*, %struct.ar231x_board_config** %6, align 8
  %31 = getelementptr inbounds %struct.ar231x_board_config, %struct.ar231x_board_config* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32* %36, i32* %37, i32 %38)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
