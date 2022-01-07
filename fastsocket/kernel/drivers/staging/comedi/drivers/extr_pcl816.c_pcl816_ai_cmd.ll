; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32, i32, i32, i32*, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.comedi_device = type { i32, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.comedi_cmd, i64 }
%struct.comedi_cmd = type { i64, i64, i64, i64, i64, i32, i64, i32, i64, i64, i32 }

@TRIG_NOW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@this_board = common dso_local global %struct.TYPE_5__* null, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@TRIG_WAKE_EOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"pl816: You wankt WAKE_EOS but I dont want handle it\00", align 1
@DMA_MODE_READ = common dso_local global i32 0, align 4
@INT_TYPE_AI1_DMA = common dso_local global i32 0, align 4
@PCL816_CONTROL = common dso_local global i64 0, align 8
@PCL816_STATUS = common dso_local global i64 0, align 8
@INT_TYPE_AI3_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"pcl816 END: pcl812_ai_cmd()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pcl816_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl816_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
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
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
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
  br label %315

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
  br label %315

33:                                               ; preds = %24
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TRIG_COUNT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %315

42:                                               ; preds = %33
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %315

53:                                               ; preds = %42
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %315

61:                                               ; preds = %53
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %66, label %104

66:                                               ; preds = %61
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 6
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %74, %66
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @this_board, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %85 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %84, i32 0, i32 6
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @i8253_cascade_ns_to_timer(i32 %83, i32* %6, i32* %7, i64* %85, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  store i32 2, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = udiv i32 %95, 2
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %94, %80
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  store i32 2, i32* %7, align 4
  %101 = load i32, i32* %6, align 4
  %102 = udiv i32 %101, 2
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %61
  %105 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %106 = call i32 @start_pacer(%struct.comedi_device* %105, i32 -1, i32 0, i32 0)
  %107 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @check_and_setup_channel_list(%struct.comedi_device* %107, %struct.comedi_subdevice* %108, i32 %111, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %104
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %315

120:                                              ; preds = %104
  %121 = call i32 @udelay(i32 1)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 12
  store i64 0, i64* %123, align 8
  %124 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %125 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 11
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 10
  store i64 0, i64* %133, align 8
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TRIG_COUNT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %120
  %140 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %141 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %140, i32 0, i32 9
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 9
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  br label %152

147:                                              ; preds = %120
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 9
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %139
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %154 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @TRIG_WAKE_EOS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %152
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %261

166:                                              ; preds = %161
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %9, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %225, label %176

176:                                              ; preds = %166
  %177 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %178 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %184 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = mul nsw i64 %182, %188
  %190 = mul i64 %189, 2
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = udiv i32 %192, %197
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = urem i32 %201, %206
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = add i32 %212, -1
  store i32 %213, i32* %211, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp uge i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %176
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %218, %176
  br label %228

225:                                              ; preds = %166
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 4
  store i32 -1, i32* %227, align 8
  br label %228

228:                                              ; preds = %225, %224
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 8
  store i64 0, i64* %230, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @DMA_MODE_READ, align 4
  %235 = call i32 @set_dma_mode(i32 %233, i32 %234)
  %236 = call i32 (...) @claim_dma_lock()
  store i32 %236, i32* %8, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @clear_dma_ff(i32 %239)
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 7
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @set_dma_addr(i32 %243, i32 %248)
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @set_dma_count(i32 %252, i32 %253)
  %255 = load i32, i32* %8, align 4
  %256 = call i32 @release_dma_lock(i32 %255)
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @enable_dma(i32 %259)
  br label %261

261:                                              ; preds = %228, %161
  %262 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* %7, align 4
  %265 = call i32 @start_pacer(%struct.comedi_device* %262, i32 1, i32 %263, i32 %264)
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, 3
  %270 = shl i32 %269, 4
  %271 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %272 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, 7
  %275 = or i32 %270, %274
  store i32 %275, i32* %10, align 4
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %11, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 8
  switch i32 %278, label %296 [
    i32 128, label %279
  ]

279:                                              ; preds = %261
  %280 = load i32, i32* @INT_TYPE_AI1_DMA, align 4
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 6
  store i32 %280, i32* %282, align 8
  %283 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %284 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @PCL816_CONTROL, align 8
  %287 = add nsw i64 %285, %286
  %288 = call i32 @outb(i32 50, i64 %287)
  %289 = load i32, i32* %10, align 4
  %290 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %291 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @PCL816_STATUS, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 @outb(i32 %289, i64 %294)
  br label %313

296:                                              ; preds = %261
  %297 = load i32, i32* @INT_TYPE_AI3_DMA, align 4
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 6
  store i32 %297, i32* %299, align 8
  %300 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %301 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @PCL816_CONTROL, align 8
  %304 = add nsw i64 %302, %303
  %305 = call i32 @outb(i32 52, i64 %304)
  %306 = load i32, i32* %10, align 4
  %307 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %308 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @PCL816_STATUS, align 8
  %311 = add nsw i64 %309, %310
  %312 = call i32 @outb(i32 %306, i64 %311)
  br label %313

313:                                              ; preds = %296, %279
  %314 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %315

315:                                              ; preds = %313, %117, %58, %50, %39, %30, %21
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i32 @i8253_cascade_ns_to_timer(i32, i32*, i32*, i64*, i32) #1

declare dso_local i32 @start_pacer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @check_and_setup_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @claim_dma_lock(...) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @release_dma_lock(i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
