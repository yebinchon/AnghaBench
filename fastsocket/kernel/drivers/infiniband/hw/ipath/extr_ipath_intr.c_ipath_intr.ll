; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_ipath_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_ipath_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ipath_devdata = type { i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_5__*, i32*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ipath_intr.unexpected = internal global i32 0, align 4
@ipath_stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@IPATH_PRESENT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IPATH_INITTED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"interrupt with unknown interrupts %Lx set\0A\00", align 1
@INFINIPATH_I_ERROR = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"intr stat=0x%Lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"error interrupt (%Lx), but no error bits set!\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Read of error status failed (all bits set); ignoring\0A\00", align 1
@INFINIPATH_I_GPIO = common dso_local global i32 0, align 4
@IPATH_GPIO_ERRINTR_MASK = common dso_local global i64 0, align 8
@IPATH_GPIO_ERRINTRS = common dso_local global i32 0, align 4
@IPATH_GPIO_RXUVL_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"FlowCtl on UnsupVL\0A\00", align 1
@IPATH_GPIO_OVRUN_BIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Overrun Threshold exceeded\0A\00", align 1
@IPATH_GPIO_LLI_BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Local Link Integrity error\0A\00", align 1
@IPATH_GPIO_PORT0_BIT = common dso_local global i32 0, align 4
@IPATH_GPIO_INTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Unexpected GPIO IRQ bits %x\0A\00", align 1
@INFINIPATH_I_SDMAINT = common dso_local global i32 0, align 4
@INFINIPATH_I_SDMADISABLED = common dso_local global i32 0, align 4
@INFINIPATH_I_SPIOBUFAVAIL = common dso_local global i32 0, align 4
@INFINIPATH_S_PIOINTBUFAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipath_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.ipath_devdata*
  store %struct.ipath_devdata* %17, %struct.ipath_devdata** %6, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ipath_stats, i32 0, i32 2), align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ipath_stats, i32 0, i32 2), align 4
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %24, %2
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %31 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IPATH_PRESENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %422

38:                                               ; preds = %29
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %40 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IPATH_INITTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %47 = call i32 @ipath_bad_intr(%struct.ipath_devdata* %46, i32* @ipath_intr.unexpected)
  %48 = load i32, i32* @IRQ_NONE, align 4
  store i32 %48, i32* %10, align 4
  br label %420

49:                                               ; preds = %38
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %51 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %52 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %51, i32 0, i32 10
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ipath_read_ireg(%struct.ipath_devdata* %50, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ipath_stats, i32 0, i32 1), align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ipath_stats, i32 0, i32 1), align 4
  %66 = load i32, i32* @IRQ_NONE, align 4
  store i32 %66, i32* %10, align 4
  br label %420

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, -1
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %75 = call i32 @ipath_bad_regread(%struct.ipath_devdata* %74)
  %76 = load i32, i32* @IRQ_NONE, align 4
  store i32 %76, i32* %10, align 4
  br label %420

77:                                               ; preds = %67
  %78 = load i32, i32* @ipath_intr.unexpected, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* @ipath_intr.unexpected, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %84 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %82, %86
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %81
  %91 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %95 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %96, -1
  %98 = sext i32 %97 to i64
  %99 = and i64 %93, %98
  %100 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %99)
  br label %113

101:                                              ; preds = %81
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @INFINIPATH_I_ERROR, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i32, i32* @VERBOSE, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = call i32 @ipath_cdbg(i32 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  br label %112

112:                                              ; preds = %107, %101
  br label %113

113:                                              ; preds = %112, %90
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @INFINIPATH_I_ERROR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %152

118:                                              ; preds = %113
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ipath_stats, i32 0, i32 0), align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ipath_stats, i32 0, i32 0), align 4
  %121 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %122 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %123 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %122, i32 0, i32 10
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %121, i32 %126)
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %9, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %118
  %131 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %132 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %131, i32 0, i32 15
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = call i32 @dev_info(i32* %134, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %136)
  br label %151

138:                                              ; preds = %118
  %139 = load i64, i64* %9, align 8
  %140 = icmp eq i64 %139, -1
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %143 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %142, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %150

144:                                              ; preds = %138
  %145 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @handle_errors(%struct.ipath_devdata* %145, i64 %146)
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %144, %141
  br label %151

151:                                              ; preds = %150, %130
  br label %152

152:                                              ; preds = %151, %113
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @INFINIPATH_I_GPIO, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %306

