; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.sdio_func = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.mmc_host* }
%struct.mmc_host = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sdio_device_id = type { i32 }
%struct.if_sdio_card = type { i32, i32, %struct.if_sdio_card*, %struct.if_sdio_card*, i32, i64, %struct.lbs_private*, i64, i64, i32, i32, i32, %struct.sdio_func* }
%struct.lbs_private = type { i32, i32, %struct.if_sdio_packet* }
%struct.if_sdio_packet = type { i32, i32, %struct.if_sdio_packet*, %struct.if_sdio_packet*, i32, i64, %struct.lbs_private*, i64, i64, i32, i32, i32, %struct.sdio_func* }
%struct.cmd_header = type { i32 }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"802.11 SDIO ID: %x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ID: %x\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"IBIS Wireless SDIO Card\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to identify card model\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IF_SDIO_SCRATCH_OLD = common dso_local global i32 0, align 4
@IF_SDIO_SCRATCH = common dso_local global i32 0, align 4
@IF_SDIO_FW_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"libertas_sdio\00", align 1
@if_sdio_host_to_card_worker = common dso_local global i32 0, align 4
@if_sdio_models = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"unkown card model 0x%x\0A\00", align 1
@lbs_helper_name = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"overriding helper firmware: %s\0A\00", align 1
@lbs_fw_name = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"overriding firmware: %s\0A\00", align 1
@if_sdio_interrupt = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i64 0, align 8
@MMC_QUIRK_LENIENT_FN0 = common dso_local global i32 0, align 4
@SDIO_CCCR_IF = common dso_local global i32 0, align 4
@SDIO_BUS_ECSI = common dso_local global i32 0, align 4
@IF_SDIO_IOPORT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [73 x i8] c"class = 0x%X, vendor = 0x%X, device = 0x%X, model = 0x%X, ioport = 0x%X\0A\00", align 1
@if_sdio_host_to_card = common dso_local global i32 0, align 4
@IF_SDIO_H_INT_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"send function INIT command\0A\00", align 1
@CMD_FUNC_INIT = common dso_local global i32 0, align 4
@lbs_cmd_copyback = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"CMD_FUNC_INIT cmd failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @if_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.if_sdio_card*, align 8
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.if_sdio_packet*, align 8
  %12 = alloca %struct.mmc_host*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cmd_header, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %15 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load %struct.mmc_host*, %struct.mmc_host** %18, align 8
  store %struct.mmc_host* %19, %struct.mmc_host** %12, align 8
  %20 = load i32, i32* @LBS_DEB_SDIO, align 4
  %21 = call i32 @lbs_deb_enter(i32 %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %70, %2
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %25 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %24, i32 0, i32 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %22
  %31 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %32 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sscanf(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %10)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %73

43:                                               ; preds = %30
  %44 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %45 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %44, i32 0, i32 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sscanf(i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %73

56:                                               ; preds = %43
  %57 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %58 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strcmp(i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  store i32 130, i32* %10, align 4
  br label %73

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %22

73:                                               ; preds = %68, %55, %42, %22
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %76 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %75, i32 0, i32 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = call i32 (i8*, ...) @lbs_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %446

85:                                               ; preds = %73
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.if_sdio_packet* @kzalloc(i32 88, i32 %86)
  %88 = bitcast %struct.if_sdio_packet* %87 to %struct.if_sdio_card*
  store %struct.if_sdio_card* %88, %struct.if_sdio_card** %6, align 8
  %89 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %90 = icmp ne %struct.if_sdio_card* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %446

94:                                               ; preds = %85
  %95 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %96 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %97 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %96, i32 0, i32 12
  store %struct.sdio_func* %95, %struct.sdio_func** %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %100 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %102 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %113 [
    i32 130, label %104
    i32 129, label %108
    i32 128, label %112
  ]

104:                                              ; preds = %94
  %105 = load i32, i32* @IF_SDIO_SCRATCH_OLD, align 4
  %106 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %107 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %106, i32 0, i32 11
  store i32 %105, i32* %107, align 8
  br label %117

108:                                              ; preds = %94
  %109 = load i32, i32* @IF_SDIO_SCRATCH, align 4
  %110 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %111 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 8
  br label %117

112:                                              ; preds = %94
  br label %113

113:                                              ; preds = %94, %112
  %114 = load i32, i32* @IF_SDIO_FW_STATUS, align 4
  %115 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %116 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %115, i32 0, i32 11
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %113, %108, %104
  %118 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %119 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %118, i32 0, i32 10
  %120 = call i32 @spin_lock_init(i32* %119)
  %121 = call i32 @create_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %122 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %123 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %125 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %124, i32 0, i32 9
  %126 = load i32, i32* @if_sdio_host_to_card_worker, align 4
  %127 = call i32 @INIT_WORK(i32* %125, i32 %126)
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %146, %117
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @if_sdio_models, align 8
  %131 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %130)
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %128
  %134 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %135 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @if_sdio_models, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %136, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %149

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %128

149:                                              ; preds = %144, %128
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** @if_sdio_models, align 8
  %152 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %151)
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %156 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i8*, ...) @lbs_pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @ENODEV, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %8, align 4
  br label %418

