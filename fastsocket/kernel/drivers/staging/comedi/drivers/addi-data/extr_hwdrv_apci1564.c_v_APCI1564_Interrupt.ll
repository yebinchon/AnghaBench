; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_v_APCI1564_Interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1564.c_v_APCI1564_Interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i8*, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1564_DIGITAL_IP = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_IP_IRQ = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP_IRQ = common dso_local global i64 0, align 8
@APCI1564_TIMER = common dso_local global i64 0, align 8
@APCI1564_TCW_IRQ = common dso_local global i64 0, align 8
@APCI1564_COUNTER1 = common dso_local global i64 0, align 8
@APCI1564_COUNTER2 = common dso_local global i64 0, align 8
@APCI1564_COUNTER3 = common dso_local global i64 0, align 8
@APCI1564_COUNTER4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"\0AInterrupt from unknown source\0A\00", align 1
@APCI1564_DIGITAL_IP_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@ui_InterruptStatus_1564 = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@APCI1564_DIGITAL_OP_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@ui_Type = common dso_local global i32 0, align 4
@APCI1564_DIGITAL_OP_INTERRUPT = common dso_local global i64 0, align 8
@ADDIDATA_TIMER = common dso_local global i8* null, align 8
@APCI1564_TCW_PROG = common dso_local global i64 0, align 8
@ADDIDATA_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @v_APCI1564_Interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v_APCI1564_Interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.comedi_device*
  store %struct.comedi_device* %15, %struct.comedi_device** %5, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @APCI1564_DIGITAL_IP_IRQ, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inl(i64 %22)
  %24 = and i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @APCI1564_DIGITAL_OP_IRQ, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inl(i64 %31)
  %33 = and i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @APCI1564_TIMER, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inl(i64 %40)
  %42 = and i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @APCI1564_COUNTER1, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inl(i64 %49)
  %51 = and i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @APCI1564_COUNTER2, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @inl(i64 %58)
  %60 = and i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @APCI1564_COUNTER3, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @inl(i64 %67)
  %69 = and i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @APCI1564_COUNTER4, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i64, i64* @APCI1564_TCW_IRQ, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @inl(i64 %76)
  %78 = and i32 %77, 1
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %2
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96, %93, %90, %87, %84, %81, %2
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %145

104:                                              ; preds = %101
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i64, i64* @APCI1564_DIGITAL_IP_IRQ, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @inl(i64 %111)
  store i32 %112, i32* %7, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i64, i64* @APCI1564_DIGITAL_IP_IRQ, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outl(i32 0, i64 %119)
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i64, i64* @APCI1564_DIGITAL_IP_INTERRUPT_STATUS, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @inl(i64 %127)
  store i32 %128, i32* @ui_InterruptStatus_1564, align 4
  %129 = load i32, i32* @ui_InterruptStatus_1564, align 4
  %130 = and i32 %129, 1048560
  store i32 %130, i32* @ui_InterruptStatus_1564, align 4
  %131 = load i32, i32* @SIGIO, align 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @send_sig(i32 %131, i32 %134, i32 0)
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @APCI1564_DIGITAL_IP, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i64, i64* @APCI1564_DIGITAL_IP_IRQ, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @outl(i32 %136, i64 %143)
  br label %387

145:                                              ; preds = %101
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %171

148:                                              ; preds = %145
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %153 = add nsw i64 %151, %152
  %154 = load i64, i64* @APCI1564_DIGITAL_OP_INTERRUPT_STATUS, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @inl(i64 %155)
  %157 = and i32 %156, 3
  store i32 %157, i32* @ui_Type, align 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %162 = add nsw i64 %160, %161
  %163 = load i64, i64* @APCI1564_DIGITAL_OP_INTERRUPT, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @outl(i32 0, i64 %164)
  %166 = load i32, i32* @SIGIO, align 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @send_sig(i32 %166, i32 %169, i32 0)
  br label %171

171:                                              ; preds = %148, %145
  %172 = load i32, i32* %8, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %214

174:                                              ; preds = %171
  %175 = load i8*, i8** @ADDIDATA_TIMER, align 8
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %213

182:                                              ; preds = %174
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @APCI1564_TIMER, align 8
  %187 = add nsw i64 %185, %186
  %188 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @inl(i64 %189)
  store i32 %190, i32* %13, align 4
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @APCI1564_TIMER, align 8
  %195 = add nsw i64 %193, %194
  %196 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @outl(i32 0, i64 %197)
  %199 = load i32, i32* @SIGIO, align 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @send_sig(i32 %199, i32 %202, i32 0)
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @APCI1564_TIMER, align 8
  %209 = add nsw i64 %207, %208
  %210 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @outl(i32 %204, i64 %211)
  br label %213

213:                                              ; preds = %182, %174
  br label %214

214:                                              ; preds = %213, %171
  %215 = load i32, i32* %9, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %257

