; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i64 }

@CHIP_ID_YUKON_EC_U = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_SUPR = common dso_local global i64 0, align 8
@PHY_MARV_EXT_ADR = common dso_local global i32 0, align 4
@PHY_MARV_PHY_CTRL = common dso_local global i32 0, align 4
@PHY_MARV_LED_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*, i32)* @sky2_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_led(%struct.sky2_port* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sky2_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %9 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %8, i32 0, i32 2
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %9, align 8
  store %struct.sky2_hw* %10, %struct.sky2_hw** %5, align 8
  %11 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %15 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %18 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHIP_ID_YUKON_EC_U, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %2
  %23 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %24 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %30 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CHIP_ID_YUKON_SUPR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %98

34:                                               ; preds = %28, %22, %2
  %35 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %38 = call i32 @gm_phy_read(%struct.sky2_hw* %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %42 = call i32 @gm_phy_write(%struct.sky2_hw* %39, i32 %40, i32 %41, i32 3)
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %92 [
    i32 129, label %44
    i32 128, label %56
    i32 131, label %68
    i32 130, label %80
  ]

44:                                               ; preds = %34
  %45 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %48 = call i32 @PHY_M_LEDC_LOS_CTRL(i32 8)
  %49 = call i32 @PHY_M_LEDC_INIT_CTRL(i32 8)
  %50 = or i32 %48, %49
  %51 = call i32 @PHY_M_LEDC_STA1_CTRL(i32 8)
  %52 = or i32 %50, %51
  %53 = call i32 @PHY_M_LEDC_STA0_CTRL(i32 8)
  %54 = or i32 %52, %53
  %55 = call i32 @gm_phy_write(%struct.sky2_hw* %45, i32 %46, i32 %47, i32 %54)
  br label %92

56:                                               ; preds = %34
  %57 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %60 = call i32 @PHY_M_LEDC_LOS_CTRL(i32 9)
  %61 = call i32 @PHY_M_LEDC_INIT_CTRL(i32 9)
  %62 = or i32 %60, %61
  %63 = call i32 @PHY_M_LEDC_STA1_CTRL(i32 9)
  %64 = or i32 %62, %63
  %65 = call i32 @PHY_M_LEDC_STA0_CTRL(i32 9)
  %66 = or i32 %64, %65
  %67 = call i32 @gm_phy_write(%struct.sky2_hw* %57, i32 %58, i32 %59, i32 %66)
  br label %92

68:                                               ; preds = %34
  %69 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %72 = call i32 @PHY_M_LEDC_LOS_CTRL(i32 10)
  %73 = call i32 @PHY_M_LEDC_INIT_CTRL(i32 10)
  %74 = or i32 %72, %73
  %75 = call i32 @PHY_M_LEDC_STA1_CTRL(i32 10)
  %76 = or i32 %74, %75
  %77 = call i32 @PHY_M_LEDC_STA0_CTRL(i32 10)
  %78 = or i32 %76, %77
  %79 = call i32 @gm_phy_write(%struct.sky2_hw* %69, i32 %70, i32 %71, i32 %78)
  br label %92

80:                                               ; preds = %34
  %81 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %84 = call i32 @PHY_M_LEDC_LOS_CTRL(i32 1)
  %85 = call i32 @PHY_M_LEDC_INIT_CTRL(i32 8)
  %86 = or i32 %84, %85
  %87 = call i32 @PHY_M_LEDC_STA1_CTRL(i32 7)
  %88 = or i32 %86, %87
  %89 = call i32 @PHY_M_LEDC_STA0_CTRL(i32 7)
  %90 = or i32 %88, %89
  %91 = call i32 @gm_phy_write(%struct.sky2_hw* %81, i32 %82, i32 %83, i32 %90)
  br label %92

92:                                               ; preds = %80, %34, %68, %56, %44
  %93 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @gm_phy_write(%struct.sky2_hw* %93, i32 %94, i32 %95, i32 %96)
  br label %120

98:                                               ; preds = %28
  %99 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @PHY_MARV_LED_OVER, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @PHY_M_LED_MO_DUP(i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @PHY_M_LED_MO_10(i32 %104)
  %106 = or i32 %103, %105
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @PHY_M_LED_MO_100(i32 %107)
  %109 = or i32 %106, %108
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @PHY_M_LED_MO_1000(i32 %110)
  %112 = or i32 %109, %111
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @PHY_M_LED_MO_RX(i32 %113)
  %115 = or i32 %112, %114
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @PHY_M_LED_MO_TX(i32 %116)
  %118 = or i32 %115, %117
  %119 = call i32 @gm_phy_write(%struct.sky2_hw* %99, i32 %100, i32 %101, i32 %118)
  br label %120

120:                                              ; preds = %98, %92
  %121 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %122 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %121, i32 0, i32 1
  %123 = call i32 @spin_unlock_bh(i32* %122)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @gm_phy_read(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @PHY_M_LEDC_LOS_CTRL(i32) #1

declare dso_local i32 @PHY_M_LEDC_INIT_CTRL(i32) #1

declare dso_local i32 @PHY_M_LEDC_STA1_CTRL(i32) #1

declare dso_local i32 @PHY_M_LEDC_STA0_CTRL(i32) #1

declare dso_local i32 @PHY_M_LED_MO_DUP(i32) #1

declare dso_local i32 @PHY_M_LED_MO_10(i32) #1

declare dso_local i32 @PHY_M_LED_MO_100(i32) #1

declare dso_local i32 @PHY_M_LED_MO_1000(i32) #1

declare dso_local i32 @PHY_M_LED_MO_RX(i32) #1

declare dso_local i32 @PHY_M_LED_MO_TX(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
