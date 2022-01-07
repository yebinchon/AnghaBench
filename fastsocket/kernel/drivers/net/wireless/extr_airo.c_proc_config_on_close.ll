; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_config_on_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_config_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.proc_data* }
%struct.proc_data = type { i8*, i32 }
%struct.proc_dir_entry = type { %struct.net_device* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i64*, i32, i8*, i32 }

@FLAG_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Mode: \00", align 1
@FLAG_RESET = common dso_local global i32 0, align 4
@RXMODE_FULL_MASK = common dso_local global i32 0, align 4
@FLAG_802_11 = common dso_local global i32 0, align 4
@MODE_CFG_MASK = common dso_local global i32 0, align 4
@SCANMODE_ACTIVE = common dso_local global i8* null, align 8
@MODE_STA_IBSS = common dso_local global i32 0, align 4
@MODE_STA_ESS = common dso_local global i32 0, align 4
@RXMODE_RFMON = common dso_local global i32 0, align 4
@RXMODE_DISABLE_802_3_HEADER = common dso_local global i32 0, align 4
@SCANMODE_PASSIVE = common dso_local global i8* null, align 8
@RXMODE_RFMON_ANYBSS = common dso_local global i32 0, align 4
@RXMODE_LANMON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Radio: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@FLAG_RADIO_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"NodeName: \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"PowerMode: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"PSPCAM\00", align 1
@POWERSAVE_PSPCAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"PSP\00", align 1
@POWERSAVE_PSP = common dso_local global i32 0, align 4
@POWERSAVE_CAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"DataRates: \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Channel: \00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"XmitPower: \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"WEP: \00", align 1
@AUTH_SHAREDKEY = common dso_local global i32 0, align 4
@AUTH_ENCRYPT = common dso_local global i32 0, align 4
@AUTH_OPEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"LongRetryLimit: \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"ShortRetryLimit: \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"RTSThreshold: \00", align 1
@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"TXMSDULifetime: \00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"RXMSDULifetime: \00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"TXDiversity: \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"RXDiversity: \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"FragThreshold: \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Modulation: \00", align 1
@MOD_DEFAULT = common dso_local global i32 0, align 4
@MOD_CCK = common dso_local global i32 0, align 4
@MOD_MOK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"Unknown modulation\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Preamble: \00", align 1
@PREAMBLE_AUTO = common dso_local global i32 0, align 4
@PREAMBLE_LONG = common dso_local global i32 0, align 4
@PREAMBLE_SHORT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"Unknown preamble\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Couldn't figure out %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.file*)* @proc_config_on_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_config_on_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.airo_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load %struct.proc_data*, %struct.proc_data** %31, align 8
  store %struct.proc_data* %32, %struct.proc_data** %5, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.proc_dir_entry* @PDE(%struct.inode* %33)
  store %struct.proc_dir_entry* %34, %struct.proc_dir_entry** %6, align 8
  %35 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %36 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %35, i32 0, i32 0
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  store %struct.net_device* %37, %struct.net_device** %7, align 8
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load %struct.airo_info*, %struct.airo_info** %39, align 8
  store %struct.airo_info* %40, %struct.airo_info** %8, align 8
  %41 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %42 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %2
  br label %786

46:                                               ; preds = %2
  %47 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %48 = call i32 @readConfigRid(%struct.airo_info* %47, i32 1)
  %49 = load i32, i32* @FLAG_COMMIT, align 4
  %50 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %51 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %50, i32 0, i32 1
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %54 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %782, %46
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %783

