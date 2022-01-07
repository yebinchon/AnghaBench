; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_best_network.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_best_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i64, i64, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ipw_network_match = type { %struct.libipw_network*, i32 }
%struct.libipw_network = type { i32, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ipw_supported_rates = type { i64 }

@ssid = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Network '%s (%pM)' excluded due to capability mismatch.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Network '%s (%pM)' excluded because of non-network ESSID.\0A\00", align 1
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Network '%s (%pM)' excluded because of ESSID mismatch: '%s'.\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Network '%s (%pM)' excluded because '%s (%pM)' has a stronger signal.\0A\00", align 1
@HZ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [82 x i8] c"Network '%s (%pM)' excluded because of storming (%ums since last assoc attempt).\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Network '%s (%pM)' excluded because of age: %ums.\0A\00", align 1
@CFG_STATIC_CHANNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"Network '%s (%pM)' excluded because of channel mismatch: %d != %d.\0A\00", align 1
@CAP_PRIVACY_ON = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [68 x i8] c"Network '%s (%pM)' excluded because of privacy mismatch: %s != %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@CFG_STATIC_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [61 x i8] c"Network '%s (%pM)' excluded because of BSSID mismatch: %pM.\0A\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"Network '%s (%pM)' excluded because of invalid frequency/mode combination.\0A\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"Network '%s (%pM)' excluded because of invalid channel in current GEO\0A\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"Network '%s (%pM)' excluded because configured rate mask excludes AP mandatory rate.\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"Network '%s (%pM)' excluded because of no compatible rates.\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Network '%s (%pM)' is a viable match.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, %struct.ipw_network_match*, %struct.libipw_network*, i32)* @ipw_best_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_best_network(%struct.ipw_priv* %0, %struct.ipw_network_match* %1, %struct.libipw_network* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw_priv*, align 8
  %7 = alloca %struct.ipw_network_match*, align 8
  %8 = alloca %struct.libipw_network*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipw_supported_rates, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %6, align 8
  store %struct.ipw_network_match* %1, %struct.ipw_network_match** %7, align 8
  store %struct.libipw_network* %2, %struct.libipw_network** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @ssid, align 4
  %16 = call i32 @DECLARE_SSID_BUF(i32 %15)
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %18 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IW_MODE_INFRA, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %26 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24, %4
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %33 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %32, i32 0, i32 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IW_MODE_ADHOC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %31
  %40 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %41 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %39, %24
  %47 = load i32, i32* @ssid, align 4
  %48 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %49 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %52 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @print_ssid(i32 %47, i32 %50, i64 %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %58 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %59)
  store i32 0, i32* %5, align 4
  br label %528

61:                                               ; preds = %39, %31
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %61
  %66 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %67 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %70 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %69, i32 0, i32 0
  %71 = load %struct.libipw_network*, %struct.libipw_network** %70, align 8
  %72 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %68, %73
  br i1 %74, label %89, label %75

75:                                               ; preds = %65
  %76 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %77 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %80 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %79, i32 0, i32 0
  %81 = load %struct.libipw_network*, %struct.libipw_network** %80, align 8
  %82 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %85 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @memcmp(i32 %78, i32 %83, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %75, %65
  %90 = load i32, i32* @ssid, align 4
  %91 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %92 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %95 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @print_ssid(i32 %90, i32 %93, i64 %96)
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %101 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %99, i32 %102)
  store i32 0, i32* %5, align 4
  br label %528

104:                                              ; preds = %75
  br label %167

105:                                              ; preds = %61
  %106 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %107 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %166

112:                                              ; preds = %105
  %113 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %114 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %117 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %112
  %121 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %122 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %125 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %128 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %131 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @min(i64 %129, i64 %132)
  %134 = call i64 @memcmp(i32 %123, i32 %126, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %120, %112
  %137 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %138 = mul nsw i32 %137, 2
  %139 = add nsw i32 %138, 1
  %140 = zext i32 %139 to i64
  %141 = call i8* @llvm.stacksave()
  store i8* %141, i8** %11, align 8
  %142 = alloca i8, i64 %140, align 16
  store i64 %140, i64* %12, align 8
  %143 = load i32, i32* @ssid, align 4
  %144 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %145 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %148 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @print_ssid(i32 %143, i32 %146, i64 %149)
  %151 = trunc i64 %140 to i32
  %152 = call i32 @strncpy(i8* %142, i32 %150, i32 %151)
  %153 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %154 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ssid, align 4
  %157 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %158 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %161 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @print_ssid(i32 %156, i32 %159, i64 %162)
  %164 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %142, i32 %155, i32 %163)
  store i32 0, i32* %5, align 4
  %165 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %165)
  br label %528

