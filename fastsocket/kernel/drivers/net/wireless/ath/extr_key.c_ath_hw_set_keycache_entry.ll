; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_hw_set_keycache_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_hw_set_keycache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i64, i32, i8* }
%struct.ath_keyval = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"set-entry: keycache entry %u out of range\0A\00", align 1
@AR_KEYTABLE_TYPE_AES = common dso_local global i32 0, align 4
@ATH_CRYPT_CAP_CIPHER_AESCCM = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"AES-CCM not supported by this mac rev\0A\00", align 1
@AR_KEYTABLE_TYPE_CCM = common dso_local global i32 0, align 4
@AR_KEYTABLE_TYPE_TKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"entry %u inappropriate for TKIP\0A\00", align 1
@WLAN_KEY_LEN_WEP40 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"WEP key length %u too small\0A\00", align 1
@AR_KEYTABLE_TYPE_40 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_WEP104 = common dso_local global i64 0, align 8
@AR_KEYTABLE_TYPE_104 = common dso_local global i32 0, align 4
@AR_KEYTABLE_TYPE_128 = common dso_local global i32 0, align 4
@AR_KEYTABLE_TYPE_CLR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"cipher %u not supported\0A\00", align 1
@ATH_CRYPT_CAP_MIC_COMBINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, i64, %struct.ath_keyval*, i32*)* @ath_hw_set_keycache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_hw_set_keycache_entry(%struct.ath_common* %0, i64 %1, %struct.ath_keyval* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath_keyval*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ath_keyval* %2, %struct.ath_keyval** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %26 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %30 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ath_err(%struct.ath_common* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %35)
  store i32 0, i32* %5, align 4
  br label %362

37:                                               ; preds = %4
  %38 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %39 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %105 [
    i32 131, label %41
    i32 132, label %43
    i32 129, label %56
    i32 128, label %70
    i32 130, label %103
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @AR_KEYTABLE_TYPE_AES, align 4
  store i32 %42, i32* %16, align 4
  br label %112

43:                                               ; preds = %37
  %44 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %45 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATH_CRYPT_CAP_CIPHER_AESCCM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %52 = load i32, i32* @ANY, align 4
  %53 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %51, i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %362

54:                                               ; preds = %43
  %55 = load i32, i32* @AR_KEYTABLE_TYPE_CCM, align 4
  store i32 %55, i32* %16, align 4
  br label %112

56:                                               ; preds = %37
  %57 = load i32, i32* @AR_KEYTABLE_TYPE_TKIP, align 4
  store i32 %57, i32* %16, align 4
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, 64
  %60 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %61 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %66 = load i32, i32* @ANY, align 4
  %67 = load i64, i64* %7, align 8
  %68 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %65, i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  store i32 0, i32* %5, align 4
  br label %362

69:                                               ; preds = %56
  br label %112

70:                                               ; preds = %37
  %71 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %72 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @WLAN_KEY_LEN_WEP40, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %78 = load i32, i32* @ANY, align 4
  %79 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %80 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %77, i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  store i32 0, i32* %5, align 4
  br label %362

83:                                               ; preds = %70
  %84 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %85 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @WLAN_KEY_LEN_WEP40, align 8
  %88 = icmp sle i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @AR_KEYTABLE_TYPE_40, align 4
  store i32 %90, i32* %16, align 4
  br label %102

91:                                               ; preds = %83
  %92 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %93 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @WLAN_KEY_LEN_WEP104, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @AR_KEYTABLE_TYPE_104, align 4
  store i32 %98, i32* %16, align 4
  br label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @AR_KEYTABLE_TYPE_128, align 4
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %89
  br label %112

103:                                              ; preds = %37
  %104 = load i32, i32* @AR_KEYTABLE_TYPE_CLR, align 4
  store i32 %104, i32* %16, align 4
  br label %112

105:                                              ; preds = %37
  %106 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %107 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %108 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = call i32 @ath_err(%struct.ath_common* %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %110)
  store i32 0, i32* %5, align 4
  br label %362

112:                                              ; preds = %103, %102, %69, %54, %41
  %113 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %114 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 0
  %117 = call i32 @get_unaligned_le32(i64 %116)
  store i32 %117, i32* %11, align 4
  %118 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %119 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 4
  %122 = call i32 @get_unaligned_le16(i64 %121)
  store i32 %122, i32* %12, align 4
  %123 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %124 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 6
  %127 = call i32 @get_unaligned_le32(i64 %126)
  store i32 %127, i32* %13, align 4
  %128 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %129 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 10
  %132 = call i32 @get_unaligned_le16(i64 %131)
  store i32 %132, i32* %14, align 4
  %133 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %134 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 12
  %137 = call i32 @get_unaligned_le32(i64 %136)
  store i32 %137, i32* %15, align 4
  %138 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %139 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @WLAN_KEY_LEN_WEP104, align 8
  %142 = icmp sle i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %112
  %144 = load i32, i32* %15, align 4
  %145 = and i32 %144, 255
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %143, %112
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* @AR_KEYTABLE_TYPE_TKIP, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %322

150:                                              ; preds = %146
  %151 = load i64, i64* %7, align 8
  %152 = add nsw i64 %151, 64
  store i64 %152, i64* %17, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i64, i64* %7, align 8
  %155 = call i32 @AR_KEYTABLE_KEY0(i64 %154)
  %156 = load i32, i32* %11, align 4
  %157 = xor i32 %156, -1
  %158 = call i32 @REG_WRITE(i8* %153, i32 %155, i32 %157)
  %159 = load i8*, i8** %10, align 8
  %160 = load i64, i64* %7, align 8
  %161 = call i32 @AR_KEYTABLE_KEY1(i64 %160)
  %162 = load i32, i32* %12, align 4
  %163 = xor i32 %162, -1
  %164 = call i32 @REG_WRITE(i8* %159, i32 %161, i32 %163)
  %165 = load i8*, i8** %10, align 8
  %166 = load i64, i64* %7, align 8
  %167 = call i32 @AR_KEYTABLE_KEY2(i64 %166)
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @REG_WRITE(i8* %165, i32 %167, i32 %168)
  %170 = load i8*, i8** %10, align 8
  %171 = load i64, i64* %7, align 8
  %172 = call i32 @AR_KEYTABLE_KEY3(i64 %171)
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @REG_WRITE(i8* %170, i32 %172, i32 %173)
  %175 = load i8*, i8** %10, align 8
  %176 = load i64, i64* %7, align 8
  %177 = call i32 @AR_KEYTABLE_KEY4(i64 %176)
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @REG_WRITE(i8* %175, i32 %177, i32 %178)
  %180 = load i8*, i8** %10, align 8
  %181 = load i64, i64* %7, align 8
  %182 = call i32 @AR_KEYTABLE_TYPE(i64 %181)
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @REG_WRITE(i8* %180, i32 %182, i32 %183)
  %185 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %186 = load i64, i64* %7, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @ath_hw_keysetmac(%struct.ath_common* %185, i64 %186, i32* %187)
  %189 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %190 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @ATH_CRYPT_CAP_MIC_COMBINED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %257

195:                                              ; preds = %150
  %196 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %197 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 0
  %200 = call i32 @get_unaligned_le32(i64 %199)
  store i32 %200, i32* %18, align 4
  %201 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %202 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, 4
  %205 = call i32 @get_unaligned_le32(i64 %204)
  store i32 %205, i32* %20, align 4
  %206 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %207 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, 2
  %210 = call i32 @get_unaligned_le16(i64 %209)
  %211 = and i32 %210, 65535
  store i32 %211, i32* %19, align 4
  %212 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %213 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 0
  %216 = call i32 @get_unaligned_le16(i64 %215)
  %217 = and i32 %216, 65535
  store i32 %217, i32* %21, align 4
  %218 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %219 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 4
  %222 = call i32 @get_unaligned_le32(i64 %221)
  store i32 %222, i32* %22, align 4
  %223 = load i8*, i8** %10, align 8
  %224 = call i32 @ENABLE_REGWRITE_BUFFER(i8* %223)
  %225 = load i8*, i8** %10, align 8
  %226 = load i64, i64* %17, align 8
  %227 = call i32 @AR_KEYTABLE_KEY0(i64 %226)
  %228 = load i32, i32* %18, align 4
  %229 = call i32 @REG_WRITE(i8* %225, i32 %227, i32 %228)
  %230 = load i8*, i8** %10, align 8
  %231 = load i64, i64* %17, align 8
  %232 = call i32 @AR_KEYTABLE_KEY1(i64 %231)
  %233 = load i32, i32* %19, align 4
  %234 = call i32 @REG_WRITE(i8* %230, i32 %232, i32 %233)
  %235 = load i8*, i8** %10, align 8
  %236 = load i64, i64* %17, align 8
  %237 = call i32 @AR_KEYTABLE_KEY2(i64 %236)
  %238 = load i32, i32* %20, align 4
  %239 = call i32 @REG_WRITE(i8* %235, i32 %237, i32 %238)
  %240 = load i8*, i8** %10, align 8
  %241 = load i64, i64* %17, align 8
  %242 = call i32 @AR_KEYTABLE_KEY3(i64 %241)
  %243 = load i32, i32* %21, align 4
  %244 = call i32 @REG_WRITE(i8* %240, i32 %242, i32 %243)
  %245 = load i8*, i8** %10, align 8
  %246 = load i64, i64* %17, align 8
  %247 = call i32 @AR_KEYTABLE_KEY4(i64 %246)
  %248 = load i32, i32* %22, align 4
  %249 = call i32 @REG_WRITE(i8* %245, i32 %247, i32 %248)
  %250 = load i8*, i8** %10, align 8
  %251 = load i64, i64* %17, align 8
  %252 = call i32 @AR_KEYTABLE_TYPE(i64 %251)
  %253 = load i32, i32* @AR_KEYTABLE_TYPE_CLR, align 4
  %254 = call i32 @REG_WRITE(i8* %250, i32 %252, i32 %253)
  %255 = load i8*, i8** %10, align 8
  %256 = call i32 @REGWRITE_BUFFER_FLUSH(i8* %255)
  br label %299

257:                                              ; preds = %150
  %258 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %259 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, 0
  %262 = call i32 @get_unaligned_le32(i64 %261)
  store i32 %262, i32* %23, align 4
  %263 = load %struct.ath_keyval*, %struct.ath_keyval** %8, align 8
  %264 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, 4
  %267 = call i32 @get_unaligned_le32(i64 %266)
  store i32 %267, i32* %24, align 4
  %268 = load i8*, i8** %10, align 8
  %269 = call i32 @ENABLE_REGWRITE_BUFFER(i8* %268)
  %270 = load i8*, i8** %10, align 8
  %271 = load i64, i64* %17, align 8
  %272 = call i32 @AR_KEYTABLE_KEY0(i64 %271)
  %273 = load i32, i32* %23, align 4
  %274 = call i32 @REG_WRITE(i8* %270, i32 %272, i32 %273)
  %275 = load i8*, i8** %10, align 8
  %276 = load i64, i64* %17, align 8
  %277 = call i32 @AR_KEYTABLE_KEY1(i64 %276)
  %278 = call i32 @REG_WRITE(i8* %275, i32 %277, i32 0)
  %279 = load i8*, i8** %10, align 8
  %280 = load i64, i64* %17, align 8
  %281 = call i32 @AR_KEYTABLE_KEY2(i64 %280)
  %282 = load i32, i32* %24, align 4
  %283 = call i32 @REG_WRITE(i8* %279, i32 %281, i32 %282)
  %284 = load i8*, i8** %10, align 8
  %285 = load i64, i64* %17, align 8
  %286 = call i32 @AR_KEYTABLE_KEY3(i64 %285)
  %287 = call i32 @REG_WRITE(i8* %284, i32 %286, i32 0)
  %288 = load i8*, i8** %10, align 8
  %289 = load i64, i64* %17, align 8
  %290 = call i32 @AR_KEYTABLE_KEY4(i64 %289)
  %291 = call i32 @REG_WRITE(i8* %288, i32 %290, i32 0)
  %292 = load i8*, i8** %10, align 8
  %293 = load i64, i64* %17, align 8
  %294 = call i32 @AR_KEYTABLE_TYPE(i64 %293)
  %295 = load i32, i32* @AR_KEYTABLE_TYPE_CLR, align 4
  %296 = call i32 @REG_WRITE(i8* %292, i32 %294, i32 %295)
  %297 = load i8*, i8** %10, align 8
  %298 = call i32 @REGWRITE_BUFFER_FLUSH(i8* %297)
  br label %299

299:                                              ; preds = %257, %195
  %300 = load i8*, i8** %10, align 8
  %301 = call i32 @ENABLE_REGWRITE_BUFFER(i8* %300)
  %302 = load i8*, i8** %10, align 8
  %303 = load i64, i64* %17, align 8
  %304 = call i32 @AR_KEYTABLE_MAC0(i64 %303)
  %305 = call i32 @REG_WRITE(i8* %302, i32 %304, i32 0)
  %306 = load i8*, i8** %10, align 8
  %307 = load i64, i64* %17, align 8
  %308 = call i32 @AR_KEYTABLE_MAC1(i64 %307)
  %309 = call i32 @REG_WRITE(i8* %306, i32 %308, i32 0)
  %310 = load i8*, i8** %10, align 8
  %311 = load i64, i64* %7, align 8
  %312 = call i32 @AR_KEYTABLE_KEY0(i64 %311)
  %313 = load i32, i32* %11, align 4
  %314 = call i32 @REG_WRITE(i8* %310, i32 %312, i32 %313)
  %315 = load i8*, i8** %10, align 8
  %316 = load i64, i64* %7, align 8
  %317 = call i32 @AR_KEYTABLE_KEY1(i64 %316)
  %318 = load i32, i32* %12, align 4
  %319 = call i32 @REG_WRITE(i8* %315, i32 %317, i32 %318)
  %320 = load i8*, i8** %10, align 8
  %321 = call i32 @REGWRITE_BUFFER_FLUSH(i8* %320)
  br label %361

322:                                              ; preds = %146
  %323 = load i8*, i8** %10, align 8
  %324 = call i32 @ENABLE_REGWRITE_BUFFER(i8* %323)
  %325 = load i8*, i8** %10, align 8
  %326 = load i64, i64* %7, align 8
  %327 = call i32 @AR_KEYTABLE_KEY0(i64 %326)
  %328 = load i32, i32* %11, align 4
  %329 = call i32 @REG_WRITE(i8* %325, i32 %327, i32 %328)
  %330 = load i8*, i8** %10, align 8
  %331 = load i64, i64* %7, align 8
  %332 = call i32 @AR_KEYTABLE_KEY1(i64 %331)
  %333 = load i32, i32* %12, align 4
  %334 = call i32 @REG_WRITE(i8* %330, i32 %332, i32 %333)
  %335 = load i8*, i8** %10, align 8
  %336 = load i64, i64* %7, align 8
  %337 = call i32 @AR_KEYTABLE_KEY2(i64 %336)
  %338 = load i32, i32* %13, align 4
  %339 = call i32 @REG_WRITE(i8* %335, i32 %337, i32 %338)
  %340 = load i8*, i8** %10, align 8
  %341 = load i64, i64* %7, align 8
  %342 = call i32 @AR_KEYTABLE_KEY3(i64 %341)
  %343 = load i32, i32* %14, align 4
  %344 = call i32 @REG_WRITE(i8* %340, i32 %342, i32 %343)
  %345 = load i8*, i8** %10, align 8
  %346 = load i64, i64* %7, align 8
  %347 = call i32 @AR_KEYTABLE_KEY4(i64 %346)
  %348 = load i32, i32* %15, align 4
  %349 = call i32 @REG_WRITE(i8* %345, i32 %347, i32 %348)
  %350 = load i8*, i8** %10, align 8
  %351 = load i64, i64* %7, align 8
  %352 = call i32 @AR_KEYTABLE_TYPE(i64 %351)
  %353 = load i32, i32* %16, align 4
  %354 = call i32 @REG_WRITE(i8* %350, i32 %352, i32 %353)
  %355 = load i8*, i8** %10, align 8
  %356 = call i32 @REGWRITE_BUFFER_FLUSH(i8* %355)
  %357 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %358 = load i64, i64* %7, align 8
  %359 = load i32*, i32** %9, align 8
  %360 = call i32 @ath_hw_keysetmac(%struct.ath_common* %357, i64 %358, i32* %359)
  br label %361

361:                                              ; preds = %322, %299
  store i32 1, i32* %5, align 4
  br label %362

362:                                              ; preds = %361, %105, %76, %64, %50, %33
  %363 = load i32, i32* %5, align 4
  ret i32 %363
}

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @get_unaligned_le32(i64) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @REG_WRITE(i8*, i32, i32) #1

declare dso_local i32 @AR_KEYTABLE_KEY0(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY1(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY2(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY3(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY4(i64) #1

declare dso_local i32 @AR_KEYTABLE_TYPE(i64) #1

declare dso_local i32 @ath_hw_keysetmac(%struct.ath_common*, i64, i32*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(i8*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(i8*) #1

declare dso_local i32 @AR_KEYTABLE_MAC0(i64) #1

declare dso_local i32 @AR_KEYTABLE_MAC1(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