157:                                              ; preds = %152
  store i64 0, i64* %13, align 8
  %158 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %159 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %160 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %159, i32 0, i32 10
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @ipath_read_kreg32(%struct.ipath_devdata* %158, i32 %163)
  store i64 %164, i64* %12, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* @IPATH_GPIO_ERRINTR_MASK, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %225

169:                                              ; preds = %157
  %170 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %171 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @IPATH_GPIO_ERRINTRS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %225

176:                                              ; preds = %169
  %177 = load i64, i64* %12, align 8
  %178 = load i64, i64* @IPATH_GPIO_ERRINTR_MASK, align 8
  %179 = and i64 %177, %178
  %180 = load i64, i64* %13, align 8
  %181 = or i64 %180, %179
  store i64 %181, i64* %13, align 8
  %182 = load i64, i64* %12, align 8
  %183 = load i32, i32* @IPATH_GPIO_RXUVL_BIT, align 4
  %184 = shl i32 1, %183
  %185 = sext i32 %184 to i64
  %186 = and i64 %182, %185
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %176
  %189 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %190 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %191 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %190, i32 0, i32 14
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %188, %176
  %195 = load i64, i64* %12, align 8
  %196 = load i32, i32* @IPATH_GPIO_OVRUN_BIT, align 4
  %197 = shl i32 1, %196
  %198 = sext i32 %197 to i64
  %199 = and i64 %195, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %194
  %202 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %203 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %204 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %203, i32 0, i32 13
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %201, %194
  %208 = load i64, i64* %12, align 8
  %209 = load i32, i32* @IPATH_GPIO_LLI_BIT, align 4
  %210 = shl i32 1, %209
  %211 = sext i32 %210 to i64
  %212 = and i64 %208, %211
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %216 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %217 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %216, i32 0, i32 12
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %207
  %221 = load i64, i64* @IPATH_GPIO_ERRINTR_MASK, align 8
  %222 = xor i64 %221, -1
  %223 = load i64, i64* %12, align 8
  %224 = and i64 %223, %222
  store i64 %224, i64* %12, align 8
  br label %225

225:                                              ; preds = %220, %169, %157
  %226 = load i64, i64* %12, align 8
  %227 = load i32, i32* @IPATH_GPIO_PORT0_BIT, align 4
  %228 = shl i32 1, %227
  %229 = sext i32 %228 to i64
  %230 = and i64 %226, %229
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %251

232:                                              ; preds = %225
  %233 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %234 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @IPATH_GPIO_INTR, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %232
  %240 = load i32, i32* @IPATH_GPIO_PORT0_BIT, align 4
  %241 = shl i32 1, %240
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %13, align 8
  %244 = or i64 %243, %242
  store i64 %244, i64* %13, align 8
  %245 = load i32, i32* @IPATH_GPIO_PORT0_BIT, align 4
  %246 = shl i32 1, %245
  %247 = xor i32 %246, -1
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %12, align 8
  %250 = and i64 %249, %248
  store i64 %250, i64* %12, align 8
  store i32 1, i32* %8, align 4
  br label %251

251:                                              ; preds = %239, %232, %225
  %252 = load i64, i64* %12, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %292

254:                                              ; preds = %251
  %255 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %256 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %14, align 8
  %258 = load i64, i64* %14, align 8
  %259 = load i64, i64* %12, align 8
  %260 = and i64 %258, %259
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %291

262:                                              ; preds = %254
  %263 = load i64, i64* %12, align 8
  %264 = load i64, i64* %14, align 8
  %265 = and i64 %263, %264
  %266 = call i32 (i8*, ...) @ipath_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %265)
  %267 = load i64, i64* %12, align 8
  %268 = load i64, i64* %14, align 8
  %269 = and i64 %267, %268
  %270 = load i64, i64* %13, align 8
  %271 = or i64 %270, %269
  store i64 %271, i64* %13, align 8
  %272 = load i64, i64* %12, align 8
  %273 = load i64, i64* %14, align 8
  %274 = and i64 %272, %273
  %275 = xor i64 %274, -1
  %276 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %277 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = and i64 %278, %275
  store i64 %279, i64* %277, align 8
  %280 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %281 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %282 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %281, i32 0, i32 10
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %287 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %280, i32 %285, i32 %289)
  br label %291

291:                                              ; preds = %262, %254
  br label %292

292:                                              ; preds = %291, %251
  %293 = load i64, i64* %13, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %305

295:                                              ; preds = %292
  %296 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %297 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %298 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %297, i32 0, i32 10
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load i64, i64* %13, align 8
  %303 = trunc i64 %302 to i32
  %304 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %296, i32 %301, i32 %303)
  br label %305

