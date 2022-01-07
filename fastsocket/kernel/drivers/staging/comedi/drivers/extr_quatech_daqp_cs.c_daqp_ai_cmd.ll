; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32, i32*, i64, i32, i32, i32, i32 }
%struct.local_info_t = type { i32, %struct.comedi_subdevice*, %struct.comedi_device*, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@DAQP_AUX = common dso_local global i64 0, align 8
@DAQP_COMMAND_RSTQ = common dso_local global i32 0, align 4
@DAQP_COMMAND = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@DAQP_PACER_LOW = common dso_local global i64 0, align 8
@DAQP_PACER_MID = common dso_local global i64 0, align 8
@DAQP_PACER_HIGH = common dso_local global i64 0, align 8
@AREF_DIFF = common dso_local global i64 0, align 8
@DAQP_SCANLIST_DIFFERENTIAL = common dso_local global i32 0, align 4
@DAQP_SCANLIST_START = common dso_local global i32 0, align 4
@DAQP_SCANLIST = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@DAQP_FIFO_SIZE = common dso_local global i32 0, align 4
@DAQP_COMMAND_RSTF = common dso_local global i32 0, align 4
@DAQP_FIFO = common dso_local global i64 0, align 8
@DAQP_CONTROL_TRIGGER_CONTINUOUS = common dso_local global i32 0, align 4
@DAQP_CONTROL_TRIGGER_INTERNAL = common dso_local global i32 0, align 4
@DAQP_CONTROL_PACER_5MHz = common dso_local global i32 0, align 4
@DAQP_CONTROL_FIFO_INT_ENABLE = common dso_local global i32 0, align 4
@DAQP_CONTROL = common dso_local global i64 0, align 8
@DAQP_STATUS = common dso_local global i64 0, align 8
@DAQP_STATUS_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"daqp: couldn't clear interrupts in status register\0A\00", align 1
@buffer = common dso_local global i32 0, align 4
@DAQP_COMMAND_ARM = common dso_local global i32 0, align 4
@DAQP_COMMAND_FIFO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @daqp_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daqp_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.local_info_t*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.local_info_t*
  store %struct.local_info_t* %19, %struct.local_info_t** %6, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.comedi_cmd* %23, %struct.comedi_cmd** %7, align 8
  store i32 100, i32* %8, align 4
  %24 = load %struct.local_info_t*, %struct.local_info_t** %6, align 8
  %25 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %313

31:                                               ; preds = %2
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %34 = call i32 @daqp_ai_cancel(%struct.comedi_device* %32, %struct.comedi_subdevice* %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DAQP_AUX, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 0, i64 %39)
  %41 = load i32, i32* @DAQP_COMMAND_RSTQ, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DAQP_COMMAND, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i32 %41, i64 %46)
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TRIG_TIMER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %31
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 8
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @daqp_ns_to_timer(i32* %55, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %62, 255
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DAQP_PACER_LOW, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outb(i32 %63, i64 %68)
  %70 = load i32, i32* %13, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DAQP_PACER_MID, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 %72, i64 %77)
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DAQP_PACER_HIGH, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outb(i32 %81, i64 %86)
  store i32 1, i32* %9, align 4
  br label %123

