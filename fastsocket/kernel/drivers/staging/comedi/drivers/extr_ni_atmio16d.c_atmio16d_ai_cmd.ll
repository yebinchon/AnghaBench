; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_atmio16d_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_atmio16d_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32* }

@COMREG1_SCANEN = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@COM_REG_1 = common dso_local global i64 0, align 8
@COMREG2_SCN2 = common dso_local global i32 0, align 4
@COM_REG_2 = common dso_local global i64 0, align 8
@MUX_CNTR_REG = common dso_local global i64 0, align 8
@MUX_GAIN_REG = common dso_local global i64 0, align 8
@CLOCK_1_MHZ = common dso_local global i32 0, align 4
@CLOCK_100_KHZ = common dso_local global i32 0, align 4
@CLOCK_10_KHZ = common dso_local global i32 0, align 4
@CLOCK_1_KHZ = common dso_local global i32 0, align 4
@AM9513A_COM_REG = common dso_local global i64 0, align 8
@AM9513A_DATA_REG = common dso_local global i64 0, align 8
@COMREG1_1632CNT = common dso_local global i32 0, align 4
@AD_CLEAR_REG = common dso_local global i64 0, align 8
@INT2CLR_REG = common dso_local global i64 0, align 8
@COMREG1_DAQEN = common dso_local global i32 0, align 4
@COMREG1_CONVINTEN = common dso_local global i32 0, align 4
@COMREG2_INTEN = common dso_local global i32 0, align 4
@START_DAQ_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @atmio16d_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmio16d_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %5, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = call i32 @reset_counters(%struct.comedi_device* %17)
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %43

27:                                               ; preds = %2
  %28 = load i32, i32* @COMREG1_SCANEN, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @COM_REG_1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outw(i32 %36, i64 %41)
  br label %72

43:                                               ; preds = %2
  %44 = load i32, i32* @COMREG1_SCANEN, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @COMREG2_SCN2, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @COM_REG_1, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %56, i64 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @COM_REG_2, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outw(i32 %65, i64 %70)
  br label %72

72:                                               ; preds = %43, %27
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %124, %72
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %127

