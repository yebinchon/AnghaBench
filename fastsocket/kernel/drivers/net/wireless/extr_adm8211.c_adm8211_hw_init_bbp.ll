; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_hw_init_bbp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_hw_init_bbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.adm8211_priv* }
%struct.adm8211_priv = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ADM8211_TYPE_INTERSIL = common dso_local global i64 0, align 8
@MMIWA = common dso_local global i32 0, align 4
@MMIRD0 = common dso_local global i32 0, align 4
@MMIRD1 = common dso_local global i32 0, align 4
@ADM8211_TYPE_RFMD = common dso_local global i64 0, align 8
@ADM8211_TYPE_ADMTEK = common dso_local global i64 0, align 8
@BBPCTL = common dso_local global i32 0, align 4
@ADM8211_BBPCTL_TYPE = common dso_local global i32 0, align 4
@SYNCTL = common dso_local global i32 0, align 4
@MACTEST = common dso_local global i32 0, align 4
@SYNRF = common dso_local global i32 0, align 4
@ADM8211_SYNRF_SELRF = common dso_local global i32 0, align 4
@ADM8211_SYNRF_PE1 = common dso_local global i32 0, align 4
@ADM8211_SYNRF_PHYRST = common dso_local global i32 0, align 4
@RF3000_CCA_CTRL = common dso_local global i32 0, align 4
@RF3000_DIVERSITY__RSSI = common dso_local global i32 0, align 4
@RF3000_TX_VAR_GAIN__TX_LEN_EXT = common dso_local global i32 0, align 4
@RF3000_LOW_GAIN_CALIB = common dso_local global i32 0, align 4
@RF3000_HIGH_GAIN_CALIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unsupported transceiver %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unsupported BBP %d\0A\00", align 1
@ADM8211_SYNCTL_SELCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @adm8211_hw_init_bbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_hw_init_bbp(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.adm8211_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 1
  %7 = load %struct.adm8211_priv*, %struct.adm8211_priv** %6, align 8
  store %struct.adm8211_priv* %7, %struct.adm8211_priv** %3, align 8
  %8 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %9 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ADM8211_TYPE_INTERSIL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @MMIWA, align 4
  %15 = call i32 @ADM8211_CSR_WRITE(i32 %14, i32 269356042)
  %16 = load i32, i32* @MMIRD0, align 4
  %17 = call i32 @ADM8211_CSR_WRITE(i32 %16, i32 31870)
  %18 = load i32, i32* @MMIRD1, align 4
  %19 = call i32 @ADM8211_CSR_WRITE(i32 %18, i32 1048576)
  br label %114

20:                                               ; preds = %1
  %21 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %22 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ADM8211_TYPE_RFMD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %28 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ADM8211_TYPE_ADMTEK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %113

32:                                               ; preds = %26, %20
  %33 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %34 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %57 [
    i32 137, label %36
    i32 136, label %36
    i32 138, label %41
  ]

36:                                               ; preds = %32, %32
  %37 = load i32, i32* @MMIWA, align 4
  %38 = call i32 @ADM8211_CSR_WRITE(i32 %37, i32 37121)
  %39 = load i32, i32* @MMIRD0, align 4
  %40 = call i32 @ADM8211_CSR_WRITE(i32 %39, i32 769)
  br label %57

41:                                               ; preds = %32
  %42 = load i32, i32* @MMIWA, align 4
  %43 = call i32 @ADM8211_CSR_WRITE(i32 %42, i32 35075)
  %44 = load i32, i32* @MMIRD0, align 4
  %45 = call i32 @ADM8211_CSR_WRITE(i32 %44, i32 5910)
  %46 = load i32, i32* @BBPCTL, align 4
  %47 = call i32 @ADM8211_CSR_READ(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @ADM8211_BBPCTL_TYPE, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, 1310720
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @BBPCTL, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ADM8211_CSR_WRITE(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %32, %41, %36
  %58 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %59 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %58, i32 0, i32 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %107 [
    i32 131, label %63
    i32 132, label %96
    i32 134, label %106
    i32 133, label %106
  ]

63:                                               ; preds = %57
  %64 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %65 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 129
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %70 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %75 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 130
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %68, %63
  %79 = load i32, i32* @SYNCTL, align 4
  %80 = call i32 @ADM8211_CSR_WRITE(i32 %79, i32 4194304)
  br label %95

81:                                               ; preds = %73
  %82 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %83 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 135
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %88 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 139
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %81
  %92 = load i32, i32* @SYNCTL, align 4
  %93 = call i32 @ADM8211_CSR_WRITE(i32 %92, i32 12582912)
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %78
  br label %110

96:                                               ; preds = %57
  %97 = load i32, i32* @MMIRD1, align 4
  %98 = call i32 @ADM8211_CSR_READ(i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = and i32 %99, 65535
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, 2114977792
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* @MMIRD1, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @ADM8211_CSR_WRITE(i32 %103, i32 %104)
  br label %110

106:                                              ; preds = %57, %57
  br label %107

107:                                              ; preds = %57, %106
  %108 = load i32, i32* @MMIRD1, align 4
  %109 = call i32 @ADM8211_CSR_WRITE(i32 %108, i32 2114977792)
  br label %110

110:                                              ; preds = %107, %96, %95
  %111 = load i32, i32* @MACTEST, align 4
  %112 = call i32 @ADM8211_CSR_WRITE(i32 %111, i32 2048)
  br label %113

113:                                              ; preds = %110, %26
  br label %114

114:                                              ; preds = %113, %13
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %116 = call i32 @adm8211_hw_init_syn(%struct.ieee80211_hw* %115)
  %117 = load i32, i32* @SYNRF, align 4
  %118 = load i32, i32* @ADM8211_SYNRF_SELRF, align 4
  %119 = load i32, i32* @ADM8211_SYNRF_PE1, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ADM8211_SYNRF_PHYRST, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @ADM8211_CSR_WRITE(i32 %117, i32 %122)
  %124 = load i32, i32* @SYNRF, align 4
  %125 = call i32 @ADM8211_CSR_READ(i32 %124)
  %126 = call i32 @msleep(i32 20)
  %127 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %128 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ADM8211_TYPE_RFMD, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %186

132:                                              ; preds = %114
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %134 = load i32, i32* @RF3000_CCA_CTRL, align 4
  %135 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %133, i32 %134, i32 128)
  %136 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %137 = load i32, i32* @RF3000_DIVERSITY__RSSI, align 4
  %138 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %136, i32 %137, i32 128)
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %140 = load i32, i32* @RF3000_TX_VAR_GAIN__TX_LEN_EXT, align 4
  %141 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %139, i32 %140, i32 116)
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %143 = load i32, i32* @RF3000_LOW_GAIN_CALIB, align 4
  %144 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %142, i32 %143, i32 56)
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %146 = load i32, i32* @RF3000_HIGH_GAIN_CALIB, align 4
  %147 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %145, i32 %146, i32 64)
  %148 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %149 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %148, i32 0, i32 3
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %154, label %159