161:                                              ; preds = %149
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** @if_sdio_models, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %169 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %168, i32 0, i32 8
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** @if_sdio_models, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %177 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %176, i32 0, i32 7
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* @lbs_helper_name, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %161
  %181 = load i64, i64* @lbs_helper_name, align 8
  %182 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %181)
  %183 = load i64, i64* @lbs_helper_name, align 8
  %184 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %185 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %184, i32 0, i32 8
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %180, %161
  %187 = load i64, i64* @lbs_fw_name, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i64, i64* @lbs_fw_name, align 8
  %191 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %190)
  %192 = load i64, i64* @lbs_fw_name, align 8
  %193 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %194 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %193, i32 0, i32 7
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %189, %186
  %196 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %197 = call i32 @sdio_claim_host(%struct.sdio_func* %196)
  %198 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %199 = call i32 @sdio_enable_func(%struct.sdio_func* %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %415

203:                                              ; preds = %195
  %204 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %205 = load i32, i32* @if_sdio_interrupt, align 4
  %206 = call i32 @sdio_claim_irq(%struct.sdio_func* %204, i32 %205)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  br label %412

210:                                              ; preds = %203
  %211 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %212 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 129
  br i1 %214, label %215, label %255

215:                                              ; preds = %210
  %216 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  %217 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %255

222:                                              ; preds = %215
  %223 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  %224 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @MMC_BUS_WIDTH_1, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %255

229:                                              ; preds = %222
  %230 = load i32, i32* @MMC_QUIRK_LENIENT_FN0, align 4
  %231 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %232 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %231, i32 0, i32 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %230
  store i32 %236, i32* %234, align 4
  %237 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %238 = load i32, i32* @SDIO_CCCR_IF, align 4
  %239 = call i32 @sdio_f0_readb(%struct.sdio_func* %237, i32 %238, i32* %8)
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %229
  br label %409

243:                                              ; preds = %229
  %244 = load i32, i32* @SDIO_BUS_ECSI, align 4
  %245 = load i32, i32* %13, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %13, align 4
  %247 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* @SDIO_CCCR_IF, align 4
  %250 = call i32 @sdio_f0_writeb(%struct.sdio_func* %247, i32 %248, i32 %249, i32* %8)
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %243
  br label %409

254:                                              ; preds = %243
  br label %255

255:                                              ; preds = %254, %222, %215, %210
  %256 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %257 = load i64, i64* @IF_SDIO_IOPORT, align 8
  %258 = call i32 @sdio_readb(%struct.sdio_func* %256, i64 %257, i32* %8)
  %259 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %260 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %255
  br label %409

264:                                              ; preds = %255
  %265 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %266 = load i64, i64* @IF_SDIO_IOPORT, align 8
  %267 = add nsw i64 %266, 1
  %268 = call i32 @sdio_readb(%struct.sdio_func* %265, i64 %267, i32* %8)
  %269 = shl i32 %268, 8
  %270 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %271 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %264
  br label %409

277:                                              ; preds = %264
  %278 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %279 = load i64, i64* @IF_SDIO_IOPORT, align 8
  %280 = add nsw i64 %279, 2
  %281 = call i32 @sdio_readb(%struct.sdio_func* %278, i64 %280, i32* %8)
  %282 = shl i32 %281, 16
  %283 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %284 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  %287 = load i32, i32* %8, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %277
  br label %409

290:                                              ; preds = %277
  %291 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %292 = call i32 @sdio_release_host(%struct.sdio_func* %291)
  %293 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %294 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %295 = bitcast %struct.if_sdio_card* %294 to %struct.if_sdio_packet*
  %296 = call i32 @sdio_set_drvdata(%struct.sdio_func* %293, %struct.if_sdio_packet* %295)
  %297 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %298 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %301 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %304 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %10, align 4
  %307 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %308 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0), i32 %299, i32 %302, i32 %305, i32 %306, i32 %309)
  %311 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %312 = bitcast %struct.if_sdio_card* %311 to %struct.if_sdio_packet*
  %313 = call i32 @if_sdio_prog_firmware(%struct.if_sdio_packet* %312)
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %290
  br label %406

