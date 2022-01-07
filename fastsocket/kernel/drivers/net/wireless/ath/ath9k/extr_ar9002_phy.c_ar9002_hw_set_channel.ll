; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_channel*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*, i32)* }
%struct.ath9k_channel = type { i32 }
%struct.chan_centers = type { i32 }

@AR_PHY_SYNTH_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL_JAPAN = common dso_local global i32 0, align 4
@EEP_FRAC_N_5G = common dso_local global i32 0, align 4
@AR_AN_SYNTH9 = common dso_local global i32 0, align 4
@AR_AN_SYNTH9_REFDIVA = common dso_local global i32 0, align 4
@AR_AN_SYNTH9_REFDIVA_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9002_hw_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_set_channel(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.chan_centers, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 24, i32* %14, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %19 = call i32 @ath9k_hw_get_channel_centers(%struct.ath_hw* %17, %struct.ath9k_channel* %18, %struct.chan_centers* %13)
  %20 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %13, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = load i32, i32* @AR_PHY_SYNTH_CONTROL, align 4
  %24 = call i32 @REG_READ(%struct.ath_hw* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = and i32 %25, -1073741824
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 4800
  br i1 %28, label %29, label %72

29:                                               ; preds = %2
  store i32 0, i32* %16, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @CHANSEL_2G(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 2484
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 3
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @REG_WRITE_ARRAY(i32* %40, i32 1, i32 %41)
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 2
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @REG_WRITE_ARRAY(i32* %45, i32 1, i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %71

49:                                               ; preds = %29
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %52 = call i32 @REG_READ(%struct.ath_hw* %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 2484
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @REG_WRITE(%struct.ath_hw* %56, i32 %57, i32 %60)
  br label %70

62:                                               ; preds = %49
  %63 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %64 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @REG_WRITE(%struct.ath_hw* %63, i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %62, %55
  br label %71

71:                                               ; preds = %70, %48
  br label %137

72:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %76, align 8
  %78 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %79 = load i32, i32* @EEP_FRAC_N_5G, align 4
  %80 = call i32 %77(%struct.ath_hw* %78, i32 %79)
  switch i32 %80, label %108 [
    i32 0, label %81
    i32 1, label %107
  ]

81:                                               ; preds = %72
  %82 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %83 = call i32 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %87 = call i32 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81
  store i32 0, i32* %7, align 4
  br label %102

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = srem i32 %91, 20
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 3, i32* %7, align 4
  br label %101

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = srem i32 %96, 10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 2, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %95
  br label %101

101:                                              ; preds = %100, %94
  br label %102

102:                                              ; preds = %101, %89
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %117

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %72, %106
  br label %108

108:                                              ; preds = %72, %107
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @CHANSEL_5G(i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %112 = load i32, i32* @AR_AN_SYNTH9, align 4
  %113 = load i32, i32* @AR_AN_SYNTH9_REFDIVA, align 4
  %114 = load i32, i32* @AR_AN_SYNTH9_REFDIVA_S, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw* %111, i32 %112, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %108, %105
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %7, align 4
  %124 = ashr i32 %122, %123
  %125 = mul nsw i32 %121, %124
  %126 = sdiv i32 %125, 60
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, 511
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, -512
  %131 = mul i32 %130, 2
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %10, align 4
  %133 = shl i32 %132, 17
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %120, %117
  br label %137

137:                                              ; preds = %136, %71
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %5, align 4
  %140 = shl i32 %139, 29
  %141 = or i32 %138, %140
  %142 = load i32, i32* %6, align 4
  %143 = shl i32 %142, 28
  %144 = or i32 %141, %143
  %145 = load i32, i32* %7, align 4
  %146 = shl i32 %145, 26
  %147 = or i32 %144, %146
  %148 = load i32, i32* %10, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %12, align 4
  %150 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %151 = load i32, i32* @AR_PHY_SYNTH_CONTROL, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @REG_WRITE(%struct.ath_hw* %150, i32 %151, i32 %152)
  %154 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %155 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %156 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %155, i32 0, i32 0
  store %struct.ath9k_channel* %154, %struct.ath9k_channel** %156, align 8
  ret i32 0
}

declare dso_local i32 @ath9k_hw_get_channel_centers(%struct.ath_hw*, %struct.ath9k_channel*, %struct.chan_centers*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @CHANSEL_2G(i32) #1

declare dso_local i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE_ARRAY(i32*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i32 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

declare dso_local i32 @CHANSEL_5G(i32) #1

declare dso_local i32 @ath9k_hw_analog_shift_rmw(%struct.ath_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