166:                                              ; preds = %120, %105
  br label %167

167:                                              ; preds = %166, %104
  %168 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %169 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %168, i32 0, i32 0
  %170 = load %struct.libipw_network*, %struct.libipw_network** %169, align 8
  %171 = icmp ne %struct.libipw_network* %170, null
  br i1 %171, label %172, label %223

172:                                              ; preds = %167
  %173 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %174 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %173, i32 0, i32 0
  %175 = load %struct.libipw_network*, %struct.libipw_network** %174, align 8
  %176 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %175, i32 0, i32 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %180 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %178, %182
  br i1 %183, label %184, label %223

184:                                              ; preds = %172
  %185 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %186 = mul nsw i32 %185, 2
  %187 = add nsw i32 %186, 1
  %188 = zext i32 %187 to i64
  %189 = call i8* @llvm.stacksave()
  store i8* %189, i8** %13, align 8
  %190 = alloca i8, i64 %188, align 16
  store i64 %188, i64* %14, align 8
  %191 = load i32, i32* @ssid, align 4
  %192 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %193 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %196 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @print_ssid(i32 %191, i32 %194, i64 %197)
  %199 = trunc i64 %188 to i32
  %200 = call i32 @strncpy(i8* %190, i32 %198, i32 %199)
  %201 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %202 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @ssid, align 4
  %205 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %206 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %205, i32 0, i32 0
  %207 = load %struct.libipw_network*, %struct.libipw_network** %206, align 8
  %208 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %211 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %210, i32 0, i32 0
  %212 = load %struct.libipw_network*, %struct.libipw_network** %211, align 8
  %213 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @print_ssid(i32 %204, i32 %209, i64 %214)
  %216 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %217 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %216, i32 0, i32 0
  %218 = load %struct.libipw_network*, %struct.libipw_network** %217, align 8
  %219 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8* %190, i32 %203, i32 %215, i32 %220)
  store i32 0, i32* %5, align 4
  %222 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %222)
  br label %528

223:                                              ; preds = %172, %167
  %224 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %225 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %259

228:                                              ; preds = %223
  %229 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %230 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @HZ, align 8
  %233 = mul i64 %232, 3
  %234 = add i64 %231, %233
  %235 = load i64, i64* @jiffies, align 8
  %236 = call i64 @time_after(i64 %234, i64 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %259

238:                                              ; preds = %228
  %239 = load i32, i32* @ssid, align 4
  %240 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %241 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %244 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @print_ssid(i32 %239, i32 %242, i64 %245)
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %250 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = load i64, i64* @jiffies, align 8
  %253 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %254 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %252, %255
  %257 = call i32 @jiffies_to_msecs(i64 %256)
  %258 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i8* %248, i32 %251, i32 %257)
  store i32 0, i32* %5, align 4
  br label %528

259:                                              ; preds = %228, %223
  %260 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %261 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %260, i32 0, i32 4
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %300

