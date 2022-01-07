; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_pcl812_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32*, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i32, i64, i64, i64, i64, i32, i64, i32, i32 }

@TRIG_NOW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@MAX_CHANLIST_LEN = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_5__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@PCL812_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl812_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl812_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %11, align 8
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TRIG_NOW, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %512

24:                                               ; preds = %2
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TRIG_FOLLOW, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %512

33:                                               ; preds = %24
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 19
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TRIG_EXT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %512

47:                                               ; preds = %38
  br label %57

48:                                               ; preds = %33
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 128
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %512

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %47
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TRIG_COUNT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %512

66:                                               ; preds = %57
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %512

77:                                               ; preds = %66
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MAX_CHANLIST_LEN, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %512

86:                                               ; preds = %77
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %117

91:                                               ; preds = %86
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 6
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %99, %91
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 6
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %115 = and i32 %113, %114
  %116 = call i32 @i8253_cascade_ns_to_timer(i32 %108, i32* %6, i32* %7, i64* %110, i32 %115)
  br label %117

117:                                              ; preds = %105, %86
  %118 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %119 = call i32 @start_pacer(%struct.comedi_device* %118, i32 -1, i32 0, i32 0)
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = mul i64 4, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memcpy(i64* %128, i32 %131, i32 %136)
  %138 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @setup_range_channel(%struct.comedi_device* %138, %struct.comedi_subdevice* %139, i64 %144, i32 1)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 14
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %181

150:                                              ; preds = %117
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i32 1, i32* %152, align 8
  store i32 1, i32* %8, align 4
  br label %153

153:                                              ; preds = %177, %150
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ult i32 %154, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %153
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %164, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %159
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  store i32 0, i32* %175, align 8
  br label %180

176:                                              ; preds = %159
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %8, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %153

180:                                              ; preds = %173, %153
  br label %184

181:                                              ; preds = %117
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  store i32 0, i32* %183, align 8
  br label %184

184:                                              ; preds = %181, %180
  %185 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %186 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %191 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %190, i32 0, i32 0
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %198 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 18
  store i32 %201, i32* %203, align 8
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 8
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @TRIG_COUNT, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %184
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 6
  store i32 0, i32* %216, align 8
  br label %222

217:                                              ; preds = %184
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 5
  store i32 0, i32* %219, align 4
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 6
  store i32 1, i32* %221, align 8
  br label %222

222:                                              ; preds = %217, %209
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 17
  store i64 0, i64* %224, align 8
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 16
  store i64 0, i64* %226, align 8
  %227 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %228 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %227, i32 0, i32 0
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  store i64 0, i64* %230, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %222
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 7
  store i32 1, i32* %239, align 4
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  store i32 0, i32* %246, align 8
  br label %247

247:                                              ; preds = %244, %237
  br label %248

248:                                              ; preds = %247, %222
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %475

253:                                              ; preds = %248
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %281

258:                                              ; preds = %253
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = zext i32 %261 to i64
  %263 = mul i64 %262, 2
  %264 = trunc i64 %263 to i32
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 8
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  store i32 %264, i32* %268, align 4
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = zext i32 %271 to i64
  %273 = mul i64 %272, 2
  %274 = trunc i64 %273 to i32
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 8
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  store i32 %274, i32* %278, align 4
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 9
  store i32 1, i32* %280, align 8
  br label %390

281:                                              ; preds = %253
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 10
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 8
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  store i32 %286, i32* %290, align 4
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 10
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 8
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  store i32 %295, i32* %299, align 4
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 10
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp slt i32 %302, %307
  br i1 %308, label %309, label %317

309:                                              ; preds = %281
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 8
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  store i32 %312, i32* %316, align 4
  br label %317

317:                                              ; preds = %309, %281
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 10
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp slt i32 %320, %325
  br i1 %326, label %327, label %335

327:                                              ; preds = %317
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 8
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  store i32 %330, i32* %334, align 4
  br label %335

335:                                              ; preds = %327, %317
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %335
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 9
  store i32 1, i32* %342, align 8
  br label %389

343:                                              ; preds = %335
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = mul i32 %346, %349
  %351 = zext i32 %350 to i64
  %352 = mul i64 %351, 2
  %353 = trunc i64 %352 to i32
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %10, align 4
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 8
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 0
  %359 = load i32, i32* %358, align 4
  %360 = udiv i32 %354, %359
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 9
  store i32 %360, i32* %362, align 8
  %363 = load i32, i32* %10, align 4
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 8
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 0
  %368 = load i32, i32* %367, align 4
  %369 = urem i32 %363, %368
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 11
  store i32 %369, i32* %371, align 8
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 9
  %374 = load i32, i32* %373, align 8
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %384