154:                                              ; preds = %132
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %156 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %155, i32 28, i32 0)
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %158 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %157, i32 29, i32 128)
  br label %185

159:                                              ; preds = %132
  %160 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %161 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %160, i32 0, i32 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 132
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %168 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %169 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %168, i32 0, i32 3
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %167, i32 28, i32 %172)
  br label %177

174:                                              ; preds = %159
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %176 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %175, i32 28, i32 0)
  br label %177

177:                                              ; preds = %174, %166
  %178 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %179 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %180 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %179, i32 0, i32 3
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %178, i32 29, i32 %183)
  br label %185

185:                                              ; preds = %177, %154
  br label %375

186:                                              ; preds = %114
  %187 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %188 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @ADM8211_TYPE_ADMTEK, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %366

192:                                              ; preds = %186
  %193 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %194 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %193, i32 0, i32 255)
  %195 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %196 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %195, i32 7, i32 10)
  %197 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %198 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  switch i32 %199, label %356 [
    i32 129, label %200
    i32 128, label %200
    i32 135, label %253
    i32 139, label %302
    i32 130, label %355
  ]

200:                                              ; preds = %192, %192
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %202 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %201, i32 0, i32 0)
  %203 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %204 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %203, i32 1, i32 0)
  %205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %206 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %205, i32 2, i32 0)
  %207 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %208 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %207, i32 3, i32 0)
  %209 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %210 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %209, i32 6, i32 15)
  %211 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %212 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %211, i32 9, i32 0)
  %213 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %214 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %213, i32 10, i32 0)
  %215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %216 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %215, i32 11, i32 0)
  %217 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %218 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %217, i32 12, i32 0)
  %219 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %220 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %219, i32 15, i32 170)
  %221 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %222 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %221, i32 16, i32 140)
  %223 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %224 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %223, i32 17, i32 67)
  %225 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %226 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %225, i32 24, i32 64)
  %227 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %228 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %227, i32 32, i32 35)
  %229 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %230 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %229, i32 33, i32 2)
  %231 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %232 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %231, i32 34, i32 40)
  %233 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %234 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %233, i32 35, i32 48)
  %235 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %236 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %235, i32 36, i32 45)
  %237 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %238 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %237, i32 40, i32 53)
  %239 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %240 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %239, i32 42, i32 140)
  %241 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %242 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %241, i32 43, i32 129)
  %243 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %244 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %243, i32 44, i32 68)
  %245 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %246 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %245, i32 45, i32 10)
  %247 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %248 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %247, i32 41, i32 64)
  %249 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %250 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %249, i32 96, i32 8)
  %251 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %252 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %251, i32 100, i32 1)
  br label %365

