; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_APCI1710.c_v_APCI1710_Interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_APCI1710.c_v_APCI1710_Interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_24__, %struct.TYPE_20__, %union.str_ModuleInfo* }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32*, i64 }
%union.str_ModuleInfo = type { %struct.TYPE_22__, [8 x i8] }
%struct.TYPE_22__ = type { i8, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_27__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"APCI1710 Interrupt\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_25__* null, align 8
@APCI1710_82X54_TIMER = common dso_local global i32 0, align 4
@APCI1710_SAVE_INTERRUPT = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@APCI1710_INCREMENTAL_COUNTER = common dso_local global i32 0, align 4
@APCI1710_INDEX_AUTO_MODE = common dso_local global i32 0, align 4
@APCI1710_ENABLE_INDEX_INT = common dso_local global i32 0, align 4
@APCI1710_ENABLE_COMPARE_INT = common dso_local global i32 0, align 4
@APCI1710_16BIT_COUNTER = common dso_local global i32 0, align 4
@APCI1710_CDA = common dso_local global i32 0, align 4
@APCI1710_ENABLE = common dso_local global i64 0, align 8
@APCI1710_PWM = common dso_local global i32 0, align 4
@APCI1710_TOR_COUNTER = common dso_local global i32 0, align 4
@APCI1710_CHRONOMETER = common dso_local global i32 0, align 4
@APCI1710_PULSE_ENCODER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_APCI1710_Interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.str_ModuleInfo*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.comedi_device*
  store %struct.comedi_device* %18, %struct.comedi_device** %5, align 8
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8 0, i8* %6, align 1
  br label %20

20:                                               ; preds = %1299, %2
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %1304

24:                                               ; preds = %20
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 3
  %27 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %26, align 8
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds %union.str_ModuleInfo, %union.str_ModuleInfo* %27, i64 %29
  store %union.str_ModuleInfo* %30, %union.str_ModuleInfo** %16, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, 4294901760
  %41 = load i32, i32* @APCI1710_82X54_TIMER, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %126

44:                                               ; preds = %24
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 12
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = mul nsw i32 64, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = call i32 @inl(i64 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %58 = bitcast %union.str_ModuleInfo* %57 to %struct.TYPE_26__*
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %56, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %125

63:                                               ; preds = %44
  %64 = load i32, i32* %14, align 4
  %65 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %66 = bitcast %union.str_ModuleInfo* %65 to %struct.TYPE_26__*
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %64, %68
  %70 = shl i32 %69, 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %73, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  store i32 %70, i32* %80, align 4
  %81 = load i8, i8* %6, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 1, %82
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  store i32 %83, i32* %93, align 4
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %96, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  store i32 0, i32* %103, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  %114 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %115 = sext i32 %114 to i64
  %116 = urem i64 %113, %115
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  store i8 1, i8* %7, align 1
  %120 = load i32, i32* @SIGIO, align 4
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @send_sig(i32 %120, i32 %123, i32 0)
  br label %125

125:                                              ; preds = %63, %44
  br label %126

126:                                              ; preds = %125, %24
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i8, i8* %6, align 1
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = and i64 %135, 4294901760
  %137 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp eq i64 %136, %138
  br i1 %139, label %140, label %674

140:                                              ; preds = %126
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i8, i8* %6, align 1
  %146 = zext i8 %145 to i32
  %147 = mul nsw i32 64, %146
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %144, %148
  %150 = call i32 @inl(i64 %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = and i32 %151, 34
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %306

154:                                              ; preds = %140
  %155 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %156 = bitcast %union.str_ModuleInfo* %155 to %struct.TYPE_30__*
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 128
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %306

163:                                              ; preds = %154
  %164 = load i32, i32* %12, align 4
  %165 = and i32 %164, 2
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %234

167:                                              ; preds = %163
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 4
  %173 = load i8, i8* %6, align 1
  %174 = zext i8 %173 to i32
  %175 = mul nsw i32 64, %174
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %172, %176
  %178 = call i32 @inl(i64 %177)
  store i32 %178, i32* %13, align 4
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 4
  %189 = load i8, i8* %6, align 1
  %190 = zext i8 %189 to i32
  %191 = shl i32 1, %190
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %194, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 1
  store i32 %191, i32* %201, align 4
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 2
  store i32 %202, i32* %212, align 4
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %221, 1
  %223 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %224 = sext i32 %223 to i64
  %225 = urem i64 %222, %224
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 0
  store i64 %225, i64* %228, align 8
  store i8 1, i8* %7, align 1
  %229 = load i32, i32* @SIGIO, align 4
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @send_sig(i32 %229, i32 %232, i32 0)
  br label %234

234:                                              ; preds = %167, %163
  %235 = load i32, i32* %12, align 4
  %236 = and i32 %235, 32
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %305

238:                                              ; preds = %234
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %242, 8
  %244 = load i8, i8* %6, align 1
  %245 = zext i8 %244 to i32
  %246 = mul nsw i32 64, %245
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %243, %247
  %249 = call i32 @inl(i64 %248)
  store i32 %249, i32* %13, align 4
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %252, align 8
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  store i32 2, i32* %259, align 4
  %260 = load i8, i8* %6, align 1
  %261 = zext i8 %260 to i32
  %262 = shl i32 1, %261
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 1
  store i32 %262, i32* %272, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %276, align 8
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 2
  store i32 %273, i32* %283, align 4
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 8
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = add i64 %292, 1
  %294 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %295 = sext i32 %294 to i64
  %296 = urem i64 %293, %295
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  store i64 %296, i64* %299, align 8
  store i8 1, i8* %7, align 1
  %300 = load i32, i32* @SIGIO, align 4
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @send_sig(i32 %300, i32 %303, i32 0)
  br label %305

305:                                              ; preds = %238, %234
  br label %306

306:                                              ; preds = %305, %154, %140
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, 24
  %312 = load i8, i8* %6, align 1
  %313 = zext i8 %312 to i32
  %314 = mul nsw i32 64, %313
  %315 = sext i32 %314 to i64
  %316 = add nsw i64 %311, %315
  %317 = call i32 @inl(i64 %316)
  store i32 %317, i32* %12, align 4
  %318 = load i32, i32* %12, align 4
  %319 = and i32 %318, 8
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %420

321:                                              ; preds = %306
  %322 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %323 = bitcast %union.str_ModuleInfo* %322 to %struct.TYPE_30__*
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 0
  store i32 1, i32* %325, align 8
  %326 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %327 = bitcast %union.str_ModuleInfo* %326 to %struct.TYPE_30__*
  %328 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @APCI1710_INDEX_AUTO_MODE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %352

335:                                              ; preds = %321
  %336 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %337 = bitcast %union.str_ModuleInfo* %336 to %struct.TYPE_30__*
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = add nsw i64 %344, 20
  %346 = load i8, i8* %6, align 1
  %347 = zext i8 %346 to i32
  %348 = mul nsw i32 64, %347
  %349 = sext i32 %348 to i64
  %350 = add nsw i64 %345, %349
  %351 = call i32 @outl(i32 %340, i64 %350)
  br label %352

352:                                              ; preds = %335, %321
  %353 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %354 = bitcast %union.str_ModuleInfo* %353 to %struct.TYPE_30__*
  %355 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @APCI1710_ENABLE_INDEX_INT, align 4
  %360 = and i32 %358, %359
  %361 = load i32, i32* @APCI1710_ENABLE_INDEX_INT, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %419

363:                                              ; preds = %352
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 2
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %366, align 8
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 0
  store i32 4, i32* %373, align 4
  %374 = load i8, i8* %6, align 1
  %375 = zext i8 %374 to i32
  %376 = shl i32 1, %375
  %377 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %378 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i32 0, i32 2
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %379, align 8
  %381 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %382 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %385, i32 0, i32 1
  store i32 %376, i32* %386, align 4
  %387 = load i32, i32* %13, align 4
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %389, i32 0, i32 2
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** %390, align 8
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 2
  store i32 %387, i32* %397, align 4
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %400, align 8
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %404 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = add i64 %406, 1
  %408 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %409 = sext i32 %408 to i64
  %410 = urem i64 %407, %409
  %411 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %412 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 0
  store i64 %410, i64* %413, align 8
  store i8 1, i8* %7, align 1
  %414 = load i32, i32* @SIGIO, align 4
  %415 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %416 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @send_sig(i32 %414, i32 %417, i32 0)
  br label %419

419:                                              ; preds = %363, %352
  br label %420

420:                                              ; preds = %419, %306
  %421 = load i32, i32* %12, align 4
  %422 = and i32 %421, 16
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %492

424:                                              ; preds = %420
  %425 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %426 = bitcast %union.str_ModuleInfo* %425 to %struct.TYPE_30__*
  %427 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @APCI1710_ENABLE_COMPARE_INT, align 4
  %432 = and i32 %430, %431
  %433 = load i32, i32* @APCI1710_ENABLE_COMPARE_INT, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %491

435:                                              ; preds = %424
  %436 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %437 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %437, i32 0, i32 2
  %439 = load %struct.TYPE_23__*, %struct.TYPE_23__** %438, align 8
  %440 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %441 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %439, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %444, i32 0, i32 0
  store i32 8, i32* %445, align 4
  %446 = load i8, i8* %6, align 1
  %447 = zext i8 %446 to i32
  %448 = shl i32 1, %447
  %449 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %450 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %450, i32 0, i32 2
  %452 = load %struct.TYPE_23__*, %struct.TYPE_23__** %451, align 8
  %453 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %454 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %452, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %457, i32 0, i32 1
  store i32 %448, i32* %458, align 4
  %459 = load i32, i32* %13, align 4
  %460 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %461 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %461, i32 0, i32 2
  %463 = load %struct.TYPE_23__*, %struct.TYPE_23__** %462, align 8
  %464 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %465 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %463, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %468, i32 0, i32 2
  store i32 %459, i32* %469, align 4
  %470 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %471 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %472, align 8
  %475 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %476 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = add i64 %478, 1
  %480 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %481 = sext i32 %480 to i64
  %482 = urem i64 %479, %481
  %483 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %484 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %484, i32 0, i32 0
  store i64 %482, i64* %485, align 8
  store i8 1, i8* %7, align 1
  %486 = load i32, i32* @SIGIO, align 4
  %487 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %488 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = call i32 @send_sig(i32 %486, i32 %489, i32 0)
  br label %491

491:                                              ; preds = %435, %424
  br label %492

492:                                              ; preds = %491, %420
  %493 = load i32, i32* %12, align 4
  %494 = and i32 %493, 32
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %673

496:                                              ; preds = %492
  %497 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %498 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %498, i32 0, i32 1
  %500 = load i64, i64* %499, align 8
  %501 = add nsw i64 %500, 32
  %502 = load i8, i8* %6, align 1
  %503 = zext i8 %502 to i32
  %504 = mul nsw i32 64, %503
  %505 = sext i32 %504 to i64
  %506 = add nsw i64 %501, %505
  %507 = call i32 @inl(i64 %506)
  store i32 %507, i32* %15, align 4
  %508 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %509 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %509, i32 0, i32 1
  %511 = load i64, i64* %510, align 8
  %512 = add nsw i64 %511, 28
  %513 = load i8, i8* %6, align 1
  %514 = zext i8 %513 to i32
  %515 = mul nsw i32 64, %514
  %516 = sext i32 %515 to i64
  %517 = add nsw i64 %512, %516
  %518 = call i32 @inl(i64 %517)
  store i32 %518, i32* %13, align 4
  %519 = load i32, i32* %15, align 4
  %520 = lshr i32 %519, 1
  %521 = and i32 %520, 3
  switch i32 %521, label %617 [
    i32 0, label %522
    i32 1, label %582
    i32 2, label %601
  ]

522:                                              ; preds = %496
  %523 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %524 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %523, i32 0, i32 3
  %525 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %524, align 8
  %526 = load i8, i8* %6, align 1
  %527 = zext i8 %526 to i64
  %528 = getelementptr inbounds %union.str_ModuleInfo, %union.str_ModuleInfo* %525, i64 %527
  %529 = bitcast %union.str_ModuleInfo* %528 to %struct.TYPE_30__*
  %530 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %529, i32 0, i32 0
  %531 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* @APCI1710_16BIT_COUNTER, align 4
  %535 = and i32 %533, %534
  %536 = load i32, i32* @APCI1710_16BIT_COUNTER, align 4
  %537 = icmp eq i32 %535, %536
  br i1 %537, label %538, label %572

538:                                              ; preds = %522
  %539 = load i32, i32* %13, align 4
  %540 = and i32 %539, 65535
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %553

542:                                              ; preds = %538
  %543 = load i32, i32* %13, align 4
  %544 = and i32 %543, 65535
  store i32 %544, i32* %11, align 4
  %545 = load i32, i32* %13, align 4
  %546 = zext i32 %545 to i64
  %547 = and i64 %546, 4294901760
  %548 = load i32, i32* %11, align 4
  %549 = sub i32 65535, %548
  %550 = zext i32 %549 to i64
  %551 = or i64 %547, %550
  %552 = trunc i64 %551 to i32
  store i32 %552, i32* %13, align 4
  br label %553

553:                                              ; preds = %542, %538
  %554 = load i32, i32* %13, align 4
  %555 = zext i32 %554 to i64
  %556 = and i64 %555, 4294901760
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %571

558:                                              ; preds = %553
  %559 = load i32, i32* %13, align 4
  %560 = lshr i32 %559, 16
  %561 = and i32 %560, 65535
  store i32 %561, i32* %11, align 4
  %562 = load i32, i32* %13, align 4
  %563 = zext i32 %562 to i64
  %564 = and i64 %563, 65535
  %565 = load i32, i32* %11, align 4
  %566 = sub i32 65535, %565
  %567 = shl i32 %566, 16
  %568 = zext i32 %567 to i64
  %569 = or i64 %564, %568
  %570 = trunc i64 %569 to i32
  store i32 %570, i32* %13, align 4
  br label %571

571:                                              ; preds = %558, %553
  br label %581

572:                                              ; preds = %522
  %573 = load i32, i32* %13, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %580

575:                                              ; preds = %572
  %576 = load i32, i32* %13, align 4
  %577 = zext i32 %576 to i64
  %578 = sub i64 4294967295, %577
  %579 = trunc i64 %578 to i32
  store i32 %579, i32* %13, align 4
  br label %580

580:                                              ; preds = %575, %572
  br label %581

581:                                              ; preds = %580, %571
  br label %617

582:                                              ; preds = %496
  %583 = load i32, i32* %13, align 4
  %584 = zext i32 %583 to i64
  %585 = and i64 %584, 4294901760
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %600

587:                                              ; preds = %582
  %588 = load i32, i32* %13, align 4
  %589 = lshr i32 %588, 16
  %590 = and i32 %589, 65535
  store i32 %590, i32* %11, align 4
  %591 = load i32, i32* %13, align 4
  %592 = zext i32 %591 to i64
  %593 = and i64 %592, 65535
  %594 = load i32, i32* %11, align 4
  %595 = sub i32 65535, %594
  %596 = shl i32 %595, 16
  %597 = zext i32 %596 to i64
  %598 = or i64 %593, %597
  %599 = trunc i64 %598 to i32
  store i32 %599, i32* %13, align 4
  br label %600

600:                                              ; preds = %587, %582
  br label %617

601:                                              ; preds = %496
  %602 = load i32, i32* %13, align 4
  %603 = and i32 %602, 65535
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %616

605:                                              ; preds = %601
  %606 = load i32, i32* %13, align 4
  %607 = and i32 %606, 65535
  store i32 %607, i32* %11, align 4
  %608 = load i32, i32* %13, align 4
  %609 = zext i32 %608 to i64
  %610 = and i64 %609, 4294901760
  %611 = load i32, i32* %11, align 4
  %612 = sub i32 65535, %611
  %613 = zext i32 %612 to i64
  %614 = or i64 %610, %613
  %615 = trunc i64 %614 to i32
  store i32 %615, i32* %13, align 4
  br label %616

616:                                              ; preds = %605, %601
  br label %617

617:                                              ; preds = %496, %616, %600, %581
  %618 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %619 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %619, i32 0, i32 2
  %621 = load %struct.TYPE_23__*, %struct.TYPE_23__** %620, align 8
  %622 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %623 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %623, i32 0, i32 0
  %625 = load i64, i64* %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %621, i64 %625
  %627 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %626, i32 0, i32 0
  store i32 65536, i32* %627, align 4
  %628 = load i8, i8* %6, align 1
  %629 = zext i8 %628 to i32
  %630 = shl i32 1, %629
  %631 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %632 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %632, i32 0, i32 2
  %634 = load %struct.TYPE_23__*, %struct.TYPE_23__** %633, align 8
  %635 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %636 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %636, i32 0, i32 0
  %638 = load i64, i64* %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %634, i64 %638
  %640 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %639, i32 0, i32 1
  store i32 %630, i32* %640, align 4
  %641 = load i32, i32* %13, align 4
  %642 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %643 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %642, i32 0, i32 1
  %644 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %643, i32 0, i32 2
  %645 = load %struct.TYPE_23__*, %struct.TYPE_23__** %644, align 8
  %646 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %647 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %646, i32 0, i32 1
  %648 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %647, i32 0, i32 0
  %649 = load i64, i64* %648, align 8
  %650 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %645, i64 %649
  %651 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %650, i32 0, i32 2
  store i32 %641, i32* %651, align 4
  %652 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %653 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %653, i32 0, i32 1
  %655 = load i32, i32* %654, align 8
  %656 = add nsw i32 %655, 1
  store i32 %656, i32* %654, align 8
  %657 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %658 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %657, i32 0, i32 1
  %659 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %658, i32 0, i32 0
  %660 = load i64, i64* %659, align 8
  %661 = add i64 %660, 1
  %662 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %663 = sext i32 %662 to i64
  %664 = urem i64 %661, %663
  %665 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %666 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %665, i32 0, i32 1
  %667 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %666, i32 0, i32 0
  store i64 %664, i64* %667, align 8
  store i8 1, i8* %7, align 1
  %668 = load i32, i32* @SIGIO, align 4
  %669 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %670 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %669, i32 0, i32 0
  %671 = load i32, i32* %670, align 8
  %672 = call i32 @send_sig(i32 %668, i32 %671, i32 0)
  br label %673

673:                                              ; preds = %617, %492
  br label %674

674:                                              ; preds = %673, %126
  %675 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %676 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %675, i32 0, i32 2
  %677 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %676, i32 0, i32 0
  %678 = load i32*, i32** %677, align 8
  %679 = load i8, i8* %6, align 1
  %680 = zext i8 %679 to i64
  %681 = getelementptr inbounds i32, i32* %678, i64 %680
  %682 = load i32, i32* %681, align 4
  %683 = sext i32 %682 to i64
  %684 = and i64 %683, 4294901760
  %685 = load i32, i32* @APCI1710_CDA, align 4
  %686 = sext i32 %685 to i64
  %687 = icmp eq i64 %684, %686
  br i1 %687, label %688, label %783

688:                                              ; preds = %674
  %689 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %690 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %689, i32 0, i32 3
  %691 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %690, align 8
  %692 = load i8, i8* %6, align 1
  %693 = zext i8 %692 to i64
  %694 = getelementptr inbounds %union.str_ModuleInfo, %union.str_ModuleInfo* %691, i64 %693
  %695 = bitcast %union.str_ModuleInfo* %694 to %struct.TYPE_31__*
  %696 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %695, i32 0, i32 0
  %697 = load i64, i64* %696, align 8
  %698 = load i64, i64* @APCI1710_ENABLE, align 8
  %699 = icmp eq i64 %697, %698
  br i1 %699, label %700, label %782

700:                                              ; preds = %688
  %701 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %702 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %701, i32 0, i32 3
  %703 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %702, align 8
  %704 = load i8, i8* %6, align 1
  %705 = zext i8 %704 to i64
  %706 = getelementptr inbounds %union.str_ModuleInfo, %union.str_ModuleInfo* %703, i64 %705
  %707 = bitcast %union.str_ModuleInfo* %706 to %struct.TYPE_31__*
  %708 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %707, i32 0, i32 1
  %709 = load i64, i64* %708, align 8
  %710 = icmp eq i64 %709, 0
  br i1 %710, label %711, label %782

711:                                              ; preds = %700
  %712 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %713 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %712, i32 0, i32 2
  %714 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %713, i32 0, i32 1
  %715 = load i64, i64* %714, align 8
  %716 = add nsw i64 %715, 16
  %717 = load i8, i8* %6, align 1
  %718 = zext i8 %717 to i32
  %719 = mul nsw i32 64, %718
  %720 = sext i32 %719 to i64
  %721 = add nsw i64 %716, %720
  %722 = call i32 @inl(i64 %721)
  store i32 %722, i32* %15, align 4
  %723 = load i32, i32* %15, align 4
  %724 = and i32 %723, 1
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %781

726:                                              ; preds = %711
  %727 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %728 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %727, i32 0, i32 1
  %729 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %728, i32 0, i32 2
  %730 = load %struct.TYPE_23__*, %struct.TYPE_23__** %729, align 8
  %731 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %732 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %731, i32 0, i32 1
  %733 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %732, i32 0, i32 0
  %734 = load i64, i64* %733, align 8
  %735 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %730, i64 %734
  %736 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %735, i32 0, i32 0
  store i32 524288, i32* %736, align 4
  %737 = load i8, i8* %6, align 1
  %738 = zext i8 %737 to i32
  %739 = shl i32 1, %738
  %740 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %741 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %740, i32 0, i32 1
  %742 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %741, i32 0, i32 2
  %743 = load %struct.TYPE_23__*, %struct.TYPE_23__** %742, align 8
  %744 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %745 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %744, i32 0, i32 1
  %746 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %745, i32 0, i32 0
  %747 = load i64, i64* %746, align 8
  %748 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %743, i64 %747
  %749 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %748, i32 0, i32 1
  store i32 %739, i32* %749, align 4
  %750 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %751 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %750, i32 0, i32 1
  %752 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %751, i32 0, i32 2
  %753 = load %struct.TYPE_23__*, %struct.TYPE_23__** %752, align 8
  %754 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %755 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %754, i32 0, i32 1
  %756 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %755, i32 0, i32 0
  %757 = load i64, i64* %756, align 8
  %758 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %753, i64 %757
  %759 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %758, i32 0, i32 2
  store i32 0, i32* %759, align 4
  %760 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %761 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %760, i32 0, i32 1
  %762 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %761, i32 0, i32 1
  %763 = load i32, i32* %762, align 8
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %762, align 8
  %765 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %766 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %765, i32 0, i32 1
  %767 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %766, i32 0, i32 0
  %768 = load i64, i64* %767, align 8
  %769 = add i64 %768, 1
  %770 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %771 = sext i32 %770 to i64
  %772 = urem i64 %769, %771
  %773 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %774 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %773, i32 0, i32 1
  %775 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %774, i32 0, i32 0
  store i64 %772, i64* %775, align 8
  store i8 1, i8* %7, align 1
  %776 = load i32, i32* @SIGIO, align 4
  %777 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %778 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %777, i32 0, i32 0
  %779 = load i32, i32* %778, align 8
  %780 = call i32 @send_sig(i32 %776, i32 %779, i32 0)
  br label %781

781:                                              ; preds = %726, %711
  br label %782

782:                                              ; preds = %781, %700, %688
  br label %783

783:                                              ; preds = %782, %674
  %784 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %785 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %784, i32 0, i32 2
  %786 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %785, i32 0, i32 0
  %787 = load i32*, i32** %786, align 8
  %788 = load i8, i8* %6, align 1
  %789 = zext i8 %788 to i64
  %790 = getelementptr inbounds i32, i32* %787, i64 %789
  %791 = load i32, i32* %790, align 4
  %792 = sext i32 %791 to i64
  %793 = and i64 %792, 4294901760
  %794 = load i32, i32* @APCI1710_PWM, align 4
  %795 = sext i32 %794 to i64
  %796 = icmp eq i64 %793, %795
  br i1 %796, label %797, label %895

797:                                              ; preds = %783
  store i8 0, i8* %8, align 1
  br label %798

798:                                              ; preds = %891, %797
  %799 = load i8, i8* %8, align 1
  %800 = zext i8 %799 to i32
  %801 = icmp slt i32 %800, 2
  br i1 %801, label %802, label %894

802:                                              ; preds = %798
  %803 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %804 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %803, i32 0, i32 3
  %805 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %804, align 8
  %806 = load i8, i8* %6, align 1
  %807 = zext i8 %806 to i64
  %808 = getelementptr inbounds %union.str_ModuleInfo, %union.str_ModuleInfo* %805, i64 %807
  %809 = bitcast %union.str_ModuleInfo* %808 to %struct.TYPE_33__*
  %810 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %809, i32 0, i32 0
  %811 = load %struct.TYPE_32__*, %struct.TYPE_32__** %810, align 8
  %812 = load i8, i8* %8, align 1
  %813 = zext i8 %812 to i64
  %814 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %811, i64 %813
  %815 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %814, i32 0, i32 0
  %816 = load i64, i64* %815, align 8
  %817 = load i64, i64* @APCI1710_ENABLE, align 8
  %818 = icmp eq i64 %816, %817
  br i1 %818, label %819, label %890

819:                                              ; preds = %802
  %820 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %821 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %820, i32 0, i32 2
  %822 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %821, i32 0, i32 1
  %823 = load i64, i64* %822, align 8
  %824 = add nsw i64 %823, 16
  %825 = load i8, i8* %8, align 1
  %826 = zext i8 %825 to i32
  %827 = mul nsw i32 20, %826
  %828 = sext i32 %827 to i64
  %829 = add nsw i64 %824, %828
  %830 = load i8, i8* %6, align 1
  %831 = zext i8 %830 to i32
  %832 = mul nsw i32 64, %831
  %833 = sext i32 %832 to i64
  %834 = add nsw i64 %829, %833
  %835 = call i32 @inl(i64 %834)
  store i32 %835, i32* %15, align 4
  %836 = load i32, i32* %15, align 4
  %837 = and i32 %836, 1
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %889

839:                                              ; preds = %819
  %840 = load i8, i8* %8, align 1
  %841 = zext i8 %840 to i32
  %842 = zext i32 %841 to i64
  %843 = shl i64 16384, %842
  %844 = trunc i64 %843 to i32
  %845 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %846 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %846, i32 0, i32 2
  %848 = load %struct.TYPE_23__*, %struct.TYPE_23__** %847, align 8
  %849 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %850 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %849, i32 0, i32 1
  %851 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %850, i32 0, i32 0
  %852 = load i64, i64* %851, align 8
  %853 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %848, i64 %852
  %854 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %853, i32 0, i32 0
  store i32 %844, i32* %854, align 4
  %855 = load i8, i8* %6, align 1
  %856 = zext i8 %855 to i32
  %857 = shl i32 1, %856
  %858 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %859 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %858, i32 0, i32 1
  %860 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %859, i32 0, i32 2
  %861 = load %struct.TYPE_23__*, %struct.TYPE_23__** %860, align 8
  %862 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %863 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %862, i32 0, i32 1
  %864 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %863, i32 0, i32 0
  %865 = load i64, i64* %864, align 8
  %866 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %861, i64 %865
  %867 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %866, i32 0, i32 1
  store i32 %857, i32* %867, align 4
  %868 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %869 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %868, i32 0, i32 1
  %870 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %869, i32 0, i32 1
  %871 = load i32, i32* %870, align 8
  %872 = add nsw i32 %871, 1
  store i32 %872, i32* %870, align 8
  %873 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %874 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %873, i32 0, i32 1
  %875 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %874, i32 0, i32 0
  %876 = load i64, i64* %875, align 8
  %877 = add i64 %876, 1
  %878 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %879 = sext i32 %878 to i64
  %880 = urem i64 %877, %879
  %881 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %882 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %881, i32 0, i32 1
  %883 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %882, i32 0, i32 0
  store i64 %880, i64* %883, align 8
  store i8 1, i8* %7, align 1
  %884 = load i32, i32* @SIGIO, align 4
  %885 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %886 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  %888 = call i32 @send_sig(i32 %884, i32 %887, i32 0)
  br label %889

889:                                              ; preds = %839, %819
  br label %890

890:                                              ; preds = %889, %802
  br label %891

891:                                              ; preds = %890
  %892 = load i8, i8* %8, align 1
  %893 = add i8 %892, 1
  store i8 %893, i8* %8, align 1
  br label %798

894:                                              ; preds = %798
  br label %895

895:                                              ; preds = %894, %783
  %896 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %897 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %896, i32 0, i32 2
  %898 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %897, i32 0, i32 0
  %899 = load i32*, i32** %898, align 8
  %900 = load i8, i8* %6, align 1
  %901 = zext i8 %900 to i64
  %902 = getelementptr inbounds i32, i32* %899, i64 %901
  %903 = load i32, i32* %902, align 4
  %904 = sext i32 %903 to i64
  %905 = and i64 %904, 4294901760
  %906 = load i32, i32* @APCI1710_TOR_COUNTER, align 4
  %907 = sext i32 %906 to i64
  %908 = icmp eq i64 %905, %907
  br i1 %908, label %909, label %1034

909:                                              ; preds = %895
  store i8 0, i8* %9, align 1
  br label %910

910:                                              ; preds = %1030, %909
  %911 = load i8, i8* %9, align 1
  %912 = zext i8 %911 to i32
  %913 = icmp slt i32 %912, 2
  br i1 %913, label %914, label %1033

914:                                              ; preds = %910
  %915 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %916 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %915, i32 0, i32 3
  %917 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %916, align 8
  %918 = load i8, i8* %6, align 1
  %919 = zext i8 %918 to i64
  %920 = getelementptr inbounds %union.str_ModuleInfo, %union.str_ModuleInfo* %917, i64 %919
  %921 = bitcast %union.str_ModuleInfo* %920 to %struct.TYPE_18__*
  %922 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %921, i32 0, i32 0
  %923 = load %struct.TYPE_34__*, %struct.TYPE_34__** %922, align 8
  %924 = load i8, i8* %9, align 1
  %925 = zext i8 %924 to i64
  %926 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %923, i64 %925
  %927 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %926, i32 0, i32 0
  %928 = load i64, i64* %927, align 8
  %929 = load i64, i64* @APCI1710_ENABLE, align 8
  %930 = icmp eq i64 %928, %929
  br i1 %930, label %931, label %1029

931:                                              ; preds = %914
  %932 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %933 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %932, i32 0, i32 2
  %934 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %933, i32 0, i32 1
  %935 = load i64, i64* %934, align 8
  %936 = add nsw i64 %935, 12
  %937 = load i8, i8* %9, align 1
  %938 = zext i8 %937 to i32
  %939 = mul nsw i32 16, %938
  %940 = sext i32 %939 to i64
  %941 = add nsw i64 %936, %940
  %942 = load i8, i8* %6, align 1
  %943 = zext i8 %942 to i32
  %944 = mul nsw i32 64, %943
  %945 = sext i32 %944 to i64
  %946 = add nsw i64 %941, %945
  %947 = call i32 @inl(i64 %946)
  store i32 %947, i32* %15, align 4
  %948 = load i32, i32* %15, align 4
  %949 = and i32 %948, 1
  %950 = icmp ne i32 %949, 0
  br i1 %950, label %951, label %1028

951:                                              ; preds = %931
  %952 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %953 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %952, i32 0, i32 2
  %954 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %953, i32 0, i32 1
  %955 = load i64, i64* %954, align 8
  %956 = add nsw i64 %955, 0
  %957 = load i8, i8* %9, align 1
  %958 = zext i8 %957 to i32
  %959 = mul nsw i32 16, %958
  %960 = sext i32 %959 to i64
  %961 = add nsw i64 %956, %960
  %962 = load i8, i8* %6, align 1
  %963 = zext i8 %962 to i32
  %964 = mul nsw i32 64, %963
  %965 = sext i32 %964 to i64
  %966 = add nsw i64 %961, %965
  %967 = call i32 @inl(i64 %966)
  store i32 %967, i32* %13, align 4
  %968 = load i8, i8* %9, align 1
  %969 = zext i8 %968 to i32
  %970 = zext i32 %969 to i64
  %971 = shl i64 4096, %970
  %972 = trunc i64 %971 to i32
  %973 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %974 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %973, i32 0, i32 1
  %975 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %974, i32 0, i32 2
  %976 = load %struct.TYPE_23__*, %struct.TYPE_23__** %975, align 8
  %977 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %978 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %977, i32 0, i32 1
  %979 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %978, i32 0, i32 0
  %980 = load i64, i64* %979, align 8
  %981 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %976, i64 %980
  %982 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %981, i32 0, i32 0
  store i32 %972, i32* %982, align 4
  %983 = load i8, i8* %6, align 1
  %984 = zext i8 %983 to i32
  %985 = shl i32 1, %984
  %986 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %987 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %986, i32 0, i32 1
  %988 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %987, i32 0, i32 2
  %989 = load %struct.TYPE_23__*, %struct.TYPE_23__** %988, align 8
  %990 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %991 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %990, i32 0, i32 1
  %992 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %991, i32 0, i32 0
  %993 = load i64, i64* %992, align 8
  %994 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %989, i64 %993
  %995 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %994, i32 0, i32 1
  store i32 %985, i32* %995, align 4
  %996 = load i32, i32* %13, align 4
  %997 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %998 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %997, i32 0, i32 1
  %999 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %998, i32 0, i32 2
  %1000 = load %struct.TYPE_23__*, %struct.TYPE_23__** %999, align 8
  %1001 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1002 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1001, i32 0, i32 1
  %1003 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1002, i32 0, i32 0
  %1004 = load i64, i64* %1003, align 8
  %1005 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1000, i64 %1004
  %1006 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1005, i32 0, i32 2
  store i32 %996, i32* %1006, align 4
  %1007 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1008 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1007, i32 0, i32 1
  %1009 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1008, i32 0, i32 1
  %1010 = load i32, i32* %1009, align 8
  %1011 = add nsw i32 %1010, 1
  store i32 %1011, i32* %1009, align 8
  %1012 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1013 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1012, i32 0, i32 1
  %1014 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1013, i32 0, i32 0
  %1015 = load i64, i64* %1014, align 8
  %1016 = add i64 %1015, 1
  %1017 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = urem i64 %1016, %1018
  %1020 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1021 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1020, i32 0, i32 1
  %1022 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1021, i32 0, i32 0
  store i64 %1019, i64* %1022, align 8
  store i8 1, i8* %7, align 1
  %1023 = load i32, i32* @SIGIO, align 4
  %1024 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1025 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1024, i32 0, i32 0
  %1026 = load i32, i32* %1025, align 8
  %1027 = call i32 @send_sig(i32 %1023, i32 %1026, i32 0)
  br label %1028

1028:                                             ; preds = %951, %931
  br label %1029

1029:                                             ; preds = %1028, %914
  br label %1030

1030:                                             ; preds = %1029
  %1031 = load i8, i8* %9, align 1
  %1032 = add i8 %1031, 1
  store i8 %1032, i8* %9, align 1
  br label %910

1033:                                             ; preds = %910
  br label %1034

1034:                                             ; preds = %1033, %895
  %1035 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1036 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1035, i32 0, i32 2
  %1037 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1036, i32 0, i32 0
  %1038 = load i32*, i32** %1037, align 8
  %1039 = load i8, i8* %6, align 1
  %1040 = zext i8 %1039 to i64
  %1041 = getelementptr inbounds i32, i32* %1038, i64 %1040
  %1042 = load i32, i32* %1041, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = and i64 %1043, 4294901760
  %1045 = load i32, i32* @APCI1710_CHRONOMETER, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = icmp eq i64 %1044, %1046
  br i1 %1047, label %1048, label %1168

1048:                                             ; preds = %1034
  %1049 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1050 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1049, i32 0, i32 2
  %1051 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1050, i32 0, i32 1
  %1052 = load i64, i64* %1051, align 8
  %1053 = add nsw i64 %1052, 12
  %1054 = load i8, i8* %6, align 1
  %1055 = zext i8 %1054 to i32
  %1056 = mul nsw i32 64, %1055
  %1057 = sext i32 %1056 to i64
  %1058 = add nsw i64 %1053, %1057
  %1059 = call i32 @inl(i64 %1058)
  store i32 %1059, i32* %12, align 4
  %1060 = load i32, i32* %12, align 4
  %1061 = and i32 %1060, 8
  %1062 = icmp eq i32 %1061, 8
  br i1 %1062, label %1063, label %1167

1063:                                             ; preds = %1048
  %1064 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1065 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1064, i32 0, i32 2
  %1066 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1065, i32 0, i32 1
  %1067 = load i64, i64* %1066, align 8
  %1068 = add nsw i64 %1067, 32
  %1069 = load i8, i8* %6, align 1
  %1070 = zext i8 %1069 to i32
  %1071 = mul nsw i32 64, %1070
  %1072 = sext i32 %1071 to i64
  %1073 = add nsw i64 %1068, %1072
  %1074 = call i32 @outl(i32 0, i64 %1073)
  %1075 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %1076 = bitcast %union.str_ModuleInfo* %1075 to %struct.TYPE_19__*
  %1077 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1076, i32 0, i32 0
  %1078 = load i64, i64* %1077, align 8
  %1079 = load i64, i64* @APCI1710_ENABLE, align 8
  %1080 = icmp eq i64 %1078, %1079
  br i1 %1080, label %1081, label %1093

1081:                                             ; preds = %1063
  %1082 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1083 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1082, i32 0, i32 2
  %1084 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1083, i32 0, i32 1
  %1085 = load i64, i64* %1084, align 8
  %1086 = add nsw i64 %1085, 36
  %1087 = load i8, i8* %6, align 1
  %1088 = zext i8 %1087 to i32
  %1089 = mul nsw i32 64, %1088
  %1090 = sext i32 %1089 to i64
  %1091 = add nsw i64 %1086, %1090
  %1092 = call i32 @outl(i32 0, i64 %1091)
  br label %1093

1093:                                             ; preds = %1081, %1063
  %1094 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1095 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1094, i32 0, i32 2
  %1096 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1095, i32 0, i32 1
  %1097 = load i64, i64* %1096, align 8
  %1098 = add nsw i64 %1097, 4
  %1099 = load i8, i8* %6, align 1
  %1100 = zext i8 %1099 to i32
  %1101 = mul nsw i32 64, %1100
  %1102 = sext i32 %1101 to i64
  %1103 = add nsw i64 %1098, %1102
  %1104 = call i32 @inl(i64 %1103)
  store i32 %1104, i32* %13, align 4
  %1105 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %1106 = bitcast %union.str_ModuleInfo* %1105 to %struct.TYPE_19__*
  %1107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %1106, i32 0, i32 1
  %1108 = load i64, i64* %1107, align 8
  %1109 = icmp ne i64 %1108, 0
  br i1 %1109, label %1110, label %1166

1110:                                             ; preds = %1093
  %1111 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1111, i32 0, i32 1
  %1113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1112, i32 0, i32 2
  %1114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1113, align 8
  %1115 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1115, i32 0, i32 1
  %1117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1116, i32 0, i32 0
  %1118 = load i64, i64* %1117, align 8
  %1119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1114, i64 %1118
  %1120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1119, i32 0, i32 0
  store i32 128, i32* %1120, align 4
  %1121 = load i8, i8* %6, align 1
  %1122 = zext i8 %1121 to i32
  %1123 = shl i32 1, %1122
  %1124 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1124, i32 0, i32 1
  %1126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1125, i32 0, i32 2
  %1127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1126, align 8
  %1128 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1128, i32 0, i32 1
  %1130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1129, i32 0, i32 0
  %1131 = load i64, i64* %1130, align 8
  %1132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1127, i64 %1131
  %1133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1132, i32 0, i32 1
  store i32 %1123, i32* %1133, align 4
  %1134 = load i32, i32* %13, align 4
  %1135 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1135, i32 0, i32 1
  %1137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1136, i32 0, i32 2
  %1138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1137, align 8
  %1139 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1140, i32 0, i32 0
  %1142 = load i64, i64* %1141, align 8
  %1143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1138, i64 %1142
  %1144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1143, i32 0, i32 2
  store i32 %1134, i32* %1144, align 4
  %1145 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1145, i32 0, i32 1
  %1147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1146, i32 0, i32 1
  %1148 = load i32, i32* %1147, align 8
  %1149 = add nsw i32 %1148, 1
  store i32 %1149, i32* %1147, align 8
  %1150 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1150, i32 0, i32 1
  %1152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1151, i32 0, i32 0
  %1153 = load i64, i64* %1152, align 8
  %1154 = add i64 %1153, 1
  %1155 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %1156 = sext i32 %1155 to i64
  %1157 = urem i64 %1154, %1156
  %1158 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1158, i32 0, i32 1
  %1160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1159, i32 0, i32 0
  store i64 %1157, i64* %1160, align 8
  store i8 1, i8* %7, align 1
  %1161 = load i32, i32* @SIGIO, align 4
  %1162 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1162, i32 0, i32 0
  %1164 = load i32, i32* %1163, align 8
  %1165 = call i32 @send_sig(i32 %1161, i32 %1164, i32 0)
  br label %1166

1166:                                             ; preds = %1110, %1093
  br label %1167

1167:                                             ; preds = %1166, %1048
  br label %1168

1168:                                             ; preds = %1167, %1034
  %1169 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1169, i32 0, i32 2
  %1171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1170, i32 0, i32 0
  %1172 = load i32*, i32** %1171, align 8
  %1173 = load i8, i8* %6, align 1
  %1174 = zext i8 %1173 to i64
  %1175 = getelementptr inbounds i32, i32* %1172, i64 %1174
  %1176 = load i32, i32* %1175, align 4
  %1177 = sext i32 %1176 to i64
  %1178 = and i64 %1177, 4294901760
  %1179 = load i32, i32* @APCI1710_PULSE_ENCODER, align 4
  %1180 = sext i32 %1179 to i64
  %1181 = icmp eq i64 %1178, %1180
  br i1 %1181, label %1182, label %1298

1182:                                             ; preds = %1168
  %1183 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1183, i32 0, i32 2
  %1185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1184, i32 0, i32 1
  %1186 = load i64, i64* %1185, align 8
  %1187 = add nsw i64 %1186, 20
  %1188 = load i8, i8* %6, align 1
  %1189 = zext i8 %1188 to i32
  %1190 = mul nsw i32 64, %1189
  %1191 = sext i32 %1190 to i64
  %1192 = add nsw i64 %1187, %1191
  %1193 = call i32 @inl(i64 %1192)
  store i32 %1193, i32* %15, align 4
  %1194 = load i32, i32* %15, align 4
  %1195 = and i32 %1194, 15
  %1196 = icmp ne i32 %1195, 0
  br i1 %1196, label %1197, label %1297

1197:                                             ; preds = %1182
  store i8 0, i8* %10, align 1
  br label %1198

1198:                                             ; preds = %1293, %1197
  %1199 = load i8, i8* %10, align 1
  %1200 = zext i8 %1199 to i32
  %1201 = icmp slt i32 %1200, 4
  br i1 %1201, label %1202, label %1296

1202:                                             ; preds = %1198
  %1203 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %1204 = bitcast %union.str_ModuleInfo* %1203 to %struct.TYPE_22__*
  %1205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1204, i32 0, i32 1
  %1206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1205, align 8
  %1207 = load i8, i8* %10, align 1
  %1208 = zext i8 %1207 to i64
  %1209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1206, i64 %1208
  %1210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1209, i32 0, i32 0
  %1211 = load i32, i32* %1210, align 4
  %1212 = icmp eq i32 %1211, 1
  br i1 %1212, label %1213, label %1292

1213:                                             ; preds = %1202
  %1214 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %1215 = bitcast %union.str_ModuleInfo* %1214 to %struct.TYPE_22__*
  %1216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1215, i32 0, i32 0
  %1217 = load i8, i8* %1216, align 8
  %1218 = zext i8 %1217 to i32
  %1219 = load i8, i8* %10, align 1
  %1220 = zext i8 %1219 to i32
  %1221 = ashr i32 %1218, %1220
  %1222 = and i32 %1221, 1
  %1223 = icmp eq i32 %1222, 1
  br i1 %1223, label %1224, label %1292

1224:                                             ; preds = %1213
  %1225 = load i32, i32* %15, align 4
  %1226 = load i8, i8* %10, align 1
  %1227 = zext i8 %1226 to i32
  %1228 = lshr i32 %1225, %1227
  %1229 = and i32 %1228, 1
  %1230 = icmp eq i32 %1229, 1
  br i1 %1230, label %1231, label %1292

1231:                                             ; preds = %1224
  %1232 = load i8, i8* %10, align 1
  %1233 = zext i8 %1232 to i32
  %1234 = zext i32 %1233 to i64
  %1235 = shl i64 256, %1234
  %1236 = trunc i64 %1235 to i32
  %1237 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1237, i32 0, i32 1
  %1239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1238, i32 0, i32 2
  %1240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1239, align 8
  %1241 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1241, i32 0, i32 1
  %1243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1242, i32 0, i32 0
  %1244 = load i64, i64* %1243, align 8
  %1245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1240, i64 %1244
  %1246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1245, i32 0, i32 0
  store i32 %1236, i32* %1246, align 4
  %1247 = load i8, i8* %6, align 1
  %1248 = zext i8 %1247 to i32
  %1249 = shl i32 1, %1248
  %1250 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1251, i32 0, i32 2
  %1253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1252, align 8
  %1254 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1254, i32 0, i32 1
  %1256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1255, i32 0, i32 0
  %1257 = load i64, i64* %1256, align 8
  %1258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1253, i64 %1257
  %1259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1258, i32 0, i32 1
  store i32 %1249, i32* %1259, align 4
  %1260 = load i32, i32* %13, align 4
  %1261 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1261, i32 0, i32 1
  %1263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1262, i32 0, i32 2
  %1264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1263, align 8
  %1265 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1265, i32 0, i32 1
  %1267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1266, i32 0, i32 0
  %1268 = load i64, i64* %1267, align 8
  %1269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1264, i64 %1268
  %1270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1269, i32 0, i32 2
  store i32 %1260, i32* %1270, align 4
  %1271 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1271, i32 0, i32 1
  %1273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1272, i32 0, i32 1
  %1274 = load i32, i32* %1273, align 8
  %1275 = add nsw i32 %1274, 1
  store i32 %1275, i32* %1273, align 8
  %1276 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1277 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1276, i32 0, i32 1
  %1278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1277, i32 0, i32 0
  %1279 = load i64, i64* %1278, align 8
  %1280 = add i64 %1279, 1
  %1281 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %1282 = sext i32 %1281 to i64
  %1283 = urem i64 %1280, %1282
  %1284 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1284, i32 0, i32 1
  %1286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1285, i32 0, i32 0
  store i64 %1283, i64* %1286, align 8
  store i8 1, i8* %7, align 1
  %1287 = load i32, i32* @SIGIO, align 4
  %1288 = load %struct.TYPE_25__*, %struct.TYPE_25__** @devpriv, align 8
  %1289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1288, i32 0, i32 0
  %1290 = load i32, i32* %1289, align 8
  %1291 = call i32 @send_sig(i32 %1287, i32 %1290, i32 0)
  br label %1292

1292:                                             ; preds = %1231, %1224, %1213, %1202
  br label %1293

1293:                                             ; preds = %1292
  %1294 = load i8, i8* %10, align 1
  %1295 = add i8 %1294, 1
  store i8 %1295, i8* %10, align 1
  br label %1198

1296:                                             ; preds = %1198
  br label %1297

1297:                                             ; preds = %1296, %1182
  br label %1298

1298:                                             ; preds = %1297, %1168
  br label %1299

1299:                                             ; preds = %1298
  %1300 = load i8, i8* %6, align 1
  %1301 = add i8 %1300, 1
  store i8 %1301, i8* %6, align 1
  %1302 = load %union.str_ModuleInfo*, %union.str_ModuleInfo** %16, align 8
  %1303 = getelementptr inbounds %union.str_ModuleInfo, %union.str_ModuleInfo* %1302, i32 1
  store %union.str_ModuleInfo* %1303, %union.str_ModuleInfo** %16, align 8
  br label %20

1304:                                             ; preds = %20
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
