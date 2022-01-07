; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_add_modem_b23.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_add_modem_b23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32* }

@add_modem_b23.lli = internal global <{ i32, i32, [10 x i32] }> <{ i32 1, i32 1, [10 x i32] zeroinitializer }>, align 16
@add_modem_b23.llc = internal global [3 x i32] [i32 2, i32 0, i32 0], align 4
@add_modem_b23.dlc = internal global [16 x i32] zeroinitializer, align 16
@B1_MODEM_ALL_NEGOTIATE = common dso_local global i32 0, align 4
@B2_MODEM_EC_COMPRESSION = common dso_local global i32 0, align 4
@B2_TRANSPARENT = common dso_local global i32 0, align 4
@_B_STACK_NOT_SUPPORTED = common dso_local global i32 0, align 4
@B3_MODEM = common dso_local global i32 0, align 4
@B3_TRANSPARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@_WRONG_MESSAGE_FORMAT = common dso_local global i32 0, align 4
@MANUFACTURER_FEATURE_XONOFF_FLOW_CONTROL = common dso_local global i32 0, align 4
@MANUFACTURER_FEATURE_OOB_CHANNEL = common dso_local global i32 0, align 4
@diva_xdi_extended_features = common dso_local global i32 0, align 4
@DIVA_CAPI_USE_CMA = common dso_local global i32 0, align 4
@CALL_DIR_ORIGINATE = common dso_local global i32 0, align 4
@CALL_DIR_FORCE_OUTG_NL = common dso_local global i32 0, align 4
@LLI = common dso_local global i32 0, align 4
@LLC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"MDM b2_config=%02x\00", align 1
@MDM_B2_DISABLE_V42bis = common dso_local global i32 0, align 4
@DLC_MODEMPROT_DISABLE_V42_V42BIS = common dso_local global i32 0, align 4
@MDM_B2_DISABLE_MNP = common dso_local global i32 0, align 4
@DLC_MODEMPROT_DISABLE_MNP_MNP5 = common dso_local global i32 0, align 4
@MDM_B2_DISABLE_TRANS = common dso_local global i32 0, align 4
@DLC_MODEMPROT_REQUIRE_PROTOCOL = common dso_local global i32 0, align 4
@MDM_B2_DISABLE_V42 = common dso_local global i32 0, align 4
@DLC_MODEMPROT_DISABLE_V42_DETECT = common dso_local global i32 0, align 4
@MDM_B2_DISABLE_COMP = common dso_local global i32 0, align 4
@DLC_MODEMPROT_DISABLE_COMPRESSION = common dso_local global i32 0, align 4
@DLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @add_modem_b23 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_modem_b23(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca [2 x %struct.TYPE_12__], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %17, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 16
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %9

20:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %29, %20
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 64
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %27
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @GET_WORD(i32* %36)
  %38 = load i32, i32* @B1_MODEM_ALL_NEGOTIATE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @GET_WORD(i32* %44)
  %46 = load i32, i32* @B2_MODEM_EC_COMPRESSION, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %40, %32
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @GET_WORD(i32* %52)
  %54 = load i32, i32* @B1_MODEM_ALL_NEGOTIATE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @GET_WORD(i32* %60)
  %62 = load i32, i32* @B2_TRANSPARENT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56, %40
  %65 = load i32, i32* @_B_STACK_NOT_SUPPORTED, align 4
  store i32 %65, i32* %3, align 4
  br label %401

66:                                               ; preds = %56, %48
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @GET_WORD(i32* %70)
  %72 = load i32, i32* @B3_MODEM, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 2
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @GET_WORD(i32* %78)
  %80 = load i32, i32* @B3_TRANSPARENT, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @_B_STACK_NOT_SUPPORTED, align 4
  store i32 %83, i32* %3, align 4
  br label %401

84:                                               ; preds = %74, %66
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @GET_WORD(i32* %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @GET_WORD(i32* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @GET_WORD(i32* %102)
  %104 = load i32, i32* @B2_MODEM_EC_COMPRESSION, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %84
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 4
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 4
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 4
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %124 = call i64 @api_parse(i32* %117, i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %112
  %127 = load i32, i32* @_WRONG_MESSAGE_FORMAT, align 4
  store i32 %127, i32* %3, align 4
  br label %401

128:                                              ; preds = %112
  %129 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @GET_WORD(i32* %131)
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %128, %106, %84
  store i32 1, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 0), align 16
  store i32 1, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MANUFACTURER_FEATURE_XONOFF_FLOW_CONTROL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  %144 = or i32 %143, 2
  store i32 %144, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  br label %145

145:                                              ; preds = %142, %133
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 6
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @MANUFACTURER_FEATURE_OOB_CHANNEL, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  %156 = or i32 %155, 4
  store i32 %156, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  br label %157

157:                                              ; preds = %154, %145
  %158 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  %159 = and i32 %158, 2
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %218

161:                                              ; preds = %157
  %162 = load i32, i32* @diva_xdi_extended_features, align 4
  %163 = load i32, i32* @DIVA_CAPI_USE_CMA, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %218

166:                                              ; preds = %161
  %167 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  %168 = or i32 %167, 16
  store i32 %168, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp sle i32 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %166
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  %177 = call i32 @diva_get_dma_descriptor(%struct.TYPE_11__* %174, i32* %176)
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %173
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %184, %173
  br label %190

190:                                              ; preds = %189, %166
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %217

195:                                              ; preds = %190
  %196 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  %197 = or i32 %196, 64
  store i32 %197, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  store i32 6, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 0), align 16
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 2), align 8
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 3), align 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = ashr i32 %207, 8
  store i32 %208, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 4), align 16
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 16
  store i32 %212, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 5), align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = ashr i32 %215, 24
  store i32 %216, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 6), align 8
  br label %217

