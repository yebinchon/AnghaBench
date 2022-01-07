; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_startup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_startup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { i64, i64, i64*, i64, i8*, i64, i8*, i8*, i64, i32, i32, %struct.at76_card_config*, %struct.TYPE_2__*, %struct.at76_card_config, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.at76_card_config = type { i8*, i32, i32, i32, i64, i64, i8*, i32, i32, i32, i64, i32, i32, i8*, i8*, i64 }

@DBG_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"%s param: ssid %.*s (%s) mode %s ch %d wep %s key %d keylen %d\00", align 1
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"adhoc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"infra\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"%s param: preamble %s rts %d retry %d frag %d txrate %s auth_mode %d\00", align 1
@preambles = common dso_local global i32* null, align 8
@TX_RATE_1MBIT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"1MBit\00", align 1
@TX_RATE_2MBIT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"2MBit\00", align 1
@TX_RATE_5_5MBIT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"5.5MBit\00", align 1
@TX_RATE_11MBIT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"11MBit\00", align 1
@TX_RATE_AUTO = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"%s param: pm_mode %d pm_period %d auth_mode %s scan_times %d %d scan_mode %s\00", align 1
@WLAN_AUTH_OPEN = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"shared_secret\00", align 1
@SCAN_TYPE_ACTIVE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@WEP_SMALL_KEY_LEN = common dso_local global i64 0, align 8
@hw_rates = common dso_local global i32 0, align 4
@CMD_STARTUP = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [34 x i8] c"at76_set_card_command failed: %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_RADIO_ON = common dso_local global i32 0, align 4
@at76_debug = common dso_local global i32 0, align 4
@DBG_MIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at76_priv*)* @at76_startup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_startup_device(%struct.at76_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at76_priv*, align 8
  %4 = alloca %struct.at76_card_config*, align 8
  %5 = alloca i32, align 4
  store %struct.at76_priv* %0, %struct.at76_priv** %3, align 8
  %6 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %7 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %6, i32 0, i32 13
  store %struct.at76_card_config* %7, %struct.at76_card_config** %4, align 8
  %8 = load i32, i32* @DBG_PARAMS, align 4
  %9 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %10 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %9, i32 0, i32 12
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wiphy_name(i32 %13)
  %15 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %16 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %15, i32 0, i32 17
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %19 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %18, i32 0, i32 18
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %22 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %21, i32 0, i32 18
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %25 = call i32 @hex2str(i32 %23, i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %29 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IW_MODE_ADHOC, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %35 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %36 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %35, i32 0, i32 20
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %41 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %40, i32 0, i32 19
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %46 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %47 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %50 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %53 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, ...) @at76_dbg(i32 %8, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i8* %27, i8* %34, i8* %39, i8* %45, i64 %48, i64 %56)
  %58 = load i32, i32* @DBG_PARAMS, align 4
  %59 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %60 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %59, i32 0, i32 12
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wiphy_name(i32 %63)
  %65 = load i32*, i32** @preambles, align 8
  %66 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %67 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %72 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %75 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %78 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %83 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TX_RATE_1MBIT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %1
  br label %123

88:                                               ; preds = %1
  %89 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %90 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TX_RATE_2MBIT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %121

95:                                               ; preds = %88
  %96 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %97 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TX_RATE_5_5MBIT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %119

102:                                              ; preds = %95
  %103 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %104 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TX_RATE_11MBIT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %117

109:                                              ; preds = %102
  %110 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %111 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TX_RATE_AUTO, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)
  br label %117

117:                                              ; preds = %109, %108
  %118 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %108 ], [ %116, %109 ]
  br label %119

119:                                              ; preds = %117, %101
  %120 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %101 ], [ %118, %117 ]
  br label %121

121:                                              ; preds = %119, %94
  %122 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %94 ], [ %120, %119 ]
  br label %123

