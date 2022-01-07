; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_check_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_check_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 (%struct.ath_hw*)*, {}* }
%struct.TYPE_6__ = type { %struct.ar5416_eeprom_4k }
%struct.ar5416_eeprom_4k = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64*, i64, i64, i64 }
%struct.ath_common = type { i32 }

@AR5416_EEPROM_MAGIC_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Reading Magic # failed\0A\00", align 1
@EEPROM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Read Magic = 0x%04X\0A\00", align 1
@AR5416_EEPROM_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid EEPROM Magic. Endianness mismatch.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"need_swap = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"EEPROM Endianness is not native.. Changing\0A\00", align 1
@AR5416_EEP4K_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR5416_EEP_VER = common dso_local global i32 0, align 4
@AR5416_EEP_NO_BACK_VER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [45 x i8] c"Bad EEPROM checksum 0x%x or revision 0x%04x\0A\00", align 1
@EEPROM_4K_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_4k_check_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_4k_check_eeprom(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ar5416_eeprom_4k*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %17)
  store %struct.ath_common* %18, %struct.ath_common** %4, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.ar5416_eeprom_4k* %21, %struct.ar5416_eeprom_4k** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = call i32 @ath9k_hw_use_flash(%struct.ath_hw* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %76, label %25

25:                                               ; preds = %1
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = load i32, i32* @AR5416_EEPROM_MAGIC_OFFSET, align 4
  %28 = call i32 @ath9k_hw_nvram_read(%struct.ath_hw* %26, i32 %27, i64* %8)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %32 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %330

33:                                               ; preds = %25
  %34 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %35 = load i32, i32* @EEPROM, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %34, i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @AR5416_EEPROM_MAGIC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %33
  %42 = load i64, i64* %8, align 8
  %43 = call i8* @swab16(i64 %42)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @AR5416_EEPROM_MAGIC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 1
  %51 = bitcast %struct.TYPE_6__* %50 to i64*
  store i64* %51, i64** %6, align 8
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %65, %48
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 10
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @swab16(i64 %58)
  %60 = ptrtoint i8* %59 to i64
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64*, i64** %6, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %6, align 8
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %52

68:                                               ; preds = %52
  br label %74

69:                                               ; preds = %41
  %70 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %71 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %330

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %33
  br label %76

76:                                               ; preds = %75, %1
  %77 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %78 = load i32, i32* @EEPROM, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %83 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %77, i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %76
  %87 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %88 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @swab16(i64 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %11, align 4
  br label %103

95:                                               ; preds = %76
  %96 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %97 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %95, %86
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ugt i64 %105, 80
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 10, i32* %11, align 4
  br label %113

108:                                              ; preds = %103
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = udiv i64 %110, 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %108, %107
  %114 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %115 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %114, i32 0, i32 1
  %116 = bitcast %struct.TYPE_6__* %115 to i64*
  store i64* %116, i64** %6, align 8
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %129, %113
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i64*, i64** %6, align 8
  %123 = getelementptr inbounds i64, i64* %122, i32 1
  store i64* %123, i64** %6, align 8
  %124 = load i64, i64* %122, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = xor i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %117

132:                                              ; preds = %117
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %291

135:                                              ; preds = %132
  %136 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %137 = load i32, i32* @EEPROM, align 4
  %138 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %136, i32 %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %139 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %140 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @swab16(i64 %142)
  %144 = ptrtoint i8* %143 to i64
  store i64 %144, i64* %16, align 8
  %145 = load i64, i64* %16, align 8
  %146 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %147 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i64 %145, i64* %148, align 8
  %149 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %150 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i8* @swab16(i64 %152)
  %154 = ptrtoint i8* %153 to i64
  store i64 %154, i64* %16, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %157 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store i64 %155, i64* %158, align 8
  %159 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %160 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = call i8* @swab16(i64 %162)
  %164 = ptrtoint i8* %163 to i64
  store i64 %164, i64* %16, align 8
  %165 = load i64, i64* %16, align 8
  %166 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %167 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  store i64 %165, i64* %168, align 8
  %169 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %170 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = call i8* @swab16(i64 %174)
  %176 = ptrtoint i8* %175 to i64
  store i64 %176, i64* %16, align 8
  %177 = load i64, i64* %16, align 8
  %178 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %179 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 3
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  store i64 %177, i64* %182, align 8
  %183 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %184 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 1
  %188 = load i64, i64* %187, align 8
  %189 = call i8* @swab16(i64 %188)
  %190 = ptrtoint i8* %189 to i64
  store i64 %190, i64* %16, align 8
  %191 = load i64, i64* %16, align 8
  %192 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %193 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 1
  store i64 %191, i64* %196, align 8
  %197 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %198 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = call i8* @swab16(i64 %200)
  %202 = ptrtoint i8* %201 to i64
  store i64 %202, i64* %16, align 8
  %203 = load i64, i64* %16, align 8
  %204 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %205 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 4
  store i64 %203, i64* %206, align 8
  %207 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %208 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = call i8* @swab16(i64 %210)
  %212 = ptrtoint i8* %211 to i64
  store i64 %212, i64* %16, align 8
  %213 = load i64, i64* %16, align 8
  %214 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %215 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 5
  store i64 %213, i64* %216, align 8
  %217 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %218 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = call i8* @swab16(i64 %220)
  %222 = ptrtoint i8* %221 to i64
  store i64 %222, i64* %16, align 8
  %223 = load i64, i64* %16, align 8
  %224 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %225 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 6
  store i64 %223, i64* %226, align 8
  %227 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %228 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @swab32(i32 %230)
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %234 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  store i32 %232, i32* %235, align 8
  store i32 0, i32* %13, align 4
  br label %236

236:                                              ; preds = %258, %135
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* @AR5416_EEP4K_MAX_CHAINS, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %261

240:                                              ; preds = %236
  %241 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %242 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @swab32(i32 %248)
  store i32 %249, i32* %15, align 4
  %250 = load i32, i32* %15, align 4
  %251 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %252 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %250, i32* %257, align 4
  br label %258

258:                                              ; preds = %240
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %13, align 4
  br label %236

261:                                              ; preds = %236
  store i32 0, i32* %13, align 4
  br label %262

262:                                              ; preds = %287, %261
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* @AR_EEPROM_MODAL_SPURS, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %290

266:                                              ; preds = %262
  %267 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %268 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i8* @swab16(i64 %275)
  %277 = ptrtoint i8* %276 to i64
  store i64 %277, i64* %16, align 8
  %278 = load i64, i64* %16, align 8
  %279 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %5, align 8
  %280 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %281, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  store i64 %278, i64* %286, align 8
  br label %287

287:                                              ; preds = %266
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %13, align 4
  br label %262

290:                                              ; preds = %262
  br label %291

291:                                              ; preds = %290, %132
  %292 = load i32, i32* %10, align 4
  %293 = icmp ne i32 %292, 65535
  br i1 %293, label %315, label %294

294:                                              ; preds = %291
  %295 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %296 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %295, i32 0, i32 0
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 1
  %299 = bitcast {}** %298 to i32 (%struct.ath_hw*)**
  %300 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %299, align 8
  %301 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %302 = call i32 %300(%struct.ath_hw* %301)
  %303 = load i32, i32* @AR5416_EEP_VER, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %315, label %305

305:                                              ; preds = %294
  %306 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %307 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %306, i32 0, i32 0
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = load i64 (%struct.ath_hw*)*, i64 (%struct.ath_hw*)** %309, align 8
  %311 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %312 = call i64 %310(%struct.ath_hw* %311)
  %313 = load i64, i64* @AR5416_EEP_NO_BACK_VER, align 8
  %314 = icmp slt i64 %312, %313
  br i1 %314, label %315, label %329

315:                                              ; preds = %305, %294, %291
  %316 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %317 = load i32, i32* %10, align 4
  %318 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %319 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %318, i32 0, i32 0
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 1
  %322 = bitcast {}** %321 to i32 (%struct.ath_hw*)**
  %323 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %322, align 8
  %324 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %325 = call i32 %323(%struct.ath_hw* %324)
  %326 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %316, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %317, i32 %325)
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %2, align 4
  br label %330

329:                                              ; preds = %305
  store i32 0, i32* %2, align 4
  br label %330

330:                                              ; preds = %329, %315, %69, %30
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_use_flash(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_nvram_read(%struct.ath_hw*, i32, i64*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, ...) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i8* @swab16(i64) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