61:                                               ; preds = %56
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %184, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 6
  store i8* %67, i8** %9, align 8
  %68 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %69 = call i64 @sniffing_mode(%struct.airo_info* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* @FLAG_RESET, align 4
  %73 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %74 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %73, i32 0, i32 1
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  br label %76

76:                                               ; preds = %71, %65
  %77 = load i32, i32* @RXMODE_FULL_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %80 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %78
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @FLAG_802_11, align 4
  %85 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %86 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %85, i32 0, i32 1
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  %88 = load i32, i32* @MODE_CFG_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %91 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 18
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %89
  store i32 %94, i32* %92, align 8
  %95 = load i8*, i8** @SCANMODE_ACTIVE, align 8
  %96 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %97 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 17
  store i8* %95, i8** %98, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 97
  br i1 %103, label %104, label %111

104:                                              ; preds = %76
  %105 = load i32, i32* @MODE_STA_IBSS, align 4
  %106 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %107 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 18
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  br label %179

111:                                              ; preds = %76
  %112 = load i32, i32* @MODE_STA_ESS, align 4
  %113 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %114 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 18
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 114
  br i1 %122, label %123, label %140

123:                                              ; preds = %111
  %124 = load i32, i32* @RXMODE_RFMON, align 4
  %125 = load i32, i32* @RXMODE_DISABLE_802_3_HEADER, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %128 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load i8*, i8** @SCANMODE_PASSIVE, align 8
  %133 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %134 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 17
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* @FLAG_802_11, align 4
  %137 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %138 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %137, i32 0, i32 1
  %139 = call i32 @set_bit(i32 %136, i32* %138)
  br label %178

140:                                              ; preds = %111
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 121
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load i32, i32* @RXMODE_RFMON_ANYBSS, align 4
  %148 = load i32, i32* @RXMODE_DISABLE_802_3_HEADER, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %151 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 8
  %155 = load i8*, i8** @SCANMODE_PASSIVE, align 8
  %156 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %157 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 17
  store i8* %155, i8** %158, align 8
  %159 = load i32, i32* @FLAG_802_11, align 4
  %160 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %161 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %160, i32 0, i32 1
  %162 = call i32 @set_bit(i32 %159, i32* %161)
  br label %177

163:                                              ; preds = %140
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 108
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load i32, i32* @RXMODE_LANMON, align 4
  %171 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %172 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %169, %163
  br label %177

177:                                              ; preds = %176, %146
  br label %178

178:                                              ; preds = %177, %123
  br label %179

179:                                              ; preds = %178, %104
  %180 = load i32, i32* @FLAG_COMMIT, align 4
  %181 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %182 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %181, i32 0, i32 1
  %183 = call i32 @set_bit(i32 %180, i32* %182)
  br label %756

184:                                              ; preds = %61
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @strncmp(i8* %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %205, label %188

188:                                              ; preds = %184
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 7
  store i8* %190, i8** %9, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = call i32 @strncmp(i8* %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* @FLAG_RADIO_OFF, align 4
  %196 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %197 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %196, i32 0, i32 1
  %198 = call i32 @set_bit(i32 %195, i32* %197)
  br label %204

199:                                              ; preds = %188
  %200 = load i32, i32* @FLAG_RADIO_OFF, align 4
  %201 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %202 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %201, i32 0, i32 1
  %203 = call i32 @clear_bit(i32 %200, i32* %202)
  br label %204

204:                                              ; preds = %199, %194
  br label %755

205:                                              ; preds = %184
  %206 = load i8*, i8** %9, align 8
  %207 = call i32 @strncmp(i8* %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %251, label %209

209:                                              ; preds = %205
  %210 = load i8*, i8** %9, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 10
  store i8* %211, i8** %9, align 8
  %212 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %213 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @memset(i8* %215, i32 0, i32 16)
  store i32 0, i32* %10, align 4
  br label %217

217:                                              ; preds = %243, %209
  %218 = load i32, i32* %10, align 4
  %219 = icmp slt i32 %218, 16
  br i1 %219, label %220, label %228

220:                                              ; preds = %217
  %221 = load i8*, i8** %9, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 10
  br label %228

228:                                              ; preds = %220, %217
  %229 = phi i1 [ false, %217 ], [ %227, %220 ]
  br i1 %229, label %230, label %246

230:                                              ; preds = %228
  %231 = load i8*, i8** %9, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %237 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  store i8 %235, i8* %242, align 1
  br label %243

243:                                              ; preds = %230
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %10, align 4
  br label %217

246:                                              ; preds = %228
  %247 = load i32, i32* @FLAG_COMMIT, align 4
  %248 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %249 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %248, i32 0, i32 1
  %250 = call i32 @set_bit(i32 %247, i32* %249)
  br label %754

251:                                              ; preds = %205
  %252 = load i8*, i8** %9, align 8
  %253 = call i32 @strncmp(i8* %252, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %294, label %255

255:                                              ; preds = %251
  %256 = load i8*, i8** %9, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 11
  store i8* %257, i8** %9, align 8
  %258 = load i8*, i8** %9, align 8
  %259 = call i32 @strncmp(i8* %258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %255
  %262 = load i32, i32* @POWERSAVE_PSPCAM, align 4
  %263 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %264 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 16
  store i32 %262, i32* %265, align 8
  %266 = load i32, i32* @FLAG_COMMIT, align 4
  %267 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %268 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %267, i32 0, i32 1
  %269 = call i32 @set_bit(i32 %266, i32* %268)
  br label %293

270:                                              ; preds = %255
  %271 = load i8*, i8** %9, align 8
  %272 = call i32 @strncmp(i8* %271, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %283, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* @POWERSAVE_PSP, align 4
  %276 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %277 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 16
  store i32 %275, i32* %278, align 8
  %279 = load i32, i32* @FLAG_COMMIT, align 4
  %280 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %281 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %280, i32 0, i32 1
  %282 = call i32 @set_bit(i32 %279, i32* %281)
  br label %292

283:                                              ; preds = %270
  %284 = load i32, i32* @POWERSAVE_CAM, align 4
  %285 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %286 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 16
  store i32 %284, i32* %287, align 8
  %288 = load i32, i32* @FLAG_COMMIT, align 4
  %289 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %290 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %289, i32 0, i32 1
  %291 = call i32 @set_bit(i32 %288, i32* %290)
  br label %292

292:                                              ; preds = %283, %274
  br label %293

293:                                              ; preds = %292, %261
  br label %753

294:                                              ; preds = %251
  %295 = load i8*, i8** %9, align 8
  %296 = call i32 @strncmp(i8* %295, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %326, label %298

298:                                              ; preds = %294
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %299 = load i8*, i8** %9, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 11
  store i8* %300, i8** %9, align 8
  br label %301

301:                                              ; preds = %305, %298
  %302 = load i8*, i8** %9, align 8
  %303 = call i32 @get_dec_u16(i8* %302, i32* %12, i32 3)
  store i32 %303, i32* %11, align 4
  %304 = icmp ne i32 %303, -1
  br i1 %304, label %305, label %321

305:                                              ; preds = %301
  %306 = load i32, i32* %11, align 4
  %307 = sext i32 %306 to i64
  %308 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %309 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 15
  %311 = load i64*, i64** %310, align 8
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %13, align 4
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds i64, i64* %311, i64 %314
  store i64 %307, i64* %315, align 8
  %316 = load i32, i32* %12, align 4
  %317 = add nsw i32 %316, 1
  %318 = load i8*, i8** %9, align 8
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds i8, i8* %318, i64 %319
  store i8* %320, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %301

321:                                              ; preds = %301
  %322 = load i32, i32* @FLAG_COMMIT, align 4
  %323 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %324 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %323, i32 0, i32 1
  %325 = call i32 @set_bit(i32 %322, i32* %324)
  br label %752

326:                                              ; preds = %294
  %327 = load i8*, i8** %9, align 8
  %328 = call i32 @strncmp(i8* %327, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 9)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %350, label %330

330:                                              ; preds = %326
  store i32 0, i32* %15, align 4
  %331 = load i8*, i8** %9, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 9
  store i8* %332, i8** %9, align 8
  %333 = load i8*, i8** %9, align 8
  %334 = load i32, i32* %15, align 4
  %335 = add nsw i32 %334, 3
  %336 = call i32 @get_dec_u16(i8* %333, i32* %15, i32 %335)
  store i32 %336, i32* %14, align 4
  %337 = load i32, i32* %14, align 4
  %338 = icmp ne i32 %337, -1
  br i1 %338, label %339, label %349

339:                                              ; preds = %330
  %340 = load i32, i32* %14, align 4
  %341 = call i8* @cpu_to_le16(i32 %340)
  %342 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %343 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 14
  store i8* %341, i8** %344, align 8
  %345 = load i32, i32* @FLAG_COMMIT, align 4
  %346 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %347 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %346, i32 0, i32 1
  %348 = call i32 @set_bit(i32 %345, i32* %347)
  br label %349

349:                                              ; preds = %339, %330
  br label %751

350:                                              ; preds = %326
  %351 = load i8*, i8** %9, align 8
  %352 = call i32 @strncmp(i8* %351, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 11)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %374, label %354

354:                                              ; preds = %350
  store i32 0, i32* %17, align 4
  %355 = load i8*, i8** %9, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 11
  store i8* %356, i8** %9, align 8
  %357 = load i8*, i8** %9, align 8
  %358 = load i32, i32* %17, align 4
  %359 = add nsw i32 %358, 3
  %360 = call i32 @get_dec_u16(i8* %357, i32* %17, i32 %359)
  store i32 %360, i32* %16, align 4
  %361 = load i32, i32* %16, align 4
  %362 = icmp ne i32 %361, -1
  br i1 %362, label %363, label %373

363:                                              ; preds = %354
  %364 = load i32, i32* %16, align 4
  %365 = call i8* @cpu_to_le16(i32 %364)
  %366 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %367 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 13
  store i8* %365, i8** %368, align 8
  %369 = load i32, i32* @FLAG_COMMIT, align 4
  %370 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %371 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %370, i32 0, i32 1
  %372 = call i32 @set_bit(i32 %369, i32* %371)
  br label %373

373:                                              ; preds = %363, %354
  br label %750

374:                                              ; preds = %350
  %375 = load i8*, i8** %9, align 8
  %376 = call i32 @strncmp(i8* %375, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %405, label %378

378:                                              ; preds = %374
  %379 = load i8*, i8** %9, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 5
  store i8* %380, i8** %9, align 8
  %381 = load i8*, i8** %9, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 0
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  switch i32 %384, label %395 [
    i32 115, label %385
    i32 101, label %390
  ]

385:                                              ; preds = %378
  %386 = load i32, i32* @AUTH_SHAREDKEY, align 4
  %387 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %388 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 12
  store i32 %386, i32* %389, align 8
  br label %400

390:                                              ; preds = %378
  %391 = load i32, i32* @AUTH_ENCRYPT, align 4
  %392 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %393 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 12
  store i32 %391, i32* %394, align 8
  br label %400

395:                                              ; preds = %378
  %396 = load i32, i32* @AUTH_OPEN, align 4
  %397 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %398 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 12
  store i32 %396, i32* %399, align 8
  br label %400

400:                                              ; preds = %395, %390, %385
  %401 = load i32, i32* @FLAG_COMMIT, align 4
  %402 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %403 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %402, i32 0, i32 1
  %404 = call i32 @set_bit(i32 %401, i32* %403)
  br label %749

405:                                              ; preds = %374
  %406 = load i8*, i8** %9, align 8
  %407 = call i32 @strncmp(i8* %406, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 16)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %436, label %409

409:                                              ; preds = %405
  store i32 0, i32* %19, align 4
  %410 = load i8*, i8** %9, align 8
  %411 = getelementptr inbounds i8, i8* %410, i64 16
  store i8* %411, i8** %9, align 8
  %412 = load i8*, i8** %9, align 8
  %413 = call i32 @get_dec_u16(i8* %412, i32* %19, i32 3)
  store i32 %413, i32* %18, align 4
  %414 = load i32, i32* %18, align 4
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %409
  br label %425

417:                                              ; preds = %409
  %418 = load i32, i32* %18, align 4
  %419 = icmp sgt i32 %418, 255
  br i1 %419, label %420, label %421

420:                                              ; preds = %417
  br label %423

421:                                              ; preds = %417
  %422 = load i32, i32* %18, align 4
  br label %423

423:                                              ; preds = %421, %420
  %424 = phi i32 [ 255, %420 ], [ %422, %421 ]
  br label %425

425:                                              ; preds = %423, %416
  %426 = phi i32 [ 0, %416 ], [ %424, %423 ]
  store i32 %426, i32* %18, align 4
  %427 = load i32, i32* %18, align 4
  %428 = call i8* @cpu_to_le16(i32 %427)
  %429 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %430 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %429, i32 0, i32 2
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 11
  store i8* %428, i8** %431, align 8
  %432 = load i32, i32* @FLAG_COMMIT, align 4
  %433 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %434 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %433, i32 0, i32 1
  %435 = call i32 @set_bit(i32 %432, i32* %434)
  br label %748

436:                                              ; preds = %405
  %437 = load i8*, i8** %9, align 8
  %438 = call i32 @strncmp(i8* %437, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 17)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %467, label %440

440:                                              ; preds = %436
  store i32 0, i32* %21, align 4
  %441 = load i8*, i8** %9, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 17
  store i8* %442, i8** %9, align 8
  %443 = load i8*, i8** %9, align 8
  %444 = call i32 @get_dec_u16(i8* %443, i32* %21, i32 3)
  store i32 %444, i32* %20, align 4
  %445 = load i32, i32* %20, align 4
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %440
  br label %456

448:                                              ; preds = %440
  %449 = load i32, i32* %20, align 4
  %450 = icmp sgt i32 %449, 255
  br i1 %450, label %451, label %452

451:                                              ; preds = %448
  br label %454

452:                                              ; preds = %448
  %453 = load i32, i32* %20, align 4
  br label %454

454:                                              ; preds = %452, %451
  %455 = phi i32 [ 255, %451 ], [ %453, %452 ]
  br label %456

456:                                              ; preds = %454, %447
  %457 = phi i32 [ 0, %447 ], [ %455, %454 ]
  store i32 %457, i32* %20, align 4
  %458 = load i32, i32* %20, align 4
  %459 = call i8* @cpu_to_le16(i32 %458)
  %460 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %461 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %461, i32 0, i32 10
  store i8* %459, i8** %462, align 8
  %463 = load i32, i32* @FLAG_COMMIT, align 4
  %464 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %465 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %464, i32 0, i32 1
  %466 = call i32 @set_bit(i32 %463, i32* %465)
  br label %747

467:                                              ; preds = %436
  %468 = load i8*, i8** %9, align 8
  %469 = call i32 @strncmp(i8* %468, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 14)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %500, label %471

471:                                              ; preds = %467
  store i32 0, i32* %23, align 4
  %472 = load i8*, i8** %9, align 8
  %473 = getelementptr inbounds i8, i8* %472, i64 14
  store i8* %473, i8** %9, align 8
  %474 = load i8*, i8** %9, align 8
  %475 = call i32 @get_dec_u16(i8* %474, i32* %23, i32 4)
  store i32 %475, i32* %22, align 4
  %476 = load i32, i32* %22, align 4
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %471
  br label %489

479:                                              ; preds = %471
  %480 = load i32, i32* %22, align 4
  %481 = load i32, i32* @AIRO_DEF_MTU, align 4
  %482 = icmp sgt i32 %480, %481
  br i1 %482, label %483, label %485

483:                                              ; preds = %479
  %484 = load i32, i32* @AIRO_DEF_MTU, align 4
  br label %487

485:                                              ; preds = %479
  %486 = load i32, i32* %22, align 4
  br label %487

487:                                              ; preds = %485, %483
  %488 = phi i32 [ %484, %483 ], [ %486, %485 ]
  br label %489

489:                                              ; preds = %487, %478
  %490 = phi i32 [ 0, %478 ], [ %488, %487 ]
  store i32 %490, i32* %22, align 4
  %491 = load i32, i32* %22, align 4
  %492 = call i8* @cpu_to_le16(i32 %491)
  %493 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %494 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %493, i32 0, i32 2
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 9
  store i8* %492, i8** %495, align 8
  %496 = load i32, i32* @FLAG_COMMIT, align 4
  %497 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %498 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %497, i32 0, i32 1
  %499 = call i32 @set_bit(i32 %496, i32* %498)
  br label %746

500:                                              ; preds = %467
  %501 = load i8*, i8** %9, align 8
  %502 = call i32 @strncmp(i8* %501, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 16)
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %525, label %504

504:                                              ; preds = %500
  store i32 0, i32* %25, align 4
  %505 = load i8*, i8** %9, align 8
  %506 = getelementptr inbounds i8, i8* %505, i64 16
  store i8* %506, i8** %9, align 8
  %507 = load i8*, i8** %9, align 8
  %508 = call i32 @get_dec_u16(i8* %507, i32* %25, i32 5)
  store i32 %508, i32* %24, align 4
  %509 = load i32, i32* %24, align 4
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %512

511:                                              ; preds = %504
  br label %514

512:                                              ; preds = %504
  %513 = load i32, i32* %24, align 4
  br label %514

514:                                              ; preds = %512, %511
  %515 = phi i32 [ 0, %511 ], [ %513, %512 ]
  store i32 %515, i32* %24, align 4
  %516 = load i32, i32* %24, align 4
  %517 = call i8* @cpu_to_le16(i32 %516)
  %518 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %519 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %519, i32 0, i32 8
  store i8* %517, i8** %520, align 8
  %521 = load i32, i32* @FLAG_COMMIT, align 4
  %522 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %523 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %522, i32 0, i32 1
  %524 = call i32 @set_bit(i32 %521, i32* %523)
  br label %745

525:                                              ; preds = %500
  %526 = load i8*, i8** %9, align 8
  %527 = call i32 @strncmp(i8* %526, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 16)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %550, label %529

529:                                              ; preds = %525
  store i32 0, i32* %27, align 4
  %530 = load i8*, i8** %9, align 8
  %531 = getelementptr inbounds i8, i8* %530, i64 16
  store i8* %531, i8** %9, align 8
  %532 = load i8*, i8** %9, align 8
  %533 = call i32 @get_dec_u16(i8* %532, i32* %27, i32 5)
  store i32 %533, i32* %26, align 4
  %534 = load i32, i32* %26, align 4
  %535 = icmp slt i32 %534, 0
  br i1 %535, label %536, label %537

536:                                              ; preds = %529
  br label %539

537:                                              ; preds = %529
  %538 = load i32, i32* %26, align 4
  br label %539

539:                                              ; preds = %537, %536
  %540 = phi i32 [ 0, %536 ], [ %538, %537 ]
  store i32 %540, i32* %26, align 4
  %541 = load i32, i32* %26, align 4
  %542 = call i8* @cpu_to_le16(i32 %541)
  %543 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %544 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %544, i32 0, i32 7
  store i8* %542, i8** %545, align 8
  %546 = load i32, i32* @FLAG_COMMIT, align 4
  %547 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %548 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %547, i32 0, i32 1
  %549 = call i32 @set_bit(i32 %546, i32* %548)
  br label %744

550:                                              ; preds = %525
  %551 = load i8*, i8** %9, align 8
  %552 = call i32 @strncmp(i8* %551, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 13)
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %578, label %554

554:                                              ; preds = %550
  %555 = load i8*, i8** %9, align 8
  %556 = getelementptr inbounds i8, i8* %555, i64 13
  %557 = load i8, i8* %556, align 1
  %558 = sext i8 %557 to i32
  %559 = icmp eq i32 %558, 108
  br i1 %559, label %560, label %561

560:                                              ; preds = %554
  br label %569

561:                                              ; preds = %554
  %562 = load i8*, i8** %9, align 8
  %563 = getelementptr inbounds i8, i8* %562, i64 13
  %564 = load i8, i8* %563, align 1
  %565 = sext i8 %564 to i32
  %566 = icmp eq i32 %565, 114
  %567 = zext i1 %566 to i64
  %568 = select i1 %566, i32 2, i32 3
  br label %569

569:                                              ; preds = %561, %560
  %570 = phi i32 [ 1, %560 ], [ %568, %561 ]
  %571 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %572 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %571, i32 0, i32 2
  %573 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %572, i32 0, i32 2
  store i32 %570, i32* %573, align 8
  %574 = load i32, i32* @FLAG_COMMIT, align 4
  %575 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %576 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %575, i32 0, i32 1
  %577 = call i32 @set_bit(i32 %574, i32* %576)
  br label %743

578:                                              ; preds = %550
  %579 = load i8*, i8** %9, align 8
  %580 = call i32 @strncmp(i8* %579, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 13)
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %606, label %582

582:                                              ; preds = %578
  %583 = load i8*, i8** %9, align 8
  %584 = getelementptr inbounds i8, i8* %583, i64 13
  %585 = load i8, i8* %584, align 1
  %586 = sext i8 %585 to i32
  %587 = icmp eq i32 %586, 108
  br i1 %587, label %588, label %589

588:                                              ; preds = %582
  br label %597

589:                                              ; preds = %582
  %590 = load i8*, i8** %9, align 8
  %591 = getelementptr inbounds i8, i8* %590, i64 13
  %592 = load i8, i8* %591, align 1
  %593 = sext i8 %592 to i32
  %594 = icmp eq i32 %593, 114
  %595 = zext i1 %594 to i64
  %596 = select i1 %594, i32 2, i32 3
  br label %597

597:                                              ; preds = %589, %588
  %598 = phi i32 [ 1, %588 ], [ %596, %589 ]
  %599 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %600 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %599, i32 0, i32 2
  %601 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %600, i32 0, i32 3
  store i32 %598, i32* %601, align 4
  %602 = load i32, i32* @FLAG_COMMIT, align 4
  %603 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %604 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %603, i32 0, i32 1
  %605 = call i32 @set_bit(i32 %602, i32* %604)
  br label %742

606:                                              ; preds = %578
  %607 = load i8*, i8** %9, align 8
  %608 = call i32 @strncmp(i8* %607, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 15)
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %641, label %610

610:                                              ; preds = %606
  store i32 0, i32* %29, align 4
  %611 = load i8*, i8** %9, align 8
  %612 = getelementptr inbounds i8, i8* %611, i64 15
  store i8* %612, i8** %9, align 8
  %613 = load i8*, i8** %9, align 8
  %614 = call i32 @get_dec_u16(i8* %613, i32* %29, i32 4)
  store i32 %614, i32* %28, align 4
  %615 = load i32, i32* %28, align 4
  %616 = icmp slt i32 %615, 256
  br i1 %616, label %617, label %618

617:                                              ; preds = %610
  br label %628

618:                                              ; preds = %610
  %619 = load i32, i32* %28, align 4
  %620 = load i32, i32* @AIRO_DEF_MTU, align 4
  %621 = icmp sgt i32 %619, %620
  br i1 %621, label %622, label %624

622:                                              ; preds = %618
  %623 = load i32, i32* @AIRO_DEF_MTU, align 4
  br label %626

624:                                              ; preds = %618
  %625 = load i32, i32* %28, align 4
  br label %626

626:                                              ; preds = %624, %622
  %627 = phi i32 [ %623, %622 ], [ %625, %624 ]
  br label %628

628:                                              ; preds = %626, %617
  %629 = phi i32 [ 256, %617 ], [ %627, %626 ]
  store i32 %629, i32* %28, align 4
  %630 = load i32, i32* %28, align 4
  %631 = and i32 %630, 65534
  store i32 %631, i32* %28, align 4
  %632 = load i32, i32* %28, align 4
  %633 = call i8* @cpu_to_le16(i32 %632)
  %634 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %635 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %634, i32 0, i32 2
  %636 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %635, i32 0, i32 6
  store i8* %633, i8** %636, align 8
  %637 = load i32, i32* @FLAG_COMMIT, align 4
  %638 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %639 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %638, i32 0, i32 1
  %640 = call i32 @set_bit(i32 %637, i32* %639)
  br label %741

641:                                              ; preds = %606
  %642 = load i8*, i8** %9, align 8
  %643 = call i32 @strncmp(i8* %642, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 12)
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %686, label %645

645:                                              ; preds = %641
  %646 = load i8*, i8** %9, align 8
  %647 = getelementptr inbounds i8, i8* %646, i64 12
  store i8* %647, i8** %9, align 8
  %648 = load i8*, i8** %9, align 8
  %649 = load i8, i8* %648, align 1
  %650 = sext i8 %649 to i32
  switch i32 %650, label %678 [
    i32 100, label %651
    i32 99, label %660
    i32 109, label %669
  ]

651:                                              ; preds = %645
  %652 = load i32, i32* @MOD_DEFAULT, align 4
  %653 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %654 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %653, i32 0, i32 2
  %655 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %654, i32 0, i32 5
  store i32 %652, i32* %655, align 4
  %656 = load i32, i32* @FLAG_COMMIT, align 4
  %657 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %658 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %657, i32 0, i32 1
  %659 = call i32 @set_bit(i32 %656, i32* %658)
  br label %685

660:                                              ; preds = %645
  %661 = load i32, i32* @MOD_CCK, align 4
  %662 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %663 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %662, i32 0, i32 2
  %664 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %663, i32 0, i32 5
  store i32 %661, i32* %664, align 4
  %665 = load i32, i32* @FLAG_COMMIT, align 4
  %666 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %667 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %666, i32 0, i32 1
  %668 = call i32 @set_bit(i32 %665, i32* %667)
  br label %685

669:                                              ; preds = %645
  %670 = load i32, i32* @MOD_MOK, align 4
  %671 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %672 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %671, i32 0, i32 2
  %673 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %672, i32 0, i32 5
  store i32 %670, i32* %673, align 4
  %674 = load i32, i32* @FLAG_COMMIT, align 4
  %675 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %676 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %675, i32 0, i32 1
  %677 = call i32 @set_bit(i32 %674, i32* %676)
  br label %685

678:                                              ; preds = %645
  %679 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %680 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %679, i32 0, i32 0
  %681 = load %struct.TYPE_4__*, %struct.TYPE_4__** %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 4
  %684 = call i32 (i32, i8*, ...) @airo_print_warn(i32 %683, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %685

685:                                              ; preds = %678, %669, %660, %651
  br label %740

686:                                              ; preds = %641
  %687 = load i8*, i8** %9, align 8
  %688 = call i32 @strncmp(i8* %687, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 10)
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %731, label %690

690:                                              ; preds = %686
  %691 = load i8*, i8** %9, align 8
  %692 = getelementptr inbounds i8, i8* %691, i64 10
  store i8* %692, i8** %9, align 8
  %693 = load i8*, i8** %9, align 8
  %694 = load i8, i8* %693, align 1
  %695 = sext i8 %694 to i32
  switch i32 %695, label %723 [
    i32 97, label %696
    i32 108, label %705
    i32 115, label %714
  ]

696:                                              ; preds = %690
  %697 = load i32, i32* @PREAMBLE_AUTO, align 4
  %698 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %699 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %698, i32 0, i32 2
  %700 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %699, i32 0, i32 4
  store i32 %697, i32* %700, align 8
  %701 = load i32, i32* @FLAG_COMMIT, align 4
  %702 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %703 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %702, i32 0, i32 1
  %704 = call i32 @set_bit(i32 %701, i32* %703)
  br label %730

705:                                              ; preds = %690
  %706 = load i32, i32* @PREAMBLE_LONG, align 4
  %707 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %708 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %707, i32 0, i32 2
  %709 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %708, i32 0, i32 4
  store i32 %706, i32* %709, align 8
  %710 = load i32, i32* @FLAG_COMMIT, align 4
  %711 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %712 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %711, i32 0, i32 1
  %713 = call i32 @set_bit(i32 %710, i32* %712)
  br label %730

714:                                              ; preds = %690
  %715 = load i32, i32* @PREAMBLE_SHORT, align 4
  %716 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %717 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %716, i32 0, i32 2
  %718 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %717, i32 0, i32 4
  store i32 %715, i32* %718, align 8
  %719 = load i32, i32* @FLAG_COMMIT, align 4
  %720 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %721 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %720, i32 0, i32 1
  %722 = call i32 @set_bit(i32 %719, i32* %721)
  br label %730

723:                                              ; preds = %690
  %724 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %725 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %724, i32 0, i32 0
  %726 = load %struct.TYPE_4__*, %struct.TYPE_4__** %725, align 8
  %727 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %726, i32 0, i32 0
  %728 = load i32, i32* %727, align 4
  %729 = call i32 (i32, i8*, ...) @airo_print_warn(i32 %728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  br label %730

730:                                              ; preds = %723, %714, %705, %696
  br label %739

731:                                              ; preds = %686
  %732 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %733 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %732, i32 0, i32 0
  %734 = load %struct.TYPE_4__*, %struct.TYPE_4__** %733, align 8
  %735 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %734, i32 0, i32 0
  %736 = load i32, i32* %735, align 4
  %737 = load i8*, i8** %9, align 8
  %738 = call i32 (i32, i8*, ...) @airo_print_warn(i32 %736, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* %737)
  br label %739

739:                                              ; preds = %731, %730
  br label %740

740:                                              ; preds = %739, %685
  br label %741

741:                                              ; preds = %740, %628
  br label %742

742:                                              ; preds = %741, %597
  br label %743

743:                                              ; preds = %742, %569
  br label %744

744:                                              ; preds = %743, %539
  br label %745

745:                                              ; preds = %744, %514
  br label %746

746:                                              ; preds = %745, %489
  br label %747

747:                                              ; preds = %746, %456
  br label %748

748:                                              ; preds = %747, %425
  br label %749

749:                                              ; preds = %748, %400
  br label %750

750:                                              ; preds = %749, %373
  br label %751

751:                                              ; preds = %750, %349
  br label %752

752:                                              ; preds = %751, %321
  br label %753

753:                                              ; preds = %752, %293
  br label %754

754:                                              ; preds = %753, %246
  br label %755

755:                                              ; preds = %754, %204
  br label %756

756:                                              ; preds = %755, %179
  br label %757

757:                                              ; preds = %771, %756
  %758 = load i8*, i8** %9, align 8
  %759 = getelementptr inbounds i8, i8* %758, i64 0
  %760 = load i8, i8* %759, align 1
  %761 = sext i8 %760 to i32
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %763, label %769

763:                                              ; preds = %757
  %764 = load i8*, i8** %9, align 8
  %765 = getelementptr inbounds i8, i8* %764, i64 0
  %766 = load i8, i8* %765, align 1
  %767 = sext i8 %766 to i32
  %768 = icmp ne i32 %767, 10
  br label %769

769:                                              ; preds = %763, %757
  %770 = phi i1 [ false, %757 ], [ %768, %763 ]
  br i1 %770, label %771, label %774

771:                                              ; preds = %769
  %772 = load i8*, i8** %9, align 8
  %773 = getelementptr inbounds i8, i8* %772, i32 1
  store i8* %773, i8** %9, align 8
  br label %757

774:                                              ; preds = %769
  %775 = load i8*, i8** %9, align 8
  %776 = getelementptr inbounds i8, i8* %775, i64 0
  %777 = load i8, i8* %776, align 1
  %778 = icmp ne i8 %777, 0
  br i1 %778, label %779, label %782

779:                                              ; preds = %774
  %780 = load i8*, i8** %9, align 8
  %781 = getelementptr inbounds i8, i8* %780, i32 1
  store i8* %781, i8** %9, align 8
  br label %782

782:                                              ; preds = %779, %774
  br label %56

783:                                              ; preds = %56
  %784 = load %struct.net_device*, %struct.net_device** %7, align 8
  %785 = call i32 @airo_config_commit(%struct.net_device* %784, i32* null, i32* null, i32* null)
  br label %786

786:                                              ; preds = %783, %45
  ret void
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @readConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @sniffing_mode(%struct.airo_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get_dec_u16(i8*, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @airo_print_warn(i32, i8*, ...) #1

declare dso_local i32 @airo_config_commit(%struct.net_device*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