305:                                              ; preds = %295, %292
  br label %306

306:                                              ; preds = %305, %152
  %307 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %308 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %309 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %308, i32 0, i32 10
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %7, align 4
  %314 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %307, i32 %312, i32 %313)
  %315 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %316 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = shl i64 1, %317
  %319 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %320 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = shl i64 1, %321
  %323 = or i64 %318, %322
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %11, align 4
  %325 = load i32, i32* %8, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %306
  %328 = load i32, i32* %7, align 4
  %329 = load i32, i32* %11, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %343

332:                                              ; preds = %327, %306
  %333 = load i32, i32* %11, align 4
  %334 = xor i32 %333, -1
  %335 = load i32, i32* %7, align 4
  %336 = and i32 %335, %334
  store i32 %336, i32* %7, align 4
  %337 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %338 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %337, i32 0, i32 11
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @ipath_kreceive(i32 %341)
  br label %343

343:                                              ; preds = %332, %327
  %344 = load i32, i32* %7, align 4
  %345 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %346 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %349 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %348, i32 0, i32 4
  %350 = load i64, i64* %349, align 8
  %351 = trunc i64 %350 to i32
  %352 = shl i32 %347, %351
  %353 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %354 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %353, i32 0, i32 7
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %357 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %356, i32 0, i32 5
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = shl i32 %355, %359
  %361 = or i32 %352, %360
  %362 = and i32 %344, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %343
  %365 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %366 = load i32, i32* %7, align 4
  %367 = call i32 @handle_urcv(%struct.ipath_devdata* %365, i32 %366)
  br label %368

368:                                              ; preds = %364, %343
  %369 = load i32, i32* %7, align 4
  %370 = load i32, i32* @INFINIPATH_I_SDMAINT, align 4
  %371 = load i32, i32* @INFINIPATH_I_SDMADISABLED, align 4
  %372 = or i32 %370, %371
  %373 = and i32 %369, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %368
  %376 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %377 = load i32, i32* %7, align 4
  %378 = call i32 @handle_sdma_intr(%struct.ipath_devdata* %376, i32 %377)
  br label %379

379:                                              ; preds = %375, %368
  %380 = load i32, i32* %7, align 4
  %381 = load i32, i32* @INFINIPATH_I_SPIOBUFAVAIL, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %418

384:                                              ; preds = %379
  %385 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %386 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %385, i32 0, i32 9
  %387 = load i64, i64* %15, align 8
  %388 = call i32 @spin_lock_irqsave(i32* %386, i64 %387)
  %389 = load i32, i32* @INFINIPATH_S_PIOINTBUFAVAIL, align 4
  %390 = xor i32 %389, -1
  %391 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %392 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %391, i32 0, i32 8
  %393 = load i32, i32* %392, align 8
  %394 = and i32 %393, %390
  store i32 %394, i32* %392, align 8
  %395 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %396 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %397 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %396, i32 0, i32 10
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %402 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %401, i32 0, i32 8
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %395, i32 %400, i32 %403)
  %405 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %406 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %407 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %406, i32 0, i32 10
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %405, i32 %410)
  %412 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %413 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %412, i32 0, i32 9
  %414 = load i64, i64* %15, align 8
  %415 = call i32 @spin_unlock_irqrestore(i32* %413, i64 %414)
  %416 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %417 = call i32 @handle_layer_pioavail(%struct.ipath_devdata* %416)
  br label %418

418:                                              ; preds = %384, %379
  %419 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %419, i32* %10, align 4
  br label %420

420:                                              ; preds = %418, %73, %63, %45
  %421 = load i32, i32* %10, align 4
  store i32 %421, i32* %3, align 4
  br label %422

422:                                              ; preds = %420, %36
  %423 = load i32, i32* %3, align 4
  ret i32 %423
}

declare dso_local i32 @ipath_bad_intr(%struct.ipath_devdata*, i32*) #1

declare dso_local i32 @ipath_read_ireg(%struct.ipath_devdata*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipath_bad_regread(%struct.ipath_devdata*) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, ...) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64) #1

declare dso_local i64 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @handle_errors(%struct.ipath_devdata*, i64) #1

declare dso_local i64 @ipath_read_kreg32(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_dbg(i8*, ...) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_kreceive(i32) #1

declare dso_local i32 @handle_urcv(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @handle_sdma_intr(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @handle_layer_pioavail(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