217:                                              ; preds = %195, %190
  br label %218

218:                                              ; preds = %217, %161, %157
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 6
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %220, align 8
  %222 = call i64 @DIVA_CAPI_SUPPORTS_NO_CANCEL(%struct.TYPE_13__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  %226 = or i32 %225, 32
  store i32 %226, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 1), align 4
  br label %227

227:                                              ; preds = %224, %218
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @CALL_DIR_ORIGINATE, align 4
  %232 = load i32, i32* @CALL_DIR_FORCE_OUTG_NL, align 4
  %233 = or i32 %231, %232
  %234 = and i32 %230, %233
  %235 = icmp ne i32 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 10, i32 9
  store i32 %237, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @add_modem_b23.llc, i64 0, i64 1), align 4
  store i32 4, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @add_modem_b23.llc, i64 0, i64 2), align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %239 = load i32, i32* @LLI, align 4
  %240 = call i32 @add_p(%struct.TYPE_11__* %238, i32 %239, i32* getelementptr inbounds ([12 x i32], [12 x i32]* bitcast (<{ i32, i32, [10 x i32] }>* @add_modem_b23.lli to [12 x i32]*), i64 0, i64 0))
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %242 = load i32, i32* @LLC, align 4
  %243 = call i32 @add_p(%struct.TYPE_11__* %241, i32 %242, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @add_modem_b23.llc, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %245
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 5
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @PUT_WORD(i32* %246, i32 %251)
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, 2
  store i32 %254, i32* %7, align 4
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i64 1
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @GET_WORD(i32* %258)
  %260 = load i32, i32* @B2_MODEM_EC_COMPRESSION, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %359

262:                                              ; preds = %227
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i64 4
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %358

268:                                              ; preds = %262
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %269)
  %271 = call i32 @dbug(i32 1, i32 %270)
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %274
  store i32 3, i32* %275, align 4
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %7, align 4
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %278
  store i32 1, i32* %279, align 4
  %280 = load i32, i32* %7, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %7, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %282
  store i32 7, i32* %283, align 4
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %286
  store i32 7, i32* %287, align 4
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %7, align 4
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %290
  store i32 0, i32* %291, align 4
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %7, align 4
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %294
  store i32 0, i32* %295, align 4
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* @MDM_B2_DISABLE_V42bis, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %268
  %301 = load i32, i32* @DLC_MODEMPROT_DISABLE_V42_V42BIS, align 4
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %301
  store i32 %306, i32* %304, align 4
  br label %307

