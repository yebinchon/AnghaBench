; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_pcal_info_5111.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_pcal_info_5111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32*, %struct.ath5k_chan_pcal_info*, i32, %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info*, i32 }
%struct.ath5k_chan_pcal_info = type { i32, %struct.ath5k_chan_pcal_info_rf5111 }
%struct.ath5k_chan_pcal_info_rf5111 = type { i32, i32, i32*, i32 }

@AR5K_EEPROM_GROUP1_OFFSET = common dso_local global i32 0, align 4
@AR5K_EEPROM_GROUP2_OFFSET = common dso_local global i32 0, align 4
@AR5K_EEPROM_GROUP3_OFFSET = common dso_local global i32 0, align 4
@AR5K_EEPROM_GROUP4_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_EEPROM_PCDAC_M = common dso_local global i32 0, align 4
@AR5K_EEPROM_POWER_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_eeprom_read_pcal_info_5111 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_pcal_info_5111(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_eeprom_info*, align 8
  %7 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath5k_chan_pcal_info_rf5111*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %15, %struct.ath5k_eeprom_info** %6, align 8
  %16 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %17 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @AR5K_EEPROM_GROUPS_START(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %109 [
    i32 130, label %21
    i32 129, label %45
    i32 128, label %80
  ]

21:                                               ; preds = %2
  %22 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %23 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @AR5K_EEPROM_HDR_11A(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %294

28:                                               ; preds = %21
  %29 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @AR5K_EEPROM_GROUP1_OFFSET, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @ath5k_eeprom_init_11a_pcal_freq(%struct.ath5k_hw* %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %294

38:                                               ; preds = %28
  %39 = load i32, i32* @AR5K_EEPROM_GROUP2_OFFSET, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %43 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %42, i32 0, i32 4
  %44 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %43, align 8
  store %struct.ath5k_chan_pcal_info* %44, %struct.ath5k_chan_pcal_info** %7, align 8
  br label %112

45:                                               ; preds = %2
  %46 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %47 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @AR5K_EEPROM_HDR_11B(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %53 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @AR5K_EEPROM_HDR_11G(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %294

58:                                               ; preds = %51, %45
  %59 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %60 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %59, i32 0, i32 3
  %61 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %60, align 8
  store %struct.ath5k_chan_pcal_info* %61, %struct.ath5k_chan_pcal_info** %7, align 8
  %62 = load i32, i32* @AR5K_EEPROM_GROUP3_OFFSET, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %66 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %65, i64 0
  %67 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %66, i32 0, i32 0
  store i32 2412, i32* %67, align 8
  %68 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %69 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %68, i64 1
  %70 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %69, i32 0, i32 0
  store i32 2447, i32* %70, align 8
  %71 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %72 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %71, i64 2
  %73 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %72, i32 0, i32 0
  store i32 2484, i32* %73, align 8
  %74 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %75 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 3, i32* %79, align 4
  br label %112

80:                                               ; preds = %2
  %81 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %82 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @AR5K_EEPROM_HDR_11G(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %294

87:                                               ; preds = %80
  %88 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %89 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %88, i32 0, i32 1
  %90 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %89, align 8
  store %struct.ath5k_chan_pcal_info* %90, %struct.ath5k_chan_pcal_info** %7, align 8
  %91 = load i32, i32* @AR5K_EEPROM_GROUP4_OFFSET, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %95 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %94, i64 0
  %96 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %95, i32 0, i32 0
  store i32 2312, i32* %96, align 8
  %97 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %98 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %97, i64 1
  %99 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %98, i32 0, i32 0
  store i32 2412, i32* %99, align 8
  %100 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %101 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %100, i64 2
  %102 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %101, i32 0, i32 0
  store i32 2484, i32* %102, align 8
  %103 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %104 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 3, i32* %108, align 4
  br label %112

109:                                              ; preds = %2
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %294

112:                                              ; preds = %87, %58, %38
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %286, %112
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %116 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %114, %121
  br i1 %122, label %123, label %289

123:                                              ; preds = %113
  %124 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %124, i64 %126
  %128 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %127, i32 0, i32 1
  store %struct.ath5k_chan_pcal_info_rf5111* %128, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @AR5K_EEPROM_READ(i32 %129, i32 %131)
  %133 = load i32, i32* %11, align 4
  %134 = ashr i32 %133, 10
  %135 = load i32, i32* @AR5K_EEPROM_PCDAC_M, align 4
  %136 = and i32 %134, %135
  %137 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %138 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %11, align 4
  %140 = ashr i32 %139, 4
  %141 = load i32, i32* @AR5K_EEPROM_PCDAC_M, align 4
  %142 = and i32 %140, %141
  %143 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %144 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %11, align 4
  %146 = shl i32 %145, 2
  %147 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %148 = and i32 %146, %147
  %149 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %150 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %148, i32* %152, align 4
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @AR5K_EEPROM_READ(i32 %153, i32 %155)
  %157 = load i32, i32* %11, align 4
  %158 = ashr i32 %157, 14
  %159 = and i32 %158, 3
  %160 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %161 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %159
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* %11, align 4
  %167 = ashr i32 %166, 8
  %168 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %169 = and i32 %167, %168
  %170 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %171 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %11, align 4
  %175 = ashr i32 %174, 2
  %176 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %177 = and i32 %175, %176
  %178 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %179 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  store i32 %177, i32* %181, align 4
  %182 = load i32, i32* %11, align 4
  %183 = shl i32 %182, 4
  %184 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %185 = and i32 %183, %184
  %186 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %187 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @AR5K_EEPROM_READ(i32 %190, i32 %192)
  %194 = load i32, i32* %11, align 4
  %195 = ashr i32 %194, 12
  %196 = and i32 %195, 15
  %197 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %198 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %196
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %11, align 4
  %204 = ashr i32 %203, 6
  %205 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %206 = and i32 %204, %205
  %207 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %208 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  store i32 %206, i32* %210, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %213 = and i32 %211, %212
  %214 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %215 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 5
  store i32 %213, i32* %217, align 4
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @AR5K_EEPROM_READ(i32 %218, i32 %220)
  %222 = load i32, i32* %11, align 4
  %223 = ashr i32 %222, 10
  %224 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %225 = and i32 %223, %224
  %226 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %227 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 6
  store i32 %225, i32* %229, align 4
  %230 = load i32, i32* %11, align 4
  %231 = ashr i32 %230, 4
  %232 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %233 = and i32 %231, %232
  %234 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %235 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 7
  store i32 %233, i32* %237, align 4
  %238 = load i32, i32* %11, align 4
  %239 = shl i32 %238, 2
  %240 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %241 = and i32 %239, %240
  %242 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %243 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 8
  store i32 %241, i32* %245, align 4
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @AR5K_EEPROM_READ(i32 %246, i32 %248)
  %250 = load i32, i32* %11, align 4
  %251 = ashr i32 %250, 14
  %252 = and i32 %251, 3
  %253 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %254 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 8
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %252
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %11, align 4
  %260 = ashr i32 %259, 8
  %261 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %262 = and i32 %260, %261
  %263 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %264 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 9
  store i32 %262, i32* %266, align 4
  %267 = load i32, i32* %11, align 4
  %268 = ashr i32 %267, 2
  %269 = load i32, i32* @AR5K_EEPROM_POWER_M, align 4
  %270 = and i32 %268, %269
  %271 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %272 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 10
  store i32 %270, i32* %274, align 4
  %275 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %276 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %277 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %280 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.ath5k_chan_pcal_info_rf5111*, %struct.ath5k_chan_pcal_info_rf5111** %12, align 8
  %283 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5111, %struct.ath5k_chan_pcal_info_rf5111* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @ath5k_get_pcdac_intercepts(%struct.ath5k_hw* %275, i32 %278, i32 %281, i32 %284)
  br label %286

286:                                              ; preds = %123
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %10, align 4
  br label %113

289:                                              ; preds = %113
  %290 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %291 = load i32, i32* %5, align 4
  %292 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %293 = call i32 @ath5k_eeprom_convert_pcal_info_5111(%struct.ath5k_hw* %290, i32 %291, %struct.ath5k_chan_pcal_info* %292)
  store i32 %293, i32* %3, align 4
  br label %294

294:                                              ; preds = %289, %109, %86, %57, %36, %27
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local i32 @AR5K_EEPROM_GROUPS_START(i32) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11A(i32) #1

declare dso_local i32 @ath5k_eeprom_init_11a_pcal_freq(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11B(i32) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11G(i32) #1

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

declare dso_local i32 @ath5k_get_pcdac_intercepts(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_eeprom_convert_pcal_info_5111(%struct.ath5k_hw*, i32, %struct.ath5k_chan_pcal_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
