; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init_11a_pcal_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_init_11a_pcal_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64, i32*, %struct.ath5k_chan_pcal_info* }
%struct.ath5k_chan_pcal_info = type { i32 }

@AR5K_EEPROM_VERSION_3_3 = common dso_local global i64 0, align 8
@AR5K_EEPROM_N_5GHZ_CHAN = common dso_local global i32 0, align 4
@AR5K_EEPROM_MODE_11A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_eeprom_init_11a_pcal_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_init_11a_pcal_freq(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_eeprom_info*, align 8
  %6 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %12, %struct.ath5k_eeprom_info** %5, align 8
  %13 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %14 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %13, i32 0, i32 2
  %15 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %14, align 8
  store %struct.ath5k_chan_pcal_info* %15, %struct.ath5k_chan_pcal_info** %6, align 8
  %16 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %17 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AR5K_EEPROM_VERSION_3_3, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = load i32, i32* @AR5K_EEPROM_N_5GHZ_CHAN, align 4
  %24 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %25 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  %26 = call i32 @ath5k_eeprom_read_freq_list(%struct.ath5k_hw* %22, i32* %4, i32 %23, %struct.ath5k_chan_pcal_info* %24, i64 %25)
  br label %182

27:                                               ; preds = %2
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @AR5K_EEPROM_FREQ_M(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @AR5K_EEPROM_READ(i32 %32, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 9
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %41 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %40, i64 0
  %42 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 2
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %48 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %47, i64 1
  %49 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 5
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %55 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %54, i64 2
  %56 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @AR5K_EEPROM_READ(i32 %57, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 11
  %63 = and i32 %62, 31
  %64 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %65 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %64, i64 2
  %66 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %74 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %73, i64 3
  %75 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %76, 3
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %81 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %80, i64 4
  %82 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @AR5K_EEPROM_READ(i32 %83, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 13
  %89 = and i32 %88, 7
  %90 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %91 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %90, i64 4
  %92 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %8, align 4
  %96 = ashr i32 %95, 6
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %96, %97
  %99 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %100 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %99, i64 5
  %101 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %8, align 4
  %103 = shl i32 %102, 1
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %103, %104
  %106 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %107 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %106, i64 6
  %108 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @AR5K_EEPROM_READ(i32 %109, i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 15
  %115 = and i32 %114, 1
  %116 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %117 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %116, i64 6
  %118 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %8, align 4
  %122 = ashr i32 %121, 8
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %122, %123
  %125 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %126 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %125, i64 7
  %127 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = ashr i32 %128, 1
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %129, %130
  %132 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %133 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %132, i64 8
  %134 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* %8, align 4
  %136 = shl i32 %135, 6
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %136, %137
  %139 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %140 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %139, i64 9
  %141 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @AR5K_EEPROM_READ(i32 %142, i32 %144)
  %146 = load i32, i32* %8, align 4
  %147 = ashr i32 %146, 10
  %148 = and i32 %147, 63
  %149 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %150 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %149, i64 9
  %151 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 4
  %154 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %155 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 10, i32* %158, align 4
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %178, %27
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @AR5K_EEPROM_N_5GHZ_CHAN, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %159
  %164 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %165 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %165, i64 %167
  %169 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* @AR5K_EEPROM_MODE_11A, align 8
  %172 = call i32 @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %164, i32 %170, i64 %171)
  %173 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %173, i64 %175
  %177 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %176, i32 0, i32 0
  store i32 %172, i32* %177, align 4
  br label %178

178:                                              ; preds = %163
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %159

181:                                              ; preds = %159
  br label %182

182:                                              ; preds = %181, %21
  ret i32 0
}

declare dso_local i32 @ath5k_eeprom_read_freq_list(%struct.ath5k_hw*, i32*, i32, %struct.ath5k_chan_pcal_info*, i64) #1

declare dso_local i32 @AR5K_EEPROM_FREQ_M(i32) #1

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

declare dso_local i32 @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
