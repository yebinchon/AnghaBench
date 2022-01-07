; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_eeprom_restore_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_eeprom_restore_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.ar9300_eeprom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ar9300_default = common dso_local global i32 0, align 4
@AR9300_BASE_ADDR_4K = common dso_local global i32 0, align 4
@AR9300_BASE_ADDR_512 = common dso_local global i32 0, align 4
@AR9300_BASE_ADDR = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Trying EEPROM access at Address 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Trying OTP access at Address 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Found valid EEPROM data\0A\00", align 1
@COMP_HDR_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Found block at %x: code=%d ref=%d length=%d major=%d minor=%d\0A\00", align 1
@EEPROM_DATA_LEN_9485 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Skipping bad header\0A\00", align 1
@COMP_CKSUM_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"checksum %x %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"skipping block with bad checksum\0A\00", align 1
@MSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32*, i32)* @ar9300_eeprom_restore_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_eeprom_restore_internal(%struct.ath_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ath_common*, align 8
  %20 = alloca %struct.ar9300_eeprom*, align 8
  %21 = alloca i32 (%struct.ath_hw*, i32, i32*, i32)*, align 8
  %22 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %24 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %23)
  store %struct.ath_common* %24, %struct.ath_common** %19, align 8
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = call i64 @ath9k_hw_use_flash(%struct.ath_hw* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %3
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ar9300_eeprom_restore_flash(%struct.ath_hw* %29, i32* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = bitcast i32* %33 to %struct.ar9300_eeprom*
  store %struct.ar9300_eeprom* %34, %struct.ar9300_eeprom** %20, align 8
  %35 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %20, align 8
  %36 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %22, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32, i32* %22, align 4
  %43 = icmp ne i32 %42, 255
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %239

45:                                               ; preds = %41, %28
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @kzalloc(i32 2048, i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %239

54:                                               ; preds = %46
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @memcpy(i32* %55, i32* @ar9300_default, i32 %56)
  store i32 (%struct.ath_hw*, i32, i32*, i32)* @ar9300_read_eeprom, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %58 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %59 = call i64 @AR_SREV_9485(%struct.ath_hw* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @AR9300_BASE_ADDR_4K, align 4
  store i32 %62, i32* %8, align 4
  br label %72

63:                                               ; preds = %54
  %64 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %65 = call i64 @AR_SREV_9330(%struct.ath_hw* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @AR9300_BASE_ADDR_512, align 4
  store i32 %68, i32* %8, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @AR9300_BASE_ADDR, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %67
  br label %72

72:                                               ; preds = %71, %61
  %73 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %74 = load i32, i32* @EEPROM, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %73, i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %78 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @ar9300_check_eeprom_header(%struct.ath_hw* %77, i32 (%struct.ath_hw*, i32, i32*, i32)* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %120

83:                                               ; preds = %72
  %84 = load i32, i32* @AR9300_BASE_ADDR_512, align 4
  store i32 %84, i32* %8, align 4
  %85 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %86 = load i32, i32* @EEPROM, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %85, i32 %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %90 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @ar9300_check_eeprom_header(%struct.ath_hw* %89, i32 (%struct.ath_hw*, i32, i32*, i32)* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %120

95:                                               ; preds = %83
  store i32 (%struct.ath_hw*, i32, i32*, i32)* @ar9300_read_otp, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %96 = load i32, i32* @AR9300_BASE_ADDR, align 4
  store i32 %96, i32* %8, align 4
  %97 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %98 = load i32, i32* @EEPROM, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %97, i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %102 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @ar9300_check_eeprom_header(%struct.ath_hw* %101, i32 (%struct.ath_hw*, i32, i32*, i32)* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %120

107:                                              ; preds = %95
  %108 = load i32, i32* @AR9300_BASE_ADDR_512, align 4
  store i32 %108, i32* %8, align 4
  %109 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %110 = load i32, i32* @EEPROM, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %109, i32 %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %114 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i64 @ar9300_check_eeprom_header(%struct.ath_hw* %113, i32 (%struct.ath_hw*, i32, i32*, i32)* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %120

119:                                              ; preds = %107
  br label %236

120:                                              ; preds = %118, %106, %94, %82
  %121 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %122 = load i32, i32* @EEPROM, align 4
  %123 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %121, i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %229, %120
  %125 = load i32, i32* %16, align 4
  %126 = icmp slt i32 %125, 100
  br i1 %126, label %127, label %232

127:                                              ; preds = %124
  %128 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %129 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* @COMP_HDR_LEN, align 4
  %133 = call i32 %128(%struct.ath_hw* %129, i32 %130, i32* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %127
  br label %236

136:                                              ; preds = %127
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @ar9300_check_header(i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  br label %232

141:                                              ; preds = %136
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @ar9300_comp_hdr_unpack(i32* %142, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %144 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %145 = load i32, i32* @EEPROM, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %144, i32 %145, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %154 = call i64 @AR_SREV_9485(%struct.ath_hw* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %141
  %157 = load i32, i32* %12, align 4
  %158 = icmp sge i32 %157, 1024
  br i1 %158, label %167, label %159

159:                                              ; preds = %156, %141
  %160 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %161 = call i64 @AR_SREV_9485(%struct.ath_hw* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @EEPROM_DATA_LEN_9485, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %163, %156
  %168 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %169 = load i32, i32* @EEPROM, align 4
  %170 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %168, i32 %169, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %171 = load i32, i32* @COMP_HDR_LEN, align 4
  %172 = load i32, i32* %8, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* %8, align 4
  br label %229

174:                                              ; preds = %163, %159
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %15, align 4
  %176 = load i32 (%struct.ath_hw*, i32, i32*, i32)*, i32 (%struct.ath_hw*, i32, i32*, i32)** %21, align 8
  %177 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* @COMP_HDR_LEN, align 4
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* @COMP_CKSUM_LEN, align 4
  %184 = add nsw i32 %182, %183
  %185 = call i32 %176(%struct.ath_hw* %177, i32 %178, i32* %179, i32 %184)
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* @COMP_HDR_LEN, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @ar9300_comp_cksum(i32* %189, i32 %190)
  store i32 %191, i32* %17, align 4
  %192 = load i32*, i32** %9, align 8
  %193 = load i32, i32* @COMP_HDR_LEN, align 4
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = call i32 @get_unaligned_le16(i32* %197)
  store i32 %198, i32* %18, align 4
  %199 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %200 = load i32, i32* @EEPROM, align 4
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %18, align 4
  %203 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %199, i32 %200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %201, i32 %202)
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %18, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %174
  %208 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = load i32*, i32** %9, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @ar9300_compress_decision(%struct.ath_hw* %208, i32 %209, i32 %210, i32 %211, i32* %212, i32* %213, i32 %214, i32 %215)
  br label %221

217:                                              ; preds = %174
  %218 = load %struct.ath_common*, %struct.ath_common** %19, align 8
  %219 = load i32, i32* @EEPROM, align 4
  %220 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %218, i32 %219, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %221

221:                                              ; preds = %217, %207
  %222 = load i32, i32* @COMP_HDR_LEN, align 4
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* @COMP_CKSUM_LEN, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* %8, align 4
  %228 = sub nsw i32 %227, %226
  store i32 %228, i32* %8, align 4
  br label %229

229:                                              ; preds = %221, %167
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %16, align 4
  br label %124

232:                                              ; preds = %140, %124
  %233 = load i32*, i32** %9, align 8
  %234 = call i32 @kfree(i32* %233)
  %235 = load i32, i32* %8, align 4
  store i32 %235, i32* %4, align 4
  br label %239

236:                                              ; preds = %135, %119
  %237 = load i32*, i32** %9, align 8
  %238 = call i32 @kfree(i32* %237)
  store i32 -1, i32* %4, align 4
  br label %239

239:                                              ; preds = %236, %232, %51, %44
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_use_flash(%struct.ath_hw*) #1

declare dso_local i32 @ar9300_eeprom_restore_flash(%struct.ath_hw*, i32*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ar9300_read_eeprom(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i64 @ar9300_check_eeprom_header(%struct.ath_hw*, i32 (%struct.ath_hw*, i32, i32*, i32)*, i32) #1

declare dso_local i32 @ar9300_read_otp(%struct.ath_hw*, i32, i32*, i32) #1

declare dso_local i32 @ar9300_check_header(i32*) #1

declare dso_local i32 @ar9300_comp_hdr_unpack(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ar9300_comp_cksum(i32*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @ar9300_compress_decision(%struct.ath_hw*, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