123:                                              ; preds = %121, %87
  %124 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %87 ], [ %122, %121 ]
  %125 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %126 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %125, i32 0, i32 6
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, ...) @at76_dbg(i32 %58, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %70, i32 %73, i8* %76, i8* %81, i8* %124, i8* %127)
  %129 = load i32, i32* @DBG_PARAMS, align 4
  %130 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %131 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %130, i32 0, i32 12
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @wiphy_name(i32 %134)
  %136 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %137 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %136, i32 0, i32 23
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %140 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %139, i32 0, i32 22
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %143 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %142, i32 0, i32 6
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** @WLAN_AUTH_OPEN, align 8
  %146 = icmp eq i8* %144, %145
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0)
  %149 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %150 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %149, i32 0, i32 21
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %155 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %154, i32 0, i32 7
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %158 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SCAN_TYPE_ACTIVE, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)
  %164 = call i32 (i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, ...) @at76_dbg(i32 %129, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i64 0, i64 0), i32 %135, i32 %138, i32 %141, i8* %148, i8* %153, i8* %156, i8* %163)
  %165 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %166 = call i32 @memset(%struct.at76_card_config* %165, i32 0, i32 104)
  %167 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %168 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %167, i32 0, i32 15
  store i64 0, i64* %168, align 8
  %169 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %170 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %169, i32 0, i32 4
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %173 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %175 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %174, i32 0, i32 19
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %123
  %179 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %180 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %179, i32 0, i32 2
  %181 = load i64*, i64** %180, align 8
  %182 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %183 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i64, i64* %181, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @WEP_SMALL_KEY_LEN, align 8
  %188 = icmp sgt i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %178
  %190 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %191 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %190, i32 0, i32 1
  store i32 2, i32* %191, align 8
  br label %195

192:                                              ; preds = %178
  %193 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %194 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %193, i32 0, i32 1
  store i32 1, i32* %194, align 8
  br label %195

195:                                              ; preds = %192, %189
  %196 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %197 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %196, i32 0, i32 2
  store i32 1, i32* %197, align 4
  br label %203

198:                                              ; preds = %123
  %199 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %200 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %199, i32 0, i32 2
  store i32 0, i32* %200, align 4
  %201 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %202 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %201, i32 0, i32 1
  store i32 0, i32* %202, align 8
  br label %203

203:                                              ; preds = %198, %195
  %204 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %205 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 8
  %207 = call i8* @cpu_to_le16(i32 %206)
  %208 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %209 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %208, i32 0, i32 14
  store i8* %207, i8** %209, align 8
  %210 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %211 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %210, i32 0, i32 10
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @cpu_to_le16(i32 %212)
  %214 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %215 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %214, i32 0, i32 13
  store i8* %213, i8** %215, align 8
  %216 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %217 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %216, i32 0, i32 12
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @hw_rates, align 4
  %220 = call i32 @memcpy(i32 %218, i32 %219, i32 4)
  %221 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %222 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @TX_RATE_AUTO, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 1, i32 0
  %228 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %229 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 8
  %230 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %231 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %230, i32 0, i32 20
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %234 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %233, i32 0, i32 11
  store i32 %232, i32* %234, align 8
  %235 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %236 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %235, i32 0, i32 19
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %239 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %238, i32 0, i32 10
  store i64 %237, i64* %239, align 8
  %240 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %241 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %244 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %243, i32 0, i32 18
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %247 = call i32 @memcpy(i32 %242, i32 %245, i32 %246)
  %248 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %249 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %248, i32 0, i32 17
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %252 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %251, i32 0, i32 8
  store i32 %250, i32* %252, align 4
  %253 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %254 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %257 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %256, i32 0, i32 4
  store i64 %255, i64* %257, align 8
  %258 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %259 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %262 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %261, i32 0, i32 16
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @memcpy(i32 %260, i32 %263, i32 4)
  %265 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %266 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %269 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %268, i32 0, i32 5
  store i64 %267, i64* %269, align 8
  %270 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %271 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %270, i32 0, i32 15
  %272 = load i32, i32* %271, align 4
  %273 = call i8* @cpu_to_le16(i32 %272)
  %274 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %275 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %274, i32 0, i32 6
  store i8* %273, i8** %275, align 8
  %276 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %277 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %276, i32 0, i32 14
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @CMD_STARTUP, align 4
  %280 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %281 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %280, i32 0, i32 13
  %282 = call i32 @at76_set_card_command(i32 %278, i32 %279, %struct.at76_card_config* %281, i32 104)
  store i32 %282, i32* %5, align 4
  %283 = load i32, i32* %5, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %203
  %286 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %287 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %286, i32 0, i32 12
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %5, align 4
  %292 = call i32 @wiphy_err(i32 %290, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %291)
  %293 = load i32, i32* %5, align 4
  store i32 %293, i32* %2, align 4
  br label %382

294:                                              ; preds = %203
  %295 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %296 = load i32, i32* @CMD_STARTUP, align 4
  %297 = call i32 @at76_wait_completion(%struct.at76_priv* %295, i32 %296)
  %298 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %299 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %298, i32 0, i32 11
  %300 = load %struct.at76_card_config*, %struct.at76_card_config** %299, align 8
  %301 = load i32, i32* @ETH_ALEN, align 4
  %302 = call i32 @memset(%struct.at76_card_config* %300, i32 0, i32 %301)
  %303 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %304 = call i32 @at76_set_radio(%struct.at76_priv* %303, i32 1)
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %310