88:                                               ; preds = %31
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 7
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @daqp_ns_to_timer(i32* %90, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = and i32 %97, 255
  %99 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %100 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DAQP_PACER_LOW, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb(i32 %98, i64 %103)
  %105 = load i32, i32* %14, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DAQP_PACER_MID, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @outb(i32 %107, i64 %112)
  %114 = load i32, i32* %14, align 4
  %115 = ashr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %118 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @DAQP_PACER_HIGH, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @outb(i32 %116, i64 %121)
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %88, %53
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %180, %123
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %183

130:                                              ; preds = %124
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @CR_CHAN(i32 %138)
  %140 = call i32 @DAQP_SCANLIST_CHANNEL(i32 %139)
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @CR_RANGE(i32 %141)
  %143 = call i32 @DAQP_SCANLIST_GAIN(i32 %142)
  %144 = or i32 %140, %143
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i64 @CR_AREF(i32 %145)
  %147 = load i64, i64* @AREF_DIFF, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %130
  %150 = load i32, i32* @DAQP_SCANLIST_DIFFERENTIAL, align 4
  %151 = load i32, i32* %12, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %149, %130
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156, %153
  %160 = load i32, i32* @DAQP_SCANLIST_START, align 4
  %161 = load i32, i32* %12, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32, i32* %12, align 4
  %165 = and i32 %164, 255
  %166 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @DAQP_SCANLIST, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @outb(i32 %165, i64 %170)
  %172 = load i32, i32* %12, align 4
  %173 = ashr i32 %172, 8
  %174 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %175 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DAQP_SCANLIST, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @outb(i32 %173, i64 %178)
  br label %180

180:                                              ; preds = %163
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %124

183:                                              ; preds = %124
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @TRIG_COUNT, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %213

189:                                              ; preds = %183
  %190 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %191 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %194 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %192, %195
  %197 = load %struct.local_info_t*, %struct.local_info_t** %6, align 8
  %198 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.local_info_t*, %struct.local_info_t** %6, align 8
  %200 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 2, %201
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %209, %189
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* @DAQP_FIFO_SIZE, align 4
  %206 = mul nsw i32 %205, 3
  %207 = sdiv i32 %206, 4
  %208 = icmp sgt i32 %204, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = load i32, i32* %10, align 4
  %211 = sdiv i32 %210, 2
  store i32 %211, i32* %10, align 4
  br label %203

212:                                              ; preds = %203
  br label %218

213:                                              ; preds = %183
  %214 = load %struct.local_info_t*, %struct.local_info_t** %6, align 8
  %215 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %214, i32 0, i32 0
  store i32 -1, i32* %215, align 8
  %216 = load i32, i32* @DAQP_FIFO_SIZE, align 4
  %217 = sdiv i32 %216, 2
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %213, %212
  %219 = load i32, i32* @DAQP_COMMAND_RSTF, align 4
  %220 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %221 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @DAQP_COMMAND, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @outb(i32 %219, i64 %224)
  %226 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %227 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @DAQP_FIFO, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @outb(i32 0, i64 %230)
  %232 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %233 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @DAQP_FIFO, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @outb(i32 0, i64 %236)
  %238 = load i32, i32* @DAQP_FIFO_SIZE, align 4
  %239 = load i32, i32* %10, align 4
  %240 = sub nsw i32 %238, %239
  %241 = and i32 %240, 255
  %242 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %243 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @DAQP_FIFO, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @outb(i32 %241, i64 %246)
  %248 = load i32, i32* @DAQP_FIFO_SIZE, align 4
  %249 = load i32, i32* %10, align 4
  %250 = sub nsw i32 %248, %249
  %251 = ashr i32 %250, 8
  %252 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %253 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @DAQP_FIFO, align 8
  %256 = add nsw i64 %254, %255
  %257 = call i32 @outb(i32 %251, i64 %256)
  %258 = load i32, i32* @DAQP_CONTROL_TRIGGER_CONTINUOUS, align 4
  %259 = load i32, i32* @DAQP_CONTROL_TRIGGER_INTERNAL, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @DAQP_CONTROL_PACER_5MHz, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @DAQP_CONTROL_FIFO_INT_ENABLE, align 4
  %264 = or i32 %262, %263
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %12, align 4
  %266 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %267 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @DAQP_CONTROL, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i32 @outb(i32 %265, i64 %270)
  br label %272

272:                                              ; preds = %288, %218
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %272
  %277 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %278 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @DAQP_STATUS, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 @inb(i64 %281)
  %283 = load i32, i32* @DAQP_STATUS_EVENTS, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br label %286

286:                                              ; preds = %276, %272
  %287 = phi i1 [ false, %272 ], [ %285, %276 ]
  br i1 %287, label %288, label %289

288:                                              ; preds = %286
  br label %272

289:                                              ; preds = %286
  %290 = load i32, i32* %8, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %289
  %293 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %313

294:                                              ; preds = %289
  %295 = load i32, i32* @buffer, align 4
  %296 = load %struct.local_info_t*, %struct.local_info_t** %6, align 8
  %297 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %296, i32 0, i32 3
  store i32 %295, i32* %297, align 8
  %298 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %299 = load %struct.local_info_t*, %struct.local_info_t** %6, align 8
  %300 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %299, i32 0, i32 2
  store %struct.comedi_device* %298, %struct.comedi_device** %300, align 8
  %301 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %302 = load %struct.local_info_t*, %struct.local_info_t** %6, align 8
  %303 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %302, i32 0, i32 1
  store %struct.comedi_subdevice* %301, %struct.comedi_subdevice** %303, align 8
  %304 = load i32, i32* @DAQP_COMMAND_ARM, align 4
  %305 = load i32, i32* @DAQP_COMMAND_FIFO_DATA, align 4
  %306 = or i32 %304, %305
  %307 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %308 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @DAQP_COMMAND, align 8
  %311 = add nsw i64 %309, %310
  %312 = call i32 @outb(i32 %306, i64 %311)
  store i32 0, i32* %3, align 4
  br label %313

313:                                              ; preds = %294, %292, %28
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local i32 @daqp_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @daqp_ns_to_timer(i32*, i32) #1

declare dso_local i32 @DAQP_SCANLIST_CHANNEL(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @DAQP_SCANLIST_GAIN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