266:                                              ; preds = %259
  %267 = load i64, i64* @jiffies, align 8
  %268 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %269 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %272 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %271, i32 0, i32 4
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %270, %275
  %277 = call i64 @time_after(i64 %267, i64 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %300

279:                                              ; preds = %266
  %280 = load i32, i32* @ssid, align 4
  %281 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %282 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %285 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @print_ssid(i32 %280, i32 %283, i64 %286)
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %291 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 8
  %293 = load i64, i64* @jiffies, align 8
  %294 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %295 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = sub nsw i64 %293, %296
  %298 = call i32 @jiffies_to_msecs(i64 %297)
  %299 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %289, i32 %292, i32 %298)
  store i32 0, i32* %5, align 4
  br label %528

300:                                              ; preds = %266, %259
  %301 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %302 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %336

307:                                              ; preds = %300
  %308 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %309 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %312 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %310, %313
  br i1 %314, label %315, label %336

315:                                              ; preds = %307
  %316 = load i32, i32* @ssid, align 4
  %317 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %318 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %321 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = call i32 @print_ssid(i32 %316, i32 %319, i64 %322)
  %324 = sext i32 %323 to i64
  %325 = inttoptr i64 %324 to i8*
  %326 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %327 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %330 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %333 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i8* %325, i32 %328, i64 %331, i64 %334)
  store i32 0, i32* %5, align 4
  br label %528

336:                                              ; preds = %307, %300
  %337 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %338 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @CAP_PRIVACY_ON, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i32 1, i32 0
  %345 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %346 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i32 1, i32 0
  %353 = icmp ne i32 %344, %352
  br i1 %353, label %354, label %385

354:                                              ; preds = %336
  %355 = load i32, i32* @ssid, align 4
  %356 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %357 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %356, i32 0, i32 6
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %360 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @print_ssid(i32 %355, i32 %358, i64 %361)
  %363 = sext i32 %362 to i64
  %364 = inttoptr i64 %363 to i8*
  %365 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %366 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %369 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @CAP_PRIVACY_ON, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  %374 = zext i1 %373 to i64
  %375 = select i1 %373, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %376 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %377 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %384 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i8* %364, i32 %367, i8* %375, i8* %383)
  store i32 0, i32* %5, align 4
  br label %528

385:                                              ; preds = %336
  %386 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %387 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %420

392:                                              ; preds = %385
  %393 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %394 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %397 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %396, i32 0, i32 5
  %398 = load i32, i32* %397, align 8
  %399 = load i64, i64* @ETH_ALEN, align 8
  %400 = call i64 @memcmp(i32 %395, i32 %398, i64 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %420

402:                                              ; preds = %392
  %403 = load i32, i32* @ssid, align 4
  %404 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %405 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %404, i32 0, i32 6
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %408 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = call i32 @print_ssid(i32 %403, i32 %406, i64 %409)
  %411 = sext i32 %410 to i64
  %412 = inttoptr i64 %411 to i8*
  %413 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %414 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %417 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %416, i32 0, i32 5
  %418 = load i32, i32* %417, align 8
  %419 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i8* %412, i32 %415, i32 %418)
  store i32 0, i32* %5, align 4
  br label %528

420:                                              ; preds = %392, %385
  %421 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %422 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %421, i32 0, i32 4
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %422, align 8
  %424 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %425 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %424, i32 0, i32 7
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @libipw_is_valid_mode(%struct.TYPE_5__* %423, i32 %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %444, label %429

429:                                              ; preds = %420
  %430 = load i32, i32* @ssid, align 4
  %431 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %432 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %431, i32 0, i32 6
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %435 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = call i32 @print_ssid(i32 %430, i32 %433, i64 %436)
  %438 = sext i32 %437 to i64
  %439 = inttoptr i64 %438 to i8*
  %440 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %441 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %440, i32 0, i32 5
  %442 = load i32, i32* %441, align 8
  %443 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0), i8* %439, i32 %442)
  store i32 0, i32* %5, align 4
  br label %528

