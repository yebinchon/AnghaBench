; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_channel*, i64 }
%struct.ath9k_channel = type { i32 }
%struct.chan_centers = type { i32 }

@AR_PHY_SYNTH_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_SYNTH4 = common dso_local global i32 0, align 4
@AR_PHY_SYNTH4_LONG_SHIFT_SELECT = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_SYNTH7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_set_channel(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
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
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %17 = call i32 @ath9k_hw_get_channel_centers(%struct.ath_hw* %15, %struct.ath9k_channel* %16, %struct.chan_centers* %13)
  %18 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %13, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 4800
  br i1 %21, label %22, label %131

22:                                               ; preds = %2
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call i64 @AR_SREV_9330(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 75, i32* %10, align 4
  br label %33

32:                                               ; preds = %26
  store i32 120, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 4
  %36 = load i32, i32* %10, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 4
  %40 = load i32, i32* %10, align 4
  %41 = srem i32 %39, %40
  %42 = mul nsw i32 %41, 131072
  %43 = load i32, i32* %10, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %45, 17
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %11, align 4
  br label %130

49:                                               ; preds = %22
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = call i64 @AR_SREV_9485(%struct.ath_hw* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = call i64 @AR_SREV_9565(%struct.ath_hw* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, 4
  %60 = sdiv i32 %59, 120
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 4
  %63 = srem i32 %62, 120
  %64 = mul nsw i32 %63, 131072
  %65 = sdiv i32 %64, 120
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = shl i32 %66, 17
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %11, align 4
  br label %129

70:                                               ; preds = %53
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = call i64 @AR_SREV_9340(%struct.ath_hw* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 %80, 2
  %82 = sdiv i32 %81, 75
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 %83, 2
  %85 = srem i32 %84, 75
  %86 = mul nsw i32 %85, 131072
  %87 = sdiv i32 %86, 75
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 %88, 17
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %11, align 4
  br label %96

92:                                               ; preds = %74
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @CHANSEL_2G(i32 %93)
  %95 = ashr i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %92, %79
  br label %128

97:                                               ; preds = %70
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = call i64 @AR_SREV_9550(%struct.ath_hw* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %103 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 75, i32* %10, align 4
  br label %108

107:                                              ; preds = %101
  store i32 120, i32* %10, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %8, align 4
  %110 = mul nsw i32 %109, 4
  %111 = load i32, i32* %10, align 4
  %112 = sdiv i32 %110, %111
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %8, align 4
  %114 = mul nsw i32 %113, 4
  %115 = load i32, i32* %10, align 4
  %116 = srem i32 %114, %115
  %117 = mul nsw i32 %116, 131072
  %118 = load i32, i32* %10, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %11, align 4
  %121 = shl i32 %120, 17
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %11, align 4
  br label %127

124:                                              ; preds = %97
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @CHANSEL_2G(i32 %125)
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %124, %108
  br label %128

128:                                              ; preds = %127, %96
  br label %129

129:                                              ; preds = %128, %57
  br label %130

130:                                              ; preds = %129, %33
  store i32 1, i32* %5, align 4
  br label %161

131:                                              ; preds = %2
  %132 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %133 = call i64 @AR_SREV_9340(%struct.ath_hw* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %137 = call i64 @AR_SREV_9550(%struct.ath_hw* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %135, %131
  %140 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %141 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  %146 = sdiv i32 %145, 75
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %8, align 4
  %148 = srem i32 %147, 75
  %149 = mul nsw i32 %148, 131072
  %150 = sdiv i32 %149, 75
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %11, align 4
  %152 = shl i32 %151, 17
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %11, align 4
  br label %160

155:                                              ; preds = %139, %135
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @CHANSEL_5G(i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = ashr i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %155, %144
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %130
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %162 = load i32, i32* %5, align 4
  %163 = shl i32 %162, 29
  store i32 %163, i32* %12, align 4
  %164 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %165 = load i32, i32* @AR_PHY_SYNTH_CONTROL, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @REG_WRITE(%struct.ath_hw* %164, i32 %165, i32 %166)
  %168 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %169 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH4, align 4
  %170 = load i32, i32* @AR_PHY_SYNTH4_LONG_SHIFT_SELECT, align 4
  %171 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %168, i32 %169, i32 %170, i32 1)
  %172 = load i32, i32* %11, align 4
  %173 = shl i32 %172, 2
  %174 = load i32, i32* %6, align 4
  %175 = shl i32 %174, 30
  %176 = or i32 %173, %175
  %177 = load i32, i32* %7, align 4
  %178 = shl i32 %177, 28
  %179 = or i32 %176, %178
  %180 = load i32, i32* %14, align 4
  %181 = shl i32 %180, 31
  %182 = or i32 %179, %181
  store i32 %182, i32* %12, align 4
  %183 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %184 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH7, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @REG_WRITE(%struct.ath_hw* %183, i32 %184, i32 %185)
  store i32 1, i32* %14, align 4
  %187 = load i32, i32* %11, align 4
  %188 = shl i32 %187, 2
  %189 = load i32, i32* %6, align 4
  %190 = shl i32 %189, 30
  %191 = or i32 %188, %190
  %192 = load i32, i32* %7, align 4
  %193 = shl i32 %192, 28
  %194 = or i32 %191, %193
  %195 = load i32, i32* %14, align 4
  %196 = shl i32 %195, 31
  %197 = or i32 %194, %196
  store i32 %197, i32* %12, align 4
  %198 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %199 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH7, align 4
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @REG_WRITE(%struct.ath_hw* %198, i32 %199, i32 %200)
  %202 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %203 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %204 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %203, i32 0, i32 0
  store %struct.ath9k_channel* %202, %struct.ath9k_channel** %204, align 8
  ret i32 0
}

declare dso_local i32 @ath9k_hw_get_channel_centers(%struct.ath_hw*, %struct.ath9k_channel*, %struct.chan_centers*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @CHANSEL_2G(i32) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i32 @CHANSEL_5G(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