306:                                              ; preds = %294
  %307 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %308 = load i32, i32* @CMD_RADIO_ON, align 4
  %309 = call i32 @at76_wait_completion(%struct.at76_priv* %307, i32 %308)
  br label %310

310:                                              ; preds = %306, %294
  %311 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %312 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %313 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @at76_set_preamble(%struct.at76_priv* %311, i64 %314)
  store i32 %315, i32* %5, align 4
  %316 = load i32, i32* %5, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %310
  %319 = load i32, i32* %5, align 4
  store i32 %319, i32* %2, align 4
  br label %382

320:                                              ; preds = %310
  %321 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %322 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %323 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %322, i32 0, i32 10
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @at76_set_frag(%struct.at76_priv* %321, i32 %324)
  store i32 %325, i32* %5, align 4
  %326 = load i32, i32* %5, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %320
  %329 = load i32, i32* %5, align 4
  store i32 %329, i32* %2, align 4
  br label %382

330:                                              ; preds = %320
  %331 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %332 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %333 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %332, i32 0, i32 9
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @at76_set_rts(%struct.at76_priv* %331, i32 %334)
  store i32 %335, i32* %5, align 4
  %336 = load i32, i32* %5, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %330
  %339 = load i32, i32* %5, align 4
  store i32 %339, i32* %2, align 4
  br label %382

340:                                              ; preds = %330
  %341 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %342 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %343 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %342, i32 0, i32 5
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @TX_RATE_AUTO, align 8
  %346 = icmp eq i64 %344, %345
  %347 = zext i1 %346 to i64
  %348 = select i1 %346, i32 1, i32 0
  %349 = call i32 @at76_set_autorate_fallback(%struct.at76_priv* %341, i32 %348)
  store i32 %349, i32* %5, align 4
  %350 = load i32, i32* %5, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %340
  %353 = load i32, i32* %5, align 4
  store i32 %353, i32* %2, align 4
  br label %382

354:                                              ; preds = %340
  %355 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %356 = call i32 @at76_set_pm_mode(%struct.at76_priv* %355)
  store i32 %356, i32* %5, align 4
  %357 = load i32, i32* %5, align 4
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %354
  %360 = load i32, i32* %5, align 4
  store i32 %360, i32* %2, align 4
  br label %382

361:                                              ; preds = %354
  %362 = load i32, i32* @at76_debug, align 4
  %363 = load i32, i32* @DBG_MIB, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %381

366:                                              ; preds = %361
  %367 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %368 = call i32 @at76_dump_mib_mac(%struct.at76_priv* %367)
  %369 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %370 = call i32 @at76_dump_mib_mac_addr(%struct.at76_priv* %369)
  %371 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %372 = call i32 @at76_dump_mib_mac_mgmt(%struct.at76_priv* %371)
  %373 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %374 = call i32 @at76_dump_mib_mac_wep(%struct.at76_priv* %373)
  %375 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %376 = call i32 @at76_dump_mib_mdomain(%struct.at76_priv* %375)
  %377 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %378 = call i32 @at76_dump_mib_phy(%struct.at76_priv* %377)
  %379 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %380 = call i32 @at76_dump_mib_local(%struct.at76_priv* %379)
  br label %381

381:                                              ; preds = %366, %361
  store i32 0, i32* %2, align 4
  br label %382

382:                                              ; preds = %381, %359, %352, %338, %328, %318, %285
  %383 = load i32, i32* %2, align 4
  ret i32 %383
}

declare dso_local i32 @at76_dbg(i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @hex2str(i32, i32) #1

declare dso_local i32 @memset(%struct.at76_card_config*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @at76_set_card_command(i32, i32, %struct.at76_card_config*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @at76_wait_completion(%struct.at76_priv*, i32) #1

declare dso_local i32 @at76_set_radio(%struct.at76_priv*, i32) #1

declare dso_local i32 @at76_set_preamble(%struct.at76_priv*, i64) #1

declare dso_local i32 @at76_set_frag(%struct.at76_priv*, i32) #1

declare dso_local i32 @at76_set_rts(%struct.at76_priv*, i32) #1

declare dso_local i32 @at76_set_autorate_fallback(%struct.at76_priv*, i32) #1

declare dso_local i32 @at76_set_pm_mode(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mac(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mac_addr(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mac_mgmt(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mac_wep(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mdomain(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_phy(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_local(%struct.at76_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
