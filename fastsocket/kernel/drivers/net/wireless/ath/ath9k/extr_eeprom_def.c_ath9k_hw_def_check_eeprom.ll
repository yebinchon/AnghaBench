; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_check_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_check_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 (%struct.ath_hw*)*, {}* }
%struct.TYPE_10__ = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.modal_eep_header*, %struct.TYPE_11__ }
%struct.modal_eep_header = type { i32, i32*, i64*, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64*, i64, i64, i64, i64 }
%struct.ath_common = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

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
@.str.6 = private unnamed_addr constant [45 x i8] c"EEPROM Endianness is not native.. Changing.\0A\00", align 1
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR5416_EEP_VER = common dso_local global i32 0, align 4
@AR5416_EEP_NO_BACK_VER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [45 x i8] c"Bad EEPROM checksum 0x%x or revision 0x%04x\0A\00", align 1
@AR9280_DEVID_PCI = common dso_local global i64 0, align 8
@ATH_USB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_def_check_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_def_check_eeprom(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ar5416_eeprom_def*, align 8
  %5 = alloca %struct.ath_common*, align 8
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.modal_eep_header*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store %struct.ar5416_eeprom_def* %22, %struct.ar5416_eeprom_def** %4, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %23)
  store %struct.ath_common* %24, %struct.ath_common** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load i32, i32* @AR5416_EEPROM_MAGIC_OFFSET, align 4
  %27 = call i32 @ath9k_hw_nvram_read(%struct.ath_hw* %25, i32 %26, i64* %8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %31 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %401

32:                                               ; preds = %1
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = call i32 @ath9k_hw_use_flash(%struct.ath_hw* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %80, label %36

36:                                               ; preds = %32
  %37 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %38 = load i32, i32* @EEPROM, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %37, i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @AR5416_EEPROM_MAGIC, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %36
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @swab16(i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @AR5416_EEPROM_MAGIC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %44
  store i32 72, i32* %15, align 4
  store i32 1, i32* %12, align 4
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 3
  %53 = bitcast %struct.TYPE_10__* %52 to i64*
  store i64* %53, i64** %6, align 8
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %69, %50
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @swab16(i64 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64*, i64** %6, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %6, align 8
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %54

72:                                               ; preds = %54
  br label %78

73:                                               ; preds = %44
  %74 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %75 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %401

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %36
  br label %80

80:                                               ; preds = %79, %32
  %81 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %82 = load i32, i32* @EEPROM, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %87 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %81, i32 %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %80
  %91 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %92 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @swab16(i64 %96)
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %11, align 4
  br label %107

99:                                               ; preds = %80
  %100 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %101 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %99, %90
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ugt i64 %109, 72
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 9, i32* %11, align 4
  br label %117

112:                                              ; preds = %107
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = udiv i64 %114, 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %112, %111
  %118 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %119 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %118, i32 0, i32 3
  %120 = bitcast %struct.TYPE_10__* %119 to i64*
  store i64* %120, i64** %6, align 8
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %133, %117
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  %126 = load i64*, i64** %6, align 8
  %127 = getelementptr inbounds i64, i64* %126, i32 1
  store i64* %127, i64** %6, align 8
  %128 = load i64, i64* %126, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = xor i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %121

136:                                              ; preds = %121
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %321

139:                                              ; preds = %136
  %140 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %141 = load i32, i32* @EEPROM, align 4
  %142 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %140, i32 %141, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %143 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %144 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @swab16(i64 %146)
  store i64 %147, i64* %18, align 8
  %148 = load i64, i64* %18, align 8
  %149 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %150 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store i64 %148, i64* %151, align 8
  %152 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %153 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @swab16(i64 %155)
  store i64 %156, i64* %18, align 8
  %157 = load i64, i64* %18, align 8
  %158 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %159 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  store i64 %157, i64* %160, align 8
  %161 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %162 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @swab16(i64 %164)
  store i64 %165, i64* %18, align 8
  %166 = load i64, i64* %18, align 8
  %167 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %168 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  store i64 %166, i64* %169, align 8
  %170 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %171 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 3
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 0
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @swab16(i64 %175)
  store i64 %176, i64* %18, align 8
  %177 = load i64, i64* %18, align 8
  %178 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %179 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  store i64 %177, i64* %182, align 8
  %183 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %184 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 1
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @swab16(i64 %188)
  store i64 %189, i64* %18, align 8
  %190 = load i64, i64* %18, align 8
  %191 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %192 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 3
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 1
  store i64 %190, i64* %195, align 8
  %196 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %197 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @swab16(i64 %199)
  store i64 %200, i64* %18, align 8
  %201 = load i64, i64* %18, align 8
  %202 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %203 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  store i64 %201, i64* %204, align 8
  %205 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %206 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @swab16(i64 %208)
  store i64 %209, i64* %18, align 8
  %210 = load i64, i64* %18, align 8
  %211 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %212 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 5
  store i64 %210, i64* %213, align 8
  %214 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %215 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @swab16(i64 %217)
  store i64 %218, i64* %18, align 8
  %219 = load i64, i64* %18, align 8
  %220 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %221 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 6
  store i64 %219, i64* %222, align 8
  store i32 0, i32* %17, align 4
  br label %223

223:                                              ; preds = %317, %139
  %224 = load i32, i32* %17, align 4
  %225 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %226 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %225, i32 0, i32 0
  %227 = load %struct.modal_eep_header*, %struct.modal_eep_header** %226, align 8
  %228 = call i32 @ARRAY_SIZE(%struct.modal_eep_header* %227)
  %229 = icmp slt i32 %224, %228
  br i1 %229, label %230, label %320

230:                                              ; preds = %223
  %231 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %232 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %231, i32 0, i32 0
  %233 = load %struct.modal_eep_header*, %struct.modal_eep_header** %232, align 8
  %234 = load i32, i32* %17, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %233, i64 %235
  store %struct.modal_eep_header* %236, %struct.modal_eep_header** %19, align 8
  %237 = load %struct.modal_eep_header*, %struct.modal_eep_header** %19, align 8
  %238 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @swab32(i32 %239)
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* %16, align 4
  %242 = load %struct.modal_eep_header*, %struct.modal_eep_header** %19, align 8
  %243 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  store i32 0, i32* %13, align 4
  br label %244

244:                                              ; preds = %264, %230
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %267

248:                                              ; preds = %244
  %249 = load %struct.modal_eep_header*, %struct.modal_eep_header** %19, align 8
  %250 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @swab32(i32 %255)
  store i32 %256, i32* %16, align 4
  %257 = load i32, i32* %16, align 4
  %258 = load %struct.modal_eep_header*, %struct.modal_eep_header** %19, align 8
  %259 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 %257, i32* %263, align 4
  br label %264

264:                                              ; preds = %248
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %244

267:                                              ; preds = %244
  store i32 0, i32* %13, align 4
  br label %268

268:                                              ; preds = %287, %267
  %269 = load i32, i32* %13, align 4
  %270 = icmp slt i32 %269, 3
  br i1 %270, label %271, label %290

271:                                              ; preds = %268
  %272 = load %struct.modal_eep_header*, %struct.modal_eep_header** %19, align 8
  %273 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %272, i32 0, i32 2
  %274 = load i64*, i64** %273, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @swab16(i64 %278)
  store i64 %279, i64* %18, align 8
  %280 = load i64, i64* %18, align 8
  %281 = load %struct.modal_eep_header*, %struct.modal_eep_header** %19, align 8
  %282 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %281, i32 0, i32 2
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  store i64 %280, i64* %286, align 8
  br label %287

287:                                              ; preds = %271
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %13, align 4
  br label %268

290:                                              ; preds = %268
  store i32 0, i32* %13, align 4
  br label %291

291:                                              ; preds = %313, %290
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* @AR_EEPROM_MODAL_SPURS, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %316

295:                                              ; preds = %291
  %296 = load %struct.modal_eep_header*, %struct.modal_eep_header** %19, align 8
  %297 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %296, i32 0, i32 4
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %297, align 8
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = call i64 @swab16(i64 %303)
  store i64 %304, i64* %18, align 8
  %305 = load i64, i64* %18, align 8
  %306 = load %struct.modal_eep_header*, %struct.modal_eep_header** %19, align 8
  %307 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %306, i32 0, i32 4
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %307, align 8
  %309 = load i32, i32* %13, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 0
  store i64 %305, i64* %312, align 8
  br label %313

313:                                              ; preds = %295
  %314 = load i32, i32* %13, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %13, align 4
  br label %291

316:                                              ; preds = %291
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %17, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %17, align 4
  br label %223

320:                                              ; preds = %223
  br label %321

321:                                              ; preds = %320, %136
  %322 = load i32, i32* %10, align 4
  %323 = icmp ne i32 %322, 65535
  br i1 %323, label %345, label %324

324:                                              ; preds = %321
  %325 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %326 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %325, i32 0, i32 2
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %329 = bitcast {}** %328 to i32 (%struct.ath_hw*)**
  %330 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %329, align 8
  %331 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %332 = call i32 %330(%struct.ath_hw* %331)
  %333 = load i32, i32* @AR5416_EEP_VER, align 4
  %334 = icmp ne i32 %332, %333
  br i1 %334, label %345, label %335

335:                                              ; preds = %324
  %336 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %337 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %336, i32 0, i32 2
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load i64 (%struct.ath_hw*)*, i64 (%struct.ath_hw*)** %339, align 8
  %341 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %342 = call i64 %340(%struct.ath_hw* %341)
  %343 = load i64, i64* @AR5416_EEP_NO_BACK_VER, align 8
  %344 = icmp slt i64 %342, %343
  br i1 %344, label %345, label %359

345:                                              ; preds = %335, %324, %321
  %346 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %347 = load i32, i32* %10, align 4
  %348 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %349 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %348, i32 0, i32 2
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = bitcast {}** %351 to i32 (%struct.ath_hw*)**
  %353 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %352, align 8
  %354 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %355 = call i32 %353(%struct.ath_hw* %354)
  %356 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %346, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %347, i32 %355)
  %357 = load i32, i32* @EINVAL, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %2, align 4
  br label %401

359:                                              ; preds = %335
  %360 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %361 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @AR9280_DEVID_PCI, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %382

366:                                              ; preds = %359
  %367 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %368 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = and i64 %370, 255
  %372 = icmp sgt i64 %371, 10
  br i1 %372, label %373, label %382

373:                                              ; preds = %366
  %374 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %375 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 7
  %377 = load i64, i64* %376, align 8
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %373
  %380 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %381 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %380, i32 0, i32 0
  store i32 1, i32* %381, align 8
  br label %382

382:                                              ; preds = %379, %373, %366, %359
  %383 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %384 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %383, i32 0, i32 0
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @ATH_USB, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %400

390:                                              ; preds = %382
  %391 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %392 = call i64 @AR_SREV_9280(%struct.ath_hw* %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %400

394:                                              ; preds = %390
  %395 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %4, align 8
  %396 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %395, i32 0, i32 0
  %397 = load %struct.modal_eep_header*, %struct.modal_eep_header** %396, align 8
  %398 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %397, i64 0
  %399 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %398, i32 0, i32 3
  store i64 0, i64* %399, align 8
  br label %400

400:                                              ; preds = %394, %390, %382
  store i32 0, i32* %2, align 4
  br label %401

401:                                              ; preds = %400, %345, %73, %29
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_nvram_read(%struct.ath_hw*, i32, i64*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, ...) #1

declare dso_local i32 @ath9k_hw_use_flash(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @swab16(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.modal_eep_header*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