217:                                              ; preds = %214
  %218 = load i8*, i8** @ADDIDATA_COUNTER, align 8
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 2
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %256

225:                                              ; preds = %217
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @APCI1564_COUNTER1, align 8
  %230 = add nsw i64 %228, %229
  %231 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @inl(i64 %232)
  store i32 %233, i32* %13, align 4
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @APCI1564_COUNTER1, align 8
  %238 = add nsw i64 %236, %237
  %239 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @outl(i32 0, i64 %240)
  %242 = load i32, i32* @SIGIO, align 4
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @send_sig(i32 %242, i32 %245, i32 0)
  %247 = load i32, i32* %13, align 4
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @APCI1564_COUNTER1, align 8
  %252 = add nsw i64 %250, %251
  %253 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @outl(i32 %247, i64 %254)
  br label %256

256:                                              ; preds = %225, %217
  br label %257

257:                                              ; preds = %256, %214
  %258 = load i32, i32* %10, align 4
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %300

260:                                              ; preds = %257
  %261 = load i8*, i8** @ADDIDATA_COUNTER, align 8
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 2
  store i8* %261, i8** %263, align 8
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %299

268:                                              ; preds = %260
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @APCI1564_COUNTER2, align 8
  %273 = add nsw i64 %271, %272
  %274 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @inl(i64 %275)
  store i32 %276, i32* %13, align 4
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @APCI1564_COUNTER2, align 8
  %281 = add nsw i64 %279, %280
  %282 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %283 = add nsw i64 %281, %282
  %284 = call i32 @outl(i32 0, i64 %283)
  %285 = load i32, i32* @SIGIO, align 4
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @send_sig(i32 %285, i32 %288, i32 0)
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @APCI1564_COUNTER2, align 8
  %295 = add nsw i64 %293, %294
  %296 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i32 @outl(i32 %290, i64 %297)
  br label %299

299:                                              ; preds = %268, %260
  br label %300

300:                                              ; preds = %299, %257
  %301 = load i32, i32* %11, align 4
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %303, label %343

303:                                              ; preds = %300
  %304 = load i8*, i8** @ADDIDATA_COUNTER, align 8
  %305 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 2
  store i8* %304, i8** %306, align 8
  %307 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %342

311:                                              ; preds = %303
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @APCI1564_COUNTER3, align 8
  %316 = add nsw i64 %314, %315
  %317 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %318 = add nsw i64 %316, %317
  %319 = call i32 @inl(i64 %318)
  store i32 %319, i32* %13, align 4
  %320 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @APCI1564_COUNTER3, align 8
  %324 = add nsw i64 %322, %323
  %325 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %326 = add nsw i64 %324, %325
  %327 = call i32 @outl(i32 0, i64 %326)
  %328 = load i32, i32* @SIGIO, align 4
  %329 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @send_sig(i32 %328, i32 %331, i32 0)
  %333 = load i32, i32* %13, align 4
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @APCI1564_COUNTER3, align 8
  %338 = add nsw i64 %336, %337
  %339 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %340 = add nsw i64 %338, %339
  %341 = call i32 @outl(i32 %333, i64 %340)
  br label %342

342:                                              ; preds = %311, %303
  br label %343

343:                                              ; preds = %342, %300
  %344 = load i32, i32* %12, align 4
  %345 = icmp eq i32 %344, 1
  br i1 %345, label %346, label %386

346:                                              ; preds = %343
  %347 = load i8*, i8** @ADDIDATA_COUNTER, align 8
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 2
  store i8* %347, i8** %349, align 8
  %350 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 2
  %352 = load i8*, i8** %351, align 8
  %353 = icmp ne i8* %352, null
  br i1 %353, label %354, label %385

354:                                              ; preds = %346
  %355 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %356 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @APCI1564_COUNTER4, align 8
  %359 = add nsw i64 %357, %358
  %360 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %361 = add nsw i64 %359, %360
  %362 = call i32 @inl(i64 %361)
  store i32 %362, i32* %13, align 4
  %363 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @APCI1564_COUNTER4, align 8
  %367 = add nsw i64 %365, %366
  %368 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %369 = add nsw i64 %367, %368
  %370 = call i32 @outl(i32 0, i64 %369)
  %371 = load i32, i32* @SIGIO, align 4
  %372 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @send_sig(i32 %371, i32 %374, i32 0)
  %376 = load i32, i32* %13, align 4
  %377 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @APCI1564_COUNTER4, align 8
  %381 = add nsw i64 %379, %380
  %382 = load i64, i64* @APCI1564_TCW_PROG, align 8
  %383 = add nsw i64 %381, %382
  %384 = call i32 @outl(i32 %376, i64 %383)
  br label %385

385:                                              ; preds = %354, %346
  br label %386

386:                                              ; preds = %385, %343
  br label %387

387:                                              ; preds = %386, %104
  ret void
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
