; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_convert_pcal_info_5111.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_convert_pcal_info_5111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64**, i64*, i64*, i32* }
%struct.ath5k_chan_pcal_info = type { i32, i32, %struct.ath5k_pdgain_info*, %struct.ath5k_chan_pcal_info_rf5111 }
%struct.ath5k_pdgain_info = type { i64, i32*, i32* }
%struct.ath5k_chan_pcal_info_rf5111 = type { i32*, i32* }

@AR5K_EEPROM_N_PD_CURVES = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_PWR_POINTS_5111 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32, %struct.ath5k_chan_pcal_info*)* @ath5k_eeprom_convert_pcal_info_5111 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_convert_pcal_info_5111(%struct.ath5k_hw* %0, i32 %1, %struct.ath5k_chan_pcal_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %8 = alloca %struct.ath5k_eeprom_info*, align 8
  %9 = alloca %struct.ath5k_chan_pcal_info_rf5111*, align 8
  %10 = alloca %struct.ath5k_pdgain_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath5k_chan_pcal_info* %2, %struct.ath5k_chan_pcal_info** %7, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %17, %struct.ath5k_eeprom_info** %8, align 8
  %18 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %19 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %18, i32 0, i32 0
  %20 = load i64**, i64*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64*, i64** %20, i64 %22
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %14, align 8
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %173, %3
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %28 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %26, %33
  br i1 %34, label %35, label %176

35:                                               ; preds = %25
  %36 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %36, i64 %37
  %39 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %38, i32 0, i32 3
  store %struct.ath5k_chan_pcal_info_rf5111* %39, %struct.ath5k_chan_pcal_info_rf5111** %9, align 8
  %40 = load i64, i64* @AR5K_EEPROM_N_PD_CURVES, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kcalloc(i64 %40, i32 24, i32 %41)
  %43 = bitcast i8* %42 to %struct.ath5k_pdgain_info*
  %44 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %44, i64 %45
  %47 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %46, i32 0, i32 2
  store %struct.ath5k_pdgain_info* %43, %struct.ath5k_pdgain_info** %47, align 8
  %48 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %48, i64 %49
  %51 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %50, i32 0, i32 2
  %52 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %51, align 8
  %53 = icmp ne %struct.ath5k_pdgain_info* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %35
  br label %177

55:                                               ; preds = %35
  store i64 0, i64* %13, align 8
  br label %56

56:                                               ; preds = %77, %55
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* @AR5K_EEPROM_N_PD_CURVES, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %62 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = lshr i64 %67, %68
  %70 = and i64 %69, 1
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = load i64, i64* %13, align 8
  %74 = load i64*, i64** %14, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  store i64 %73, i64* %75, align 8
  br label %80

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %13, align 8
  br label %56

80:                                               ; preds = %72, %56
  %81 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %82 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 1, i32* %86, align 4
  %87 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %87, i64 %88
  %90 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %89, i32 0, i32 2
  %91 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %91, i64 %92
  store %struct.ath5k_pdgain_info* %93, %struct.ath5k_pdgain_info** %10, align 8
  %94 = load i64, i64* @AR5K_EEPROM_N_PWR_POINTS_5111, align 8
  %95 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %96 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* @AR5K_EEPROM_N_PWR_POINTS_5111, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kcalloc(i64 %97, i32 8, i32 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %102 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %104 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %80
  br label %177

108:                                              ; preds = %80
  %109 = load i64, i64* @AR5K_EEPROM_N_PWR_POINTS_5111, align 8
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i8* @kcalloc(i64 %109, i32 4, i32 %110)
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %114 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %116 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %108
  br label %177

120:                                              ; preds = %108
  store i64 0, i64* %12, align 8
  br label %121

121:                                              ; preds = %151, %120
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %124 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %122, %125
  br i1 %126, label %127, label %154

127:                                              ; preds = %121
  %128 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %9, align 8
  %129 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 2, %133
  %135 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %136 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 %134, i32* %139, align 4
  %140 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %9, align 8
  %141 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %147 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 %145, i32* %150, align 4
  br label %151

151:                                              ; preds = %127
  %152 = load i64, i64* %12, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %12, align 8
  br label %121

154:                                              ; preds = %121
  %155 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %156 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %160, i64 %161
  %163 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 8
  %164 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %165 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 10
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %170 = load i64, i64* %11, align 8
  %171 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %169, i64 %170
  %172 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %171, i32 0, i32 1
  store i32 %168, i32* %172, align 4
  br label %173

173:                                              ; preds = %154
  %174 = load i64, i64* %11, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %11, align 8
  br label %25

176:                                              ; preds = %25
  store i32 0, i32* %4, align 4
  br label %183

177:                                              ; preds = %119, %107, %54
  %178 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @ath5k_eeprom_free_pcal_info(%struct.ath5k_hw* %178, i32 %179)
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %177, %176
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @ath5k_eeprom_free_pcal_info(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