307:                                              ; preds = %300, %268
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* @MDM_B2_DISABLE_MNP, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %307
  %313 = load i32, i32* @DLC_MODEMPROT_DISABLE_MNP_MNP5, align 4
  %314 = load i32, i32* %7, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %313
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %312, %307
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* @MDM_B2_DISABLE_TRANS, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %319
  %325 = load i32, i32* @DLC_MODEMPROT_REQUIRE_PROTOCOL, align 4
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %325
  store i32 %330, i32* %328, align 4
  br label %331

331:                                              ; preds = %324, %319
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* @MDM_B2_DISABLE_V42, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %331
  %337 = load i32, i32* @DLC_MODEMPROT_DISABLE_V42_DETECT, align 4
  %338 = load i32, i32* %7, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, %337
  store i32 %342, i32* %340, align 4
  br label %343

343:                                              ; preds = %336, %331
  %344 = load i32, i32* %8, align 4
  %345 = load i32, i32* @MDM_B2_DISABLE_COMP, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %343
  %349 = load i32, i32* @DLC_MODEMPROT_DISABLE_COMPRESSION, align 4
  %350 = load i32, i32* %7, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %349
  store i32 %354, i32* %352, align 4
  br label %355

355:                                              ; preds = %348, %343
  %356 = load i32, i32* %7, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %7, align 4
  br label %358

358:                                              ; preds = %355, %262
  br label %395

359:                                              ; preds = %227
  %360 = load i32, i32* %7, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %7, align 4
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %362
  store i32 3, i32* %363, align 4
  %364 = load i32, i32* %7, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %7, align 4
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %366
  store i32 1, i32* %367, align 4
  %368 = load i32, i32* %7, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %7, align 4
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %370
  store i32 7, i32* %371, align 4
  %372 = load i32, i32* %7, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %7, align 4
  %374 = sext i32 %372 to i64
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %374
  store i32 7, i32* %375, align 4
  %376 = load i32, i32* %7, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %7, align 4
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %378
  store i32 0, i32* %379, align 4
  %380 = load i32, i32* %7, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %7, align 4
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %382
  store i32 0, i32* %383, align 4
  %384 = load i32, i32* @DLC_MODEMPROT_DISABLE_V42_V42BIS, align 4
  %385 = load i32, i32* @DLC_MODEMPROT_DISABLE_MNP_MNP5, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @DLC_MODEMPROT_DISABLE_V42_DETECT, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @DLC_MODEMPROT_DISABLE_COMPRESSION, align 4
  %390 = or i32 %388, %389
  %391 = load i32, i32* %7, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %7, align 4
  %393 = sext i32 %391 to i64
  %394 = getelementptr inbounds [16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 %393
  store i32 %390, i32* %394, align 4
  br label %395

395:                                              ; preds = %359, %358
  %396 = load i32, i32* %7, align 4
  %397 = sub nsw i32 %396, 1
  store i32 %397, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 0), align 16
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %399 = load i32, i32* @DLC, align 4
  %400 = call i32 @add_p(%struct.TYPE_11__* %398, i32 %399, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @add_modem_b23.dlc, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %401

401:                                              ; preds = %395, %126, %82, %64
  %402 = load i32, i32* %3, align 4
  ret i32 %402
}

declare dso_local i32 @GET_WORD(i32*) #1

declare dso_local i64 @api_parse(i32*, i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @diva_get_dma_descriptor(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @DIVA_CAPI_SUPPORTS_NO_CANCEL(%struct.TYPE_13__*) #1

declare dso_local i32 @add_p(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @PUT_WORD(i32*, i32) #1

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