317:                                              ; preds = %290
  %318 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %319 = bitcast %struct.if_sdio_card* %318 to %struct.if_sdio_packet*
  %320 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %321 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %320, i32 0, i32 0
  %322 = call %struct.lbs_private* @lbs_add_card(%struct.if_sdio_packet* %319, i32* %321)
  store %struct.lbs_private* %322, %struct.lbs_private** %7, align 8
  %323 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %324 = icmp ne %struct.lbs_private* %323, null
  br i1 %324, label %328, label %325

325:                                              ; preds = %317
  %326 = load i32, i32* @ENOMEM, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %8, align 4
  br label %406

328:                                              ; preds = %317
  %329 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %330 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %331 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %330, i32 0, i32 6
  store %struct.lbs_private* %329, %struct.lbs_private** %331, align 8
  %332 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %333 = bitcast %struct.if_sdio_card* %332 to %struct.if_sdio_packet*
  %334 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %335 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %334, i32 0, i32 2
  store %struct.if_sdio_packet* %333, %struct.if_sdio_packet** %335, align 8
  %336 = load i32, i32* @if_sdio_host_to_card, align 4
  %337 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %338 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 4
  %339 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %340 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %339, i32 0, i32 0
  store i32 1, i32* %340, align 8
  %341 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %342 = call i32 @sdio_claim_host(%struct.sdio_func* %341)
  %343 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %344 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = icmp ne i32 %345, 130
  br i1 %346, label %347, label %358

347:                                              ; preds = %328
  %348 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %349 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp ne i32 %350, 129
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %354 = bitcast %struct.if_sdio_card* %353 to %struct.if_sdio_packet*
  %355 = call i64 @if_sdio_read_rx_unit(%struct.if_sdio_packet* %354)
  %356 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %357 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %356, i32 0, i32 5
  store i64 %355, i64* %357, align 8
  br label %361

358:                                              ; preds = %347, %328
  %359 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %360 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %359, i32 0, i32 5
  store i64 0, i64* %360, align 8
  br label %361

361:                                              ; preds = %358, %352
  %362 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %363 = load i32, i32* @IF_SDIO_H_INT_MASK, align 4
  %364 = call i32 @sdio_writeb(%struct.sdio_func* %362, i32 15, i32 %363, i32* %8)
  %365 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %366 = call i32 @sdio_release_host(%struct.sdio_func* %365)
  %367 = load i32, i32* %8, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %361
  br label %406

370:                                              ; preds = %361
  %371 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %372 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = icmp eq i32 %373, 128
  br i1 %374, label %375, label %387

