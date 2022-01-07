; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_20__, i32, %struct.TYPE_21__, %struct.TYPE_22__, %struct.if_cs_card* }
%struct.TYPE_20__ = type { i32, i32, i32*, i32 }
%struct.TYPE_21__ = type { i64, i64, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.if_cs_card = type { i32, i32, %struct.lbs_private*, %struct.pcmcia_device* }
%struct.lbs_private = type { i32, i32, %struct.if_cs_card* }
%struct.TYPE_16__ = type { i32, i32, i64, i32*, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_14__, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@LBS_DEB_CS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"error in kzalloc\0A\00", align 1
@IRQ_TYPE_DYNAMIC_SHARING = common dso_local global i32 0, align 4
@IRQ_INFO2_VALID = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error in pcmcia_get_first_tuple etc\0A\00", align 1
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"wrong CIS (check number of IO windows)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"error in pcmcia_request_io\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"error in pcmcia_request_irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"error in ioport_map\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"error in pcmcia_request_configuration\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"irq %d, io 0x%04x-0x%04x\0A\00", align 1
@IF_CS_PRODUCT_ID = common dso_local global i32 0, align 4
@IF_CS_CF8305_B1_REV = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"old chips like 8305 rev B3 aren't supported\0A\00", align 1
@IF_CS_CF8381_B3_REV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"old chips like 8381 rev B3 aren't supported\0A\00", align 1
@IF_CS_CF8385_B1_REV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"old chips like 8385 rev B1 aren't supported\0A\00", align 1
@if_cs_host_to_card = common dso_local global i32 0, align 4
@if_cs_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"error in request_irq\0A\00", align 1
@IF_CS_CARD_INT_CAUSE = common dso_local global i32 0, align 4
@IF_CS_BIT_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"could not activate card\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @if_cs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca %struct.if_cs_card*, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca [64 x i32], align 16
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %9, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %10, align 8
  %17 = load i32, i32* @LBS_DEB_CS, align 4
  %18 = call i32 @lbs_deb_enter(i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.if_cs_card* @kzalloc(i32 24, i32 %19)
  store %struct.if_cs_card* %20, %struct.if_cs_card** %6, align 8
  %21 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %22 = icmp ne %struct.if_cs_card* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %316

25:                                               ; preds = %1
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %27 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %28 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %27, i32 0, i32 3
  store %struct.pcmcia_device* %26, %struct.pcmcia_device** %28, align 8
  %29 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 4
  store %struct.if_cs_card* %29, %struct.if_cs_card** %31, align 8
  %32 = load i32, i32* @IRQ_TYPE_DYNAMIC_SHARING, align 4
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @IRQ_INFO2_VALID, align 4
  %40 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %46 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 3
  store i32* %53, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store i32 256, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @CISTPL_CFTABLE_ENTRY, align 4
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %60 = call i32 @pcmcia_get_first_tuple(%struct.pcmcia_device* %59, %struct.TYPE_16__* %7)
  store i32 %60, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %25
  %63 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %64 = call i32 @pcmcia_get_tuple_data(%struct.pcmcia_device* %63, %struct.TYPE_16__* %7)
  store i32 %64, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = call i32 @pcmcia_parse_tuple(%struct.TYPE_16__* %7, %struct.TYPE_19__* %8)
  store i32 %67, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %62, %25
  %70 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %313

71:                                               ; preds = %66
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %76 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %71
  %84 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %86 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %71
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %313

100:                                              ; preds = %90
  %101 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %102 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %103 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %112 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %121 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %124 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %125 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %124, i32 0, i32 2
  %126 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %123, %struct.TYPE_21__* %125)
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* %3, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %100
  %130 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %313

131:                                              ; preds = %100
  %132 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %133 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %131
  %140 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %141 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %142 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %141, i32 0, i32 0
  %143 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %140, %struct.TYPE_20__* %142)
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* %3, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %313

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %131
  %150 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %151 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %155 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @ioport_map(i64 %153, i64 %157)
  %159 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %160 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %162 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %149
  %166 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %313

169:                                              ; preds = %149
  %170 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %171 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %172 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %171, i32 0, i32 3
  %173 = call i32 @pcmcia_request_configuration(%struct.pcmcia_device* %170, %struct.TYPE_22__* %172)
  store i32 %173, i32* %3, align 4
  %174 = load i32, i32* %3, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %308

178:                                              ; preds = %169
  %179 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %180 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %184 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %188 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %192 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %190, %194
  %196 = sub nsw i64 %195, 1
  %197 = call i32 @lbs_deb_cs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %182, i64 %186, i64 %196)
  %198 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %199 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %198, i32 0, i32 0
  store i32 0, i32* %199, align 8
  %200 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %201 = load i32, i32* @IF_CS_PRODUCT_ID, align 4
  %202 = call i32 @if_cs_read8(%struct.if_cs_card* %200, i32 %201)
  store i32 %202, i32* %4, align 4
  %203 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %204 = call i64 @if_cs_hw_is_cf8305(%struct.pcmcia_device* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %178
  %207 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %208 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @IF_CS_CF8305_B1_REV, align 4
  %211 = icmp ult i32 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %214 = load i32, i32* @ENODEV, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %3, align 4
  br label %308

216:                                              ; preds = %206
  br label %217

217:                                              ; preds = %216, %178
  %218 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %219 = call i64 @if_cs_hw_is_cf8381(%struct.pcmcia_device* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %217
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @IF_CS_CF8381_B3_REV, align 4
  %224 = icmp ult i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %227 = load i32, i32* @ENODEV, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %3, align 4
  br label %308

229:                                              ; preds = %221, %217
  %230 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %231 = call i64 @if_cs_hw_is_cf8385(%struct.pcmcia_device* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @IF_CS_CF8385_B1_REV, align 4
  %236 = icmp ult i32 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %239 = load i32, i32* @ENODEV, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %3, align 4
  br label %308

241:                                              ; preds = %233, %229
  %242 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %243 = call i32 @if_cs_prog_helper(%struct.if_cs_card* %242)
  store i32 %243, i32* %3, align 4
  %244 = load i32, i32* %3, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %248 = call i64 @if_cs_hw_is_cf8305(%struct.pcmcia_device* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %252 = call i32 @if_cs_prog_real(%struct.if_cs_card* %251)
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %250, %246, %241
  %254 = load i32, i32* %3, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  br label %308

257:                                              ; preds = %253
  %258 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %259 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %260 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %259, i32 0, i32 1
  %261 = call %struct.lbs_private* @lbs_add_card(%struct.if_cs_card* %258, i32* %260)
  store %struct.lbs_private* %261, %struct.lbs_private** %5, align 8
  %262 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %263 = icmp ne %struct.lbs_private* %262, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %257
  %265 = load i32, i32* @ENOMEM, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %3, align 4
  br label %308

267:                                              ; preds = %257
  %268 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %269 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %270 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %269, i32 0, i32 2
  store %struct.lbs_private* %268, %struct.lbs_private** %270, align 8
  %271 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %272 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %273 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %272, i32 0, i32 2
  store %struct.if_cs_card* %271, %struct.if_cs_card** %273, align 8
  %274 = load i32, i32* @if_cs_host_to_card, align 4
  %275 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %276 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 4
  %277 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %278 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %277, i32 0, i32 0
  store i32 1, i32* %278, align 8
  %279 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %280 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @if_cs_interrupt, align 4
  %284 = load i32, i32* @IRQF_SHARED, align 4
  %285 = load i32, i32* @DRV_NAME, align 4
  %286 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %287 = call i32 @request_irq(i32 %282, i32 %283, i32 %284, i32 %285, %struct.if_cs_card* %286)
  store i32 %287, i32* %3, align 4
  %288 = load i32, i32* %3, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %267
  %291 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %305

292:                                              ; preds = %267
  %293 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %294 = load i32, i32* @IF_CS_CARD_INT_CAUSE, align 4
  %295 = load i32, i32* @IF_CS_BIT_MASK, align 4
  %296 = call i32 @if_cs_write16(%struct.if_cs_card* %293, i32 %294, i32 %295)
  %297 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %298 = call i32 @if_cs_enable_ints(%struct.if_cs_card* %297)
  %299 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %300 = call i64 @lbs_start_card(%struct.lbs_private* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %292
  %303 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %305

304:                                              ; preds = %292
  store i32 0, i32* %3, align 4
  br label %316

305:                                              ; preds = %302, %290
  %306 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %307 = call i32 @lbs_remove_card(%struct.lbs_private* %306)
  br label %308

308:                                              ; preds = %305, %264, %256, %237, %225, %212, %176
  %309 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %310 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @ioport_unmap(i32 %311)
  br label %313

313:                                              ; preds = %308, %165, %146, %129, %96, %69
  %314 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %315 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %314)
  br label %316

316:                                              ; preds = %313, %304, %23
  %317 = load i32, i32* @LBS_DEB_CS, align 4
  %318 = load i32, i32* %3, align 4
  %319 = call i32 @lbs_deb_leave_args(i32 %317, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %318)
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.if_cs_card* @kzalloc(i32, i32) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @pcmcia_get_first_tuple(%struct.pcmcia_device*, %struct.TYPE_16__*) #1

declare dso_local i32 @pcmcia_get_tuple_data(%struct.pcmcia_device*, %struct.TYPE_16__*) #1

declare dso_local i32 @pcmcia_parse_tuple(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*, %struct.TYPE_21__*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, %struct.TYPE_20__*) #1

declare dso_local i32 @ioport_map(i64, i64) #1

declare dso_local i32 @pcmcia_request_configuration(%struct.pcmcia_device*, %struct.TYPE_22__*) #1

declare dso_local i32 @lbs_deb_cs(i8*, i32, i64, i64) #1

declare dso_local i32 @if_cs_read8(%struct.if_cs_card*, i32) #1

declare dso_local i64 @if_cs_hw_is_cf8305(%struct.pcmcia_device*) #1

declare dso_local i64 @if_cs_hw_is_cf8381(%struct.pcmcia_device*) #1

declare dso_local i64 @if_cs_hw_is_cf8385(%struct.pcmcia_device*) #1

declare dso_local i32 @if_cs_prog_helper(%struct.if_cs_card*) #1

declare dso_local i32 @if_cs_prog_real(%struct.if_cs_card*) #1

declare dso_local %struct.lbs_private* @lbs_add_card(%struct.if_cs_card*, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.if_cs_card*) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_enable_ints(%struct.if_cs_card*) #1

declare dso_local i64 @lbs_start_card(%struct.lbs_private*) #1

declare dso_local i32 @lbs_remove_card(%struct.lbs_private*) #1

declare dso_local i32 @ioport_unmap(i32) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