253:                                              ; preds = %192
  %254 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %255 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %254, i32 0, i32 0)
  %256 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %257 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %256, i32 1, i32 0)
  %258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %259 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %258, i32 2, i32 0)
  %260 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %261 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %260, i32 3, i32 0)
  %262 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %263 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %262, i32 6, i32 15)
  %264 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %265 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %264, i32 9, i32 5)
  %266 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %267 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %266, i32 10, i32 2)
  %268 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %269 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %268, i32 11, i32 0)
  %270 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %271 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %270, i32 12, i32 15)
  %272 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %273 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %272, i32 15, i32 85)
  %274 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %275 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %274, i32 16, i32 141)
  %276 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %277 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %276, i32 17, i32 67)
  %278 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %279 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %278, i32 24, i32 74)
  %280 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %281 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %280, i32 32, i32 32)
  %282 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %283 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %282, i32 33, i32 2)
  %284 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %285 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %284, i32 34, i32 35)
  %286 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %287 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %286, i32 35, i32 48)
  %288 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %289 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %288, i32 36, i32 45)
  %290 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %291 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %290, i32 42, i32 140)
  %292 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %293 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %292, i32 43, i32 129)
  %294 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %295 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %294, i32 44, i32 68)
  %296 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %297 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %296, i32 41, i32 74)
  %298 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %299 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %298, i32 96, i32 43)
  %300 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %301 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %300, i32 100, i32 1)
  br label %365

302:                                              ; preds = %192
  %303 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %304 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %303, i32 0, i32 0)
  %305 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %306 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %305, i32 1, i32 0)
  %307 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %308 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %307, i32 2, i32 0)
  %309 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %310 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %309, i32 3, i32 0)
  %311 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %312 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %311, i32 6, i32 15)
  %313 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %314 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %313, i32 7, i32 5)
  %315 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %316 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %315, i32 8, i32 3)
  %317 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %318 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %317, i32 9, i32 0)
  %319 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %320 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %319, i32 10, i32 0)
  %321 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %322 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %321, i32 11, i32 0)
  %323 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %324 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %323, i32 12, i32 16)
  %325 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %326 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %325, i32 15, i32 85)
  %327 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %328 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %327, i32 16, i32 141)
  %329 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %330 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %329, i32 17, i32 67)
  %331 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %332 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %331, i32 24, i32 74)
  %333 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %334 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %333, i32 32, i32 32)
  %335 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %336 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %335, i32 33, i32 2)
  %337 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %338 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %337, i32 34, i32 35)
  %339 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %340 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %339, i32 35, i32 48)
  %341 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %342 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %341, i32 36, i32 45)
  %343 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %344 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %343, i32 42, i32 170)
  %345 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %346 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %345, i32 43, i32 129)
  %347 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %348 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %347, i32 44, i32 68)
  %349 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %350 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %349, i32 41, i32 250)
  %351 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %352 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %351, i32 96, i32 45)
  %353 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %354 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %353, i32 100, i32 1)
  br label %365

355:                                              ; preds = %192
  br label %365

356:                                              ; preds = %192
  %357 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %358 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %361 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = call i32 @wiphy_debug(i32 %359, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %363)
  br label %365

365:                                              ; preds = %356, %355, %302, %253, %200
  br label %374

366:                                              ; preds = %186
  %367 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %368 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %371 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = call i32 @wiphy_debug(i32 %369, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %372)
  br label %374

374:                                              ; preds = %366, %365
  br label %375

375:                                              ; preds = %374, %185
  %376 = load i32, i32* @SYNRF, align 4
  %377 = call i32 @ADM8211_CSR_WRITE(i32 %376, i32 0)
  %378 = load i32, i32* @SYNCTL, align 4
  %379 = call i32 @ADM8211_CSR_READ(i32 %378)
  store i32 %379, i32* %4, align 4
  %380 = load i32, i32* @ADM8211_SYNCTL_SELCAL, align 4
  %381 = load i32, i32* %4, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %4, align 4
  %383 = load i32, i32* @SYNCTL, align 4
  %384 = load i32, i32* %4, align 4
  %385 = call i32 @ADM8211_CSR_WRITE(i32 %383, i32 %384)
  ret i32 0
}

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #1

declare dso_local i32 @ADM8211_CSR_READ(i32) #1

declare dso_local i32 @adm8211_hw_init_syn(%struct.ieee80211_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @adm8211_write_bbp(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