376:                                              ; preds = %343
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 11
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 8
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 0
  store i32 %379, i32* %383, align 4
  br label %384

384:                                              ; preds = %376, %343
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 9
  %387 = load i32, i32* %386, align 8
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %386, align 8
  br label %389

389:                                              ; preds = %384, %340
  br label %390

390:                                              ; preds = %389, %258
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 8
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 0
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 10
  %398 = load i32*, i32** %397, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 0
  %400 = load i32, i32* %399, align 4
  %401 = icmp sgt i32 %395, %400
  br i1 %401, label %402, label %414

402:                                              ; preds = %390
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 10
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 8
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 0
  store i32 %407, i32* %411, align 4
  %412 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 7
  store i32 0, i32* %413, align 4
  br label %414

414:                                              ; preds = %402, %390
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 8
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 10
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 1
  %424 = load i32, i32* %423, align 4
  %425 = icmp sgt i32 %419, %424
  br i1 %425, label %426, label %438

426:                                              ; preds = %414
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 10
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 1
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 8
  %434 = load i32*, i32** %433, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 1
  store i32 %431, i32* %435, align 4
  %436 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 7
  store i32 0, i32* %437, align 4
  br label %438

438:                                              ; preds = %426, %414
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 15
  store i64 0, i64* %440, align 8
  %441 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 14
  %443 = load i64, i64* %442, align 8
  %444 = load i32, i32* @DMA_MODE_READ, align 4
  %445 = call i32 @set_dma_mode(i64 %443, i32 %444)
  %446 = call i32 (...) @claim_dma_lock()
  store i32 %446, i32* %9, align 4
  %447 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 14
  %449 = load i64, i64* %448, align 8
  %450 = call i32 @clear_dma_ff(i64 %449)
  %451 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 14
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 13
  %456 = load i32*, i32** %455, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 0
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @set_dma_addr(i64 %453, i32 %458)
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 14
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 8
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @set_dma_count(i64 %462, i32 %467)
  %469 = load i32, i32* %9, align 4
  %470 = call i32 @release_dma_lock(i32 %469)
  %471 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 14
  %473 = load i64, i64* %472, align 8
  %474 = call i32 @enable_dma(i64 %473)
  br label %475

475:                                              ; preds = %438, %248
  %476 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %477 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 8
  switch i32 %478, label %484 [
    i32 128, label %479
  ]

479:                                              ; preds = %475
  %480 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %481 = load i32, i32* %6, align 4
  %482 = load i32, i32* %7, align 4
  %483 = call i32 @start_pacer(%struct.comedi_device* %480, i32 1, i32 %481, i32 %482)
  br label %484

484:                                              ; preds = %475, %479
  %485 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %500

489:                                              ; preds = %484
  %490 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 12
  %492 = load i32, i32* %491, align 4
  %493 = or i32 %492, 2
  %494 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %495 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @PCL812_MODE, align 8
  %498 = add nsw i64 %496, %497
  %499 = call i32 @outb(i32 %493, i64 %498)
  br label %511

500:                                              ; preds = %484
  %501 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %501, i32 0, i32 12
  %503 = load i32, i32* %502, align 4
  %504 = or i32 %503, 6
  %505 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %506 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = load i64, i64* @PCL812_MODE, align 8
  %509 = add nsw i64 %507, %508
  %510 = call i32 @outb(i32 %504, i64 %509)
  br label %511

511:                                              ; preds = %500, %489
  store i32 0, i32* %3, align 4
  br label %512

512:                                              ; preds = %511, %83, %74, %63, %53, %44, %30, %21
  %513 = load i32, i32* %3, align 4
  ret i32 %513
}

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i64*, i32) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @setup_range_channel(%struct.comedi_device*, %struct.comedi_subdevice*, i64, i32) #1

declare dso_local i32 @set_dma_mode(i64, i32) #1

declare dso_local i32 @claim_dma_lock(...) #1

declare dso_local i32 @clear_dma_ff(i64) #1

declare dso_local i32 @set_dma_addr(i64, i32) #1

declare dso_local i32 @set_dma_count(i64, i32) #1

declare dso_local i32 @release_dma_lock(i32) #1

declare dso_local i32 @enable_dma(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