444:                                              ; preds = %420
  %445 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %446 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %445, i32 0, i32 4
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %446, align 8
  %448 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %449 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %448, i32 0, i32 4
  %450 = load i64, i64* %449, align 8
  %451 = call i32 @libipw_is_valid_channel(%struct.TYPE_5__* %447, i64 %450)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %468, label %453

453:                                              ; preds = %444
  %454 = load i32, i32* @ssid, align 4
  %455 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %456 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %455, i32 0, i32 6
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %459 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = call i32 @print_ssid(i32 %454, i32 %457, i64 %460)
  %462 = sext i32 %461 to i64
  %463 = inttoptr i64 %462 to i8*
  %464 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %465 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %464, i32 0, i32 5
  %466 = load i32, i32* %465, align 8
  %467 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0), i8* %463, i32 %466)
  store i32 0, i32* %5, align 4
  br label %528

468:                                              ; preds = %444
  %469 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %470 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %471 = call i32 @ipw_compatible_rates(%struct.ipw_priv* %469, %struct.libipw_network* %470, %struct.ipw_supported_rates* %10)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %488, label %473

473:                                              ; preds = %468
  %474 = load i32, i32* @ssid, align 4
  %475 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %476 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %475, i32 0, i32 6
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %479 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = call i32 @print_ssid(i32 %474, i32 %477, i64 %480)
  %482 = sext i32 %481 to i64
  %483 = inttoptr i64 %482 to i8*
  %484 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %485 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %484, i32 0, i32 5
  %486 = load i32, i32* %485, align 8
  %487 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i64 0, i64 0), i8* %483, i32 %486)
  store i32 0, i32* %5, align 4
  br label %528

488:                                              ; preds = %468
  %489 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %10, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %492, label %507

492:                                              ; preds = %488
  %493 = load i32, i32* @ssid, align 4
  %494 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %495 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %494, i32 0, i32 6
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %498 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %497, i32 0, i32 1
  %499 = load i64, i64* %498, align 8
  %500 = call i32 @print_ssid(i32 %493, i32 %496, i64 %499)
  %501 = sext i32 %500 to i64
  %502 = inttoptr i64 %501 to i8*
  %503 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %504 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %503, i32 0, i32 5
  %505 = load i32, i32* %504, align 8
  %506 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i8* %502, i32 %505)
  store i32 0, i32* %5, align 4
  br label %528

507:                                              ; preds = %488
  %508 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %509 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %508, i32 0, i32 1
  %510 = call i32 @ipw_copy_rates(i32* %509, %struct.ipw_supported_rates* %10)
  %511 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %512 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %513 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %512, i32 0, i32 0
  store %struct.libipw_network* %511, %struct.libipw_network** %513, align 8
  %514 = load i32, i32* @ssid, align 4
  %515 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %516 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %515, i32 0, i32 6
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %519 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %518, i32 0, i32 1
  %520 = load i64, i64* %519, align 8
  %521 = call i32 @print_ssid(i32 %514, i32 %517, i64 %520)
  %522 = sext i32 %521 to i64
  %523 = inttoptr i64 %522 to i8*
  %524 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %525 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %524, i32 0, i32 5
  %526 = load i32, i32* %525, align 8
  %527 = call i32 (i8*, i8*, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8* %523, i32 %526)
  store i32 1, i32* %5, align 4
  br label %528

528:                                              ; preds = %507, %492, %473, %453, %429, %402, %354, %315, %279, %238, %184, %136, %89, %46
  %529 = load i32, i32* %5, align 4
  ret i32 %529
}

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @IPW_DEBUG_ASSOC(i8*, i8*, i32, ...) #1

declare dso_local i32 @print_ssid(i32, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @libipw_is_valid_mode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @libipw_is_valid_channel(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @ipw_compatible_rates(%struct.ipw_priv*, %struct.libipw_network*, %struct.ipw_supported_rates*) #1

declare dso_local i32 @ipw_copy_rates(i32*, %struct.ipw_supported_rates*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
