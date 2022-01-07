; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_check_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_check_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 (%struct.ath_hw*)*, {}* }
%struct.TYPE_6__ = type { %struct.ar9287_eeprom }
%struct.ar9287_eeprom = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64*, i64, i64, i64 }
%struct.ath_common = type { i32 }

@AR5416_EEPROM_MAGIC_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Reading Magic # failed\0A\00", align 1
@EEPROM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Read Magic = 0x%04X\0A\00", align 1
@AR5416_EEPROM_MAGIC = common dso_local global i64 0, align 8
@SIZE_EEPROM_AR9287 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid EEPROM Magic. Endianness mismatch.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"need_swap = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@AR9287_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR9287_EEP_VER = common dso_local global i32 0, align 4
@AR5416_EEP_NO_BACK_VER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"Bad EEPROM checksum 0x%x or revision 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_ar9287_check_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_ar9287_check_eeprom(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ar9287_eeprom*, align 8
  %16 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.ar9287_eeprom* %19, %struct.ar9287_eeprom** %15, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %20)
  store %struct.ath_common* %21, %struct.ath_common** %16, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = call i32 @ath9k_hw_use_flash(%struct.ath_hw* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %75, label %25

25:                                               ; preds = %1
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = load i32, i32* @AR5416_EEPROM_MAGIC_OFFSET, align 4
  %28 = call i32 @ath9k_hw_nvram_read(%struct.ath_hw* %26, i32 %27, i64* %9)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %32 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %317

33:                                               ; preds = %25
  %34 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %35 = load i32, i32* @EEPROM, align 4
  %36 = load i64, i64* %9, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @ath_dbg(%struct.ath_common* %34, i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @AR5416_EEPROM_MAGIC, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %33
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @swab16(i64 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @AR5416_EEPROM_MAGIC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 1
  %51 = bitcast %struct.TYPE_6__* %50 to i64*
  store i64* %51, i64** %11, align 8
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %64, %48
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @SIZE_EEPROM_AR9287, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i64*, i64** %11, align 8
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @swab16(i64 %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64*, i64** %11, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %11, align 8
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %52

67:                                               ; preds = %52
  br label %73

68:                                               ; preds = %42
  %69 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %70 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %317

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %33
  br label %75

75:                                               ; preds = %74, %1
  %76 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %77 = load i32, i32* @EEPROM, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %82 = call i32 @ath_dbg(%struct.ath_common* %76, i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @swab16(i64 %91)
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %102

94:                                               ; preds = %75
  %95 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %94, %85
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ugt i64 %104, 80
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 10, i32* %5, align 4
  br label %112

107:                                              ; preds = %102
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = udiv i64 %109, 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %107, %106
  %113 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %114 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %113, i32 0, i32 1
  %115 = bitcast %struct.TYPE_6__* %114 to i64*
  store i64* %115, i64** %11, align 8
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %128, %112
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i64*, i64** %11, align 8
  %122 = getelementptr inbounds i64, i64* %121, i32 1
  store i64* %122, i64** %11, align 8
  %123 = load i64, i64* %121, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = xor i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %116

131:                                              ; preds = %116
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %278

134:                                              ; preds = %131
  %135 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %136 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @swab16(i64 %138)
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %142 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  %144 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %145 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @swab16(i64 %147)
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %151 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i64 %149, i64* %152, align 8
  %153 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %154 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @swab16(i64 %156)
  store i64 %157, i64* %8, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %160 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  store i64 %158, i64* %161, align 8
  %162 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %163 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @swab16(i64 %167)
  store i64 %168, i64* %8, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %171 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 0
  store i64 %169, i64* %174, align 8
  %175 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %176 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 1
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @swab16(i64 %180)
  store i64 %181, i64* %8, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %184 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 1
  store i64 %182, i64* %187, align 8
  %188 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %189 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @swab16(i64 %191)
  store i64 %192, i64* %8, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %195 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 4
  store i64 %193, i64* %196, align 8
  %197 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %198 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = call i64 @swab16(i64 %200)
  store i64 %201, i64* %8, align 8
  %202 = load i64, i64* %8, align 8
  %203 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %204 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 5
  store i64 %202, i64* %205, align 8
  %206 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %207 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @swab16(i64 %209)
  store i64 %210, i64* %8, align 8
  %211 = load i64, i64* %8, align 8
  %212 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %213 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 6
  store i64 %211, i64* %214, align 8
  %215 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %216 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @swab32(i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %222 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  store i32 0, i32* %12, align 4
  br label %224

224:                                              ; preds = %246, %134
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* @AR9287_MAX_CHAINS, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %249

228:                                              ; preds = %224
  %229 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %230 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @swab32(i32 %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %240 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %238, i32* %245, align 4
  br label %246

246:                                              ; preds = %228
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %12, align 4
  br label %224

249:                                              ; preds = %224
  store i32 0, i32* %12, align 4
  br label %250

250:                                              ; preds = %274, %249
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @AR_EEPROM_MODAL_SPURS, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %277

254:                                              ; preds = %250
  %255 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %256 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = load i32, i32* %12, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = call i64 @swab16(i64 %263)
  store i64 %264, i64* %8, align 8
  %265 = load i64, i64* %8, align 8
  %266 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %15, align 8
  %267 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  store i64 %265, i64* %273, align 8
  br label %274

274:                                              ; preds = %254
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %12, align 4
  br label %250

277:                                              ; preds = %250
  br label %278

278:                                              ; preds = %277, %131
  %279 = load i32, i32* %4, align 4
  %280 = icmp ne i32 %279, 65535
  br i1 %280, label %302, label %281

281:                                              ; preds = %278
  %282 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %283 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %282, i32 0, i32 0
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 1
  %286 = bitcast {}** %285 to i32 (%struct.ath_hw*)**
  %287 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %286, align 8
  %288 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %289 = call i32 %287(%struct.ath_hw* %288)
  %290 = load i32, i32* @AR9287_EEP_VER, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %302, label %292

292:                                              ; preds = %281
  %293 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %294 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %293, i32 0, i32 0
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i64 (%struct.ath_hw*)*, i64 (%struct.ath_hw*)** %296, align 8
  %298 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %299 = call i64 %297(%struct.ath_hw* %298)
  %300 = load i64, i64* @AR5416_EEP_NO_BACK_VER, align 8
  %301 = icmp slt i64 %299, %300
  br i1 %301, label %302, label %316

302:                                              ; preds = %292, %281, %278
  %303 = load %struct.ath_common*, %struct.ath_common** %16, align 8
  %304 = load i32, i32* %4, align 4
  %305 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %306 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %305, i32 0, i32 0
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 1
  %309 = bitcast {}** %308 to i32 (%struct.ath_hw*)**
  %310 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %309, align 8
  %311 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %312 = call i32 %310(%struct.ath_hw* %311)
  %313 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %303, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %304, i32 %312)
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %2, align 4
  br label %317

316:                                              ; preds = %292
  store i32 0, i32* %2, align 4
  br label %317

317:                                              ; preds = %316, %302, %68, %30
  %318 = load i32, i32* %2, align 4
  ret i32 %318
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_use_flash(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_nvram_read(%struct.ath_hw*, i32, i64*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, ...) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i8*) #1

declare dso_local i64 @swab16(i64) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