79:                                               ; preds = %73
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @CR_CHAN(i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @CR_RANGE(i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MUX_CNTR_REG, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outw(i32 %96, i64 %101)
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = shl i32 %104, 6
  %106 = or i32 %103, %105
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %79
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, 16
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %79
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MUX_GAIN_REG, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @outw(i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %73

127:                                              ; preds = %73
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %130, 65536000
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32, i32* @CLOCK_1_MHZ, align 4
  store i32 %133, i32* %7, align 4
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sdiv i32 %136, 1000
  store i32 %137, i32* %6, align 4
  br label %174

138:                                              ; preds = %127
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %141, 655360000
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32, i32* @CLOCK_100_KHZ, align 4
  store i32 %144, i32* %7, align 4
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sdiv i32 %147, 10000
  store i32 %148, i32* %6, align 4
  br label %173

149:                                              ; preds = %138
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp ule i32 %152, -1
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load i32, i32* @CLOCK_10_KHZ, align 4
  store i32 %155, i32* %7, align 4
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sdiv i32 %158, 100000
  store i32 %159, i32* %6, align 4
  br label %172

160:                                              ; preds = %149
  %161 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %162 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp ule i32 %163, -1
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* @CLOCK_1_KHZ, align 4
  store i32 %166, i32* %7, align 4
  %167 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %168 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = sdiv i32 %169, 1000000
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %165, %160
  br label %172

172:                                              ; preds = %171, %154
  br label %173

173:                                              ; preds = %172, %143
  br label %174

174:                                              ; preds = %173, %132
  %175 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @AM9513A_COM_REG, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @outw(i32 65283, i64 %179)
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %183 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @AM9513A_DATA_REG, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @outw(i32 %181, i64 %186)
  %188 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %189 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @AM9513A_COM_REG, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @outw(i32 65291, i64 %192)
  %194 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %195 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AM9513A_DATA_REG, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @outw(i32 2, i64 %198)
  %200 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %201 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @AM9513A_COM_REG, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @outw(i32 65348, i64 %204)
  %206 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %207 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @AM9513A_COM_REG, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @outw(i32 65523, i64 %210)
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %214 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @AM9513A_DATA_REG, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @outw(i32 %212, i64 %217)
  %219 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %220 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @AM9513A_COM_REG, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @outw(i32 65316, i64 %223)
  %225 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %226 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %229 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = mul i32 %227, %230
  store i32 %231, i32* %8, align 4
  %232 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %233 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @AM9513A_COM_REG, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @outw(i32 65284, i64 %236)
  %238 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %239 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @AM9513A_DATA_REG, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @outw(i32 4133, i64 %242)
  %244 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %245 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @AM9513A_COM_REG, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @outw(i32 65292, i64 %248)
  %250 = load i32, i32* %8, align 4
  %251 = icmp ult i32 %250, 65536
  br i1 %251, label %252, label %293

252:                                              ; preds = %174
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %255 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @AM9513A_DATA_REG, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 @outw(i32 %253, i64 %258)
  %260 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %261 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @AM9513A_COM_REG, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i32 @outw(i32 65352, i64 %264)
  %266 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %267 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @AM9513A_COM_REG, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i32 @outw(i32 65524, i64 %270)
  %272 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %273 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @AM9513A_COM_REG, align 8
  %276 = add nsw i64 %274, %275
  %277 = call i32 @outw(i32 65320, i64 %276)
  %278 = load i32, i32* @COMREG1_1632CNT, align 4
  %279 = xor i32 %278, -1
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %288 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @COM_REG_1, align 8
  %291 = add nsw i64 %289, %290
  %292 = call i32 @outw(i32 %286, i64 %291)
  br label %400

293:                                              ; preds = %174
  %294 = load i32, i32* %8, align 4
  %295 = and i32 %294, 65535
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* %9, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %293
  %299 = load i32, i32* %9, align 4
  %300 = sub i32 %299, 1
  %301 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %302 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @AM9513A_DATA_REG, align 8
  %305 = add nsw i64 %303, %304
  %306 = call i32 @outw(i32 %300, i64 %305)
  br label %314

307:                                              ; preds = %293
  %308 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %309 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @AM9513A_DATA_REG, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @outw(i32 65535, i64 %312)
  br label %314

314:                                              ; preds = %307, %298
  %315 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %316 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @AM9513A_COM_REG, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i32 @outw(i32 65352, i64 %319)
  %321 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %322 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @AM9513A_DATA_REG, align 8
  %325 = add nsw i64 %323, %324
  %326 = call i32 @outw(i32 0, i64 %325)
  %327 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %328 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @AM9513A_COM_REG, align 8
  %331 = add nsw i64 %329, %330
  %332 = call i32 @outw(i32 65320, i64 %331)
  %333 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %334 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @AM9513A_COM_REG, align 8
  %337 = add nsw i64 %335, %336
  %338 = call i32 @outw(i32 65285, i64 %337)
  %339 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %340 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @AM9513A_DATA_REG, align 8
  %343 = add nsw i64 %341, %342
  %344 = call i32 @outw(i32 37, i64 %343)
  %345 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %346 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @AM9513A_COM_REG, align 8
  %349 = add nsw i64 %347, %348
  %350 = call i32 @outw(i32 65293, i64 %349)
  %351 = load i32, i32* %8, align 4
  %352 = and i32 %351, 65535
  store i32 %352, i32* %9, align 4
  %353 = load i32, i32* %9, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %314
  %356 = load i32, i32* %9, align 4
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %358, label %368

358:                                              ; preds = %355, %314
  %359 = load i32, i32* %8, align 4
  %360 = lshr i32 %359, 16
  %361 = and i32 %360, 65535
  %362 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %363 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @AM9513A_DATA_REG, align 8
  %366 = add nsw i64 %364, %365
  %367 = call i32 @outw(i32 %361, i64 %366)
  br label %379

368:                                              ; preds = %355
  %369 = load i32, i32* %8, align 4
  %370 = lshr i32 %369, 16
  %371 = and i32 %370, 65535
  %372 = add i32 %371, 1
  %373 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %374 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @AM9513A_DATA_REG, align 8
  %377 = add nsw i64 %375, %376
  %378 = call i32 @outw(i32 %372, i64 %377)
  br label %379

379:                                              ; preds = %368, %358
  %380 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %381 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @AM9513A_COM_REG, align 8
  %384 = add nsw i64 %382, %383
  %385 = call i32 @outw(i32 65392, i64 %384)
  %386 = load i32, i32* @COMREG1_1632CNT, align 4
  %387 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 4
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %395 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @COM_REG_1, align 8
  %398 = add nsw i64 %396, %397
  %399 = call i32 @outw(i32 %393, i64 %398)
  br label %400

400:                                              ; preds = %379, %252
  %401 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %402 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = icmp sgt i32 %403, 1
  br i1 %404, label %405, label %503

405:                                              ; preds = %400
  %406 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %407 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %406, i32 0, i32 4
  %408 = load i32, i32* %407, align 8
  %409 = icmp slt i32 %408, 65536000
  br i1 %409, label %410, label %416

410:                                              ; preds = %405
  %411 = load i32, i32* @CLOCK_1_MHZ, align 4
  store i32 %411, i32* %7, align 4
  %412 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %413 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = sdiv i32 %414, 1000
  store i32 %415, i32* %6, align 4
  br label %452

416:                                              ; preds = %405
  %417 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %418 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = icmp slt i32 %419, 655360000
  br i1 %420, label %421, label %427

421:                                              ; preds = %416
  %422 = load i32, i32* @CLOCK_100_KHZ, align 4
  store i32 %422, i32* %7, align 4
  %423 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %424 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = sdiv i32 %425, 10000
  store i32 %426, i32* %6, align 4
  br label %451

427:                                              ; preds = %416
  %428 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %429 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %428, i32 0, i32 4
  %430 = load i32, i32* %429, align 8
  %431 = icmp ult i32 %430, -1
  br i1 %431, label %432, label %438

432:                                              ; preds = %427
  %433 = load i32, i32* @CLOCK_10_KHZ, align 4
  store i32 %433, i32* %7, align 4
  %434 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %435 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 8
  %437 = sdiv i32 %436, 100000
  store i32 %437, i32* %6, align 4
  br label %450

438:                                              ; preds = %427
  %439 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %440 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 8
  %442 = icmp ult i32 %441, -1
  br i1 %442, label %443, label %449

443:                                              ; preds = %438
  %444 = load i32, i32* @CLOCK_1_KHZ, align 4
  store i32 %444, i32* %7, align 4
  %445 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %446 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  %448 = sdiv i32 %447, 1000000
  store i32 %448, i32* %6, align 4
  br label %449

449:                                              ; preds = %443, %438
  br label %450

450:                                              ; preds = %449, %432
  br label %451

451:                                              ; preds = %450, %421
  br label %452

452:                                              ; preds = %451, %410
  %453 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %454 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @AM9513A_COM_REG, align 8
  %457 = add nsw i64 %455, %456
  %458 = call i32 @outw(i32 65282, i64 %457)
  %459 = load i32, i32* %7, align 4
  %460 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %461 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %460, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @AM9513A_DATA_REG, align 8
  %464 = add nsw i64 %462, %463
  %465 = call i32 @outw(i32 %459, i64 %464)
  %466 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %467 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @AM9513A_COM_REG, align 8
  %470 = add nsw i64 %468, %469
  %471 = call i32 @outw(i32 65290, i64 %470)
  %472 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %473 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @AM9513A_DATA_REG, align 8
  %476 = add nsw i64 %474, %475
  %477 = call i32 @outw(i32 2, i64 %476)
  %478 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %479 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* @AM9513A_COM_REG, align 8
  %482 = add nsw i64 %480, %481
  %483 = call i32 @outw(i32 65346, i64 %482)
  %484 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %485 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @AM9513A_COM_REG, align 8
  %488 = add nsw i64 %486, %487
  %489 = call i32 @outw(i32 65522, i64 %488)
  %490 = load i32, i32* %6, align 4
  %491 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %492 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* @AM9513A_DATA_REG, align 8
  %495 = add nsw i64 %493, %494
  %496 = call i32 @outw(i32 %490, i64 %495)
  %497 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %498 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @AM9513A_COM_REG, align 8
  %501 = add nsw i64 %499, %500
  %502 = call i32 @outw(i32 65314, i64 %501)
  br label %503

503:                                              ; preds = %452, %400
  %504 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %505 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @AD_CLEAR_REG, align 8
  %508 = add nsw i64 %506, %507
  %509 = call i32 @outw(i32 0, i64 %508)
  %510 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %511 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* @MUX_CNTR_REG, align 8
  %514 = add nsw i64 %512, %513
  %515 = call i32 @outw(i32 0, i64 %514)
  %516 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %517 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @INT2CLR_REG, align 8
  %520 = add nsw i64 %518, %519
  %521 = call i32 @outw(i32 0, i64 %520)
  %522 = load i32, i32* @COMREG1_DAQEN, align 4
  %523 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %524 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = or i32 %525, %522
  store i32 %526, i32* %524, align 4
  %527 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %531 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = load i64, i64* @COM_REG_1, align 8
  %534 = add nsw i64 %532, %533
  %535 = call i32 @outw(i32 %529, i64 %534)
  %536 = load i32, i32* @COMREG1_CONVINTEN, align 4
  %537 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %538 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = or i32 %539, %536
  store i32 %540, i32* %538, align 4
  %541 = load i32, i32* @COMREG2_INTEN, align 4
  %542 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = or i32 %544, %541
  store i32 %545, i32* %543, align 4
  %546 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %547 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %550 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @COM_REG_1, align 8
  %553 = add nsw i64 %551, %552
  %554 = call i32 @outw(i32 %548, i64 %553)
  %555 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %559 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @COM_REG_2, align 8
  %562 = add nsw i64 %560, %561
  %563 = call i32 @outw(i32 %557, i64 %562)
  %564 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %565 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* @START_DAQ_REG, align 8
  %568 = add nsw i64 %566, %567
  %569 = call i32 @outw(i32 0, i64 %568)
  ret i32 0
}

declare dso_local i32 @reset_counters(%struct.comedi_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