375:                                              ; preds = %370
  %376 = call i32 @memset(%struct.cmd_header* %14, i32 0, i32 4)
  %377 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %378 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %379 = load i32, i32* @CMD_FUNC_INIT, align 4
  %380 = load i32, i32* @lbs_cmd_copyback, align 4
  %381 = ptrtoint %struct.cmd_header* %14 to i64
  %382 = call i64 @__lbs_cmd(%struct.lbs_private* %378, i32 %379, %struct.cmd_header* %14, i32 4, i32 %380, i64 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %375
  %385 = call i32 @lbs_pr_alert(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %386

386:                                              ; preds = %384, %375
  br label %387

387:                                              ; preds = %386, %370
  %388 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %389 = call i32 @lbs_start_card(%struct.lbs_private* %388)
  store i32 %389, i32* %8, align 4
  %390 = load i32, i32* %8, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %387
  br label %399

393:                                              ; preds = %387
  br label %394

394:                                              ; preds = %442, %393
  %395 = load i32, i32* @LBS_DEB_SDIO, align 4
  %396 = load i32, i32* %8, align 4
  %397 = call i32 @lbs_deb_leave_args(i32 %395, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %396)
  %398 = load i32, i32* %8, align 4
  store i32 %398, i32* %3, align 4
  br label %446

399:                                              ; preds = %392
  %400 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %401 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @flush_workqueue(i32 %402)
  %404 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %405 = call i32 @lbs_remove_card(%struct.lbs_private* %404)
  br label %406

406:                                              ; preds = %399, %369, %325, %316
  %407 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %408 = call i32 @sdio_claim_host(%struct.sdio_func* %407)
  br label %409

409:                                              ; preds = %406, %289, %276, %263, %253, %242
  %410 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %411 = call i32 @sdio_release_irq(%struct.sdio_func* %410)
  br label %412

412:                                              ; preds = %409, %209
  %413 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %414 = call i32 @sdio_disable_func(%struct.sdio_func* %413)
  br label %415

415:                                              ; preds = %412, %202
  %416 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %417 = call i32 @sdio_release_host(%struct.sdio_func* %416)
  br label %418

418:                                              ; preds = %415, %154
  %419 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %420 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @destroy_workqueue(i32 %421)
  br label %423

423:                                              ; preds = %428, %418
  %424 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %425 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %424, i32 0, i32 3
  %426 = load %struct.if_sdio_card*, %struct.if_sdio_card** %425, align 8
  %427 = icmp ne %struct.if_sdio_card* %426, null
  br i1 %427, label %428, label %442

428:                                              ; preds = %423
  %429 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %430 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %429, i32 0, i32 3
  %431 = load %struct.if_sdio_card*, %struct.if_sdio_card** %430, align 8
  %432 = bitcast %struct.if_sdio_card* %431 to %struct.if_sdio_packet*
  store %struct.if_sdio_packet* %432, %struct.if_sdio_packet** %11, align 8
  %433 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %434 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %433, i32 0, i32 3
  %435 = load %struct.if_sdio_card*, %struct.if_sdio_card** %434, align 8
  %436 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %435, i32 0, i32 2
  %437 = load %struct.if_sdio_card*, %struct.if_sdio_card** %436, align 8
  %438 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %439 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %438, i32 0, i32 3
  store %struct.if_sdio_card* %437, %struct.if_sdio_card** %439, align 8
  %440 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %441 = call i32 @kfree(%struct.if_sdio_packet* %440)
  br label %423

442:                                              ; preds = %423
  %443 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %444 = bitcast %struct.if_sdio_card* %443 to %struct.if_sdio_packet*
  %445 = call i32 @kfree(%struct.if_sdio_packet* %444)
  br label %394

446:                                              ; preds = %394, %91, %81
  %447 = load i32, i32* %3, align 4
  ret i32 %447
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @lbs_pr_err(i8*, ...) #1

declare dso_local %struct.if_sdio_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @create_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @lbs_deb_sdio(i8*, ...) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_irq(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_f0_readb(%struct.sdio_func*, i32, i32*) #1

declare dso_local i32 @sdio_f0_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @sdio_readb(%struct.sdio_func*, i64, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.if_sdio_packet*) #1

declare dso_local i32 @if_sdio_prog_firmware(%struct.if_sdio_packet*) #1

declare dso_local %struct.lbs_private* @lbs_add_card(%struct.if_sdio_packet*, i32*) #1

declare dso_local i64 @if_sdio_read_rx_unit(%struct.if_sdio_packet*) #1

declare dso_local i32 @sdio_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.cmd_header*, i32, i32) #1

declare dso_local i64 @__lbs_cmd(%struct.lbs_private*, i32, %struct.cmd_header*, i32, i32, i64) #1

declare dso_local i32 @lbs_pr_alert(i8*) #1

declare dso_local i32 @lbs_start_card(%struct.lbs_private*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @lbs_remove_card(%struct.lbs_private*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.if_sdio_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
