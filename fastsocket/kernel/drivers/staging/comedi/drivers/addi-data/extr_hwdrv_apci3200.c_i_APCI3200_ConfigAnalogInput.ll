; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ConfigAnalogInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ConfigAnalogInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i64*, i32 }

@s_BoardInfos = common dso_local global %struct.TYPE_5__* null, align 8
@devpriv = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"\0AThe selection of acquisition type is in error\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\0A Error in selection of RTD connection type\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\0AThe selection of gain is in error\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\0AThe selection of polarity is in error\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\0AThe selection of offset range  is in error\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\0AThe selection of coupling is in error\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"\0AThe selection of single/differential mode is in error\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\0AError in selection of functionality\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"\0AThe selection of conversion time reload value is in error\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"\0AThe selection of conversion time unit  is in error\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"\0AThe selection of interrupt enable is in error\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"\0AThe selection of module is in error\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"\0AThe selection of singlechannel/scan selection is in error\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"\0AThe selection of number of channels is in error\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"\0AThe Selection of the channel is in error\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"\0A This selection of polarity does not exist\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"\0AError in module selection\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@MAX_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3200_ConfigAnalogInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %113

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 21
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 2, i32* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 20
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %55 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  store i32 0, i32* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 16
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  store i32 0, i32* %71, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %73 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 17
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %79 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  store i32 0, i32* %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %85 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %91 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 7
  store i32 0, i32* %95, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %97 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 19
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = call i32 @memset(%struct.TYPE_6__* %102, i32 0, i32 32)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %108 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %110
  %112 = call i32 @v_GetAPCI3200EepromCalibrationValue(i32 %106, %struct.TYPE_5__* %111)
  br label %113

113:                                              ; preds = %23, %4
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 2
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %128, %123, %118, %113
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 14
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %137
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 14
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 1
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 14
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 2
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 14
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 4
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %157, %152, %147, %142, %137
  br label %162

162:                                              ; preds = %161, %132
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ult i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ugt i32 %170, 7
  br i1 %171, label %172, label %176

172:                                              ; preds = %167, %162
  %173 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %172, %167
  %177 = load i32*, i32** %9, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 1
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %186, %181, %176
  %191 = load i32*, i32** %9, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %197 = load i32, i32* %14, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %195, %190
  %200 = load i32*, i32** %9, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 4
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load i32*, i32** %9, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 1
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %209, %204, %199
  %214 = load i32*, i32** %9, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 5
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %213
  %219 = load i32*, i32** %9, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 5
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 1
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %223, %218, %213
  %228 = load i32*, i32** %9, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 8
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %227
  %233 = load i32*, i32** %9, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 8
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 1
  br i1 %236, label %237, label %244

237:                                              ; preds = %232
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 2
  br i1 %241, label %242, label %244

242:                                              ; preds = %237
  %243 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %237, %232, %227
  %245 = load i32*, i32** %9, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 12
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load i32*, i32** %9, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 12
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %288

254:                                              ; preds = %249, %244
  %255 = load i32*, i32** %9, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 6
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 20
  br i1 %258, label %259, label %278

259:                                              ; preds = %254
  %260 = load i32*, i32** %9, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 6
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 40
  br i1 %263, label %264, label %278

264:                                              ; preds = %259
  %265 = load i32*, i32** %9, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 6
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 80
  br i1 %268, label %269, label %278

269:                                              ; preds = %264
  %270 = load i32*, i32** %9, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 6
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 160
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %276 = load i32, i32* %14, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %14, align 4
  br label %278

278:                                              ; preds = %274, %269, %264, %259, %254
  %279 = load i32*, i32** %9, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 7
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, 2
  br i1 %282, label %283, label %287

283:                                              ; preds = %278
  %284 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %285 = load i32, i32* %14, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %14, align 4
  br label %287

287:                                              ; preds = %283, %278
  br label %288

288:                                              ; preds = %287, %249
  %289 = load i32*, i32** %9, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 9
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %288
  %294 = load i32*, i32** %9, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 9
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 1
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %300 = load i32, i32* %14, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %14, align 4
  br label %302

302:                                              ; preds = %298, %293, %288
  %303 = load i32*, i32** %9, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 11
  %305 = load i32, i32* %304, align 4
  %306 = icmp ult i32 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %302
  %308 = load i32*, i32** %9, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 11
  %310 = load i32, i32* %309, align 4
  %311 = icmp ugt i32 %310, 4
  br i1 %311, label %312, label %316

312:                                              ; preds = %307, %302
  %313 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %314 = load i32, i32* %14, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %14, align 4
  br label %316

316:                                              ; preds = %312, %307
  %317 = load i32*, i32** %9, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 12
  %319 = load i32, i32* %318, align 4
  %320 = icmp ult i32 %319, 0
  br i1 %320, label %326, label %321

321:                                              ; preds = %316
  %322 = load i32*, i32** %9, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 12
  %324 = load i32, i32* %323, align 4
  %325 = icmp ugt i32 %324, 3
  br i1 %325, label %326, label %330

326:                                              ; preds = %321, %316
  %327 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0))
  %328 = load i32, i32* %14, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %14, align 4
  br label %330

330:                                              ; preds = %326, %321
  %331 = load i32*, i32** %9, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 13
  %333 = load i32, i32* %332, align 4
  %334 = icmp ult i32 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %330
  %336 = load i32*, i32** %9, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 13
  %338 = load i32, i32* %337, align 4
  %339 = icmp ugt i32 %338, 16
  br i1 %339, label %340, label %344

340:                                              ; preds = %335, %330
  %341 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %342 = load i32, i32* %14, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %14, align 4
  br label %344

344:                                              ; preds = %340, %335
  %345 = load i32*, i32** %9, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 13
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %349 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %350 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 4
  store i32 %347, i32* %353, align 8
  %354 = load i32*, i32** %9, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 12
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %358 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %359 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 8
  store i32 %356, i32* %362, align 8
  %363 = load i32*, i32** %9, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 2
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %367 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %368 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 9
  store i32 %365, i32* %371, align 4
  %372 = load i32*, i32** %9, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %376 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %377 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 10
  store i32 %374, i32* %380, align 8
  %381 = load i32*, i32** %9, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 6
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %385 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %386 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 11
  store i32 %383, i32* %389, align 4
  %390 = load i32*, i32** %9, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 7
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %394 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %395 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 12
  store i32 %392, i32* %398, align 8
  %399 = load i32*, i32** %9, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 0
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %403 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %404 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 13
  store i32 %401, i32* %407, align 4
  %408 = load i32*, i32** %9, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 5
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %412 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %413 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 7
  store i32 %410, i32* %416, align 4
  %417 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %418 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %419 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 18
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %422, align 8
  %424 = call i32 @memset(%struct.TYPE_6__* %423, i32 0, i32 76)
  br label %425

425:                                              ; preds = %434, %344
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %427 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %428 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = icmp eq i32 %432, 1
  br i1 %433, label %434, label %436

434:                                              ; preds = %425
  %435 = call i32 @udelay(i32 1)
  br label %425

436:                                              ; preds = %425
  %437 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %438 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @CR_CHAN(i32 %439)
  store i32 %440, i32* %12, align 4
  %441 = load i32, i32* %12, align 4
  %442 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %443 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %444 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 14
  store i32 %441, i32* %447, align 8
  %448 = load i32, i32* %12, align 4
  %449 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %450 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %451 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 5
  store i32 %448, i32* %454, align 4
  %455 = load i32*, i32** %9, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 5
  %457 = load i32, i32* %456, align 4
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %470

459:                                              ; preds = %436
  %460 = load i32, i32* %12, align 4
  %461 = icmp ult i32 %460, 0
  br i1 %461, label %465, label %462

462:                                              ; preds = %459
  %463 = load i32, i32* %12, align 4
  %464 = icmp ugt i32 %463, 15
  br i1 %464, label %465, label %469

465:                                              ; preds = %462, %459
  %466 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  %467 = load i32, i32* %14, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %14, align 4
  br label %469

469:                                              ; preds = %465, %462
  br label %498

470:                                              ; preds = %436
  %471 = load i32*, i32** %9, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 14
  %473 = load i32, i32* %472, align 4
  %474 = icmp eq i32 %473, 2
  br i1 %474, label %475, label %486

475:                                              ; preds = %470
  %476 = load i32, i32* %12, align 4
  %477 = icmp ult i32 %476, 0
  br i1 %477, label %481, label %478

478:                                              ; preds = %475
  %479 = load i32, i32* %12, align 4
  %480 = icmp ugt i32 %479, 3
  br i1 %480, label %481, label %485

481:                                              ; preds = %478, %475
  %482 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  %483 = load i32, i32* %14, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %14, align 4
  br label %485

485:                                              ; preds = %481, %478
  br label %497

486:                                              ; preds = %470
  %487 = load i32, i32* %12, align 4
  %488 = icmp ult i32 %487, 0
  br i1 %488, label %492, label %489

489:                                              ; preds = %486
  %490 = load i32, i32* %12, align 4
  %491 = icmp ugt i32 %490, 7
  br i1 %491, label %492, label %496

492:                                              ; preds = %489, %486
  %493 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  %494 = load i32, i32* %14, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %14, align 4
  br label %496

496:                                              ; preds = %492, %489
  br label %497

497:                                              ; preds = %496, %485
  br label %498

498:                                              ; preds = %497, %469
  %499 = load i32*, i32** %9, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 12
  %501 = load i32, i32* %500, align 4
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %508, label %503

503:                                              ; preds = %498
  %504 = load i32*, i32** %9, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 12
  %506 = load i32, i32* %505, align 4
  %507 = icmp eq i32 %506, 1
  br i1 %507, label %508, label %723

508:                                              ; preds = %503, %498
  %509 = load i32*, i32** %9, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 5
  %511 = load i32, i32* %510, align 4
  switch i32 %511, label %718 [
    i32 0, label %512
    i32 1, label %565
  ]

512:                                              ; preds = %508
  %513 = load i32, i32* %12, align 4
  %514 = icmp uge i32 %513, 0
  br i1 %514, label %515, label %525

515:                                              ; preds = %512
  %516 = load i32, i32* %12, align 4
  %517 = icmp ule i32 %516, 3
  br i1 %517, label %518, label %525

518:                                              ; preds = %515
  %519 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %520 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %521 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %523, i32 0, i32 15
  store i32 0, i32* %524, align 4
  br label %525

525:                                              ; preds = %518, %515, %512
  %526 = load i32, i32* %12, align 4
  %527 = icmp uge i32 %526, 4
  br i1 %527, label %528, label %538

528:                                              ; preds = %525
  %529 = load i32, i32* %12, align 4
  %530 = icmp ule i32 %529, 7
  br i1 %530, label %531, label %538

531:                                              ; preds = %528
  %532 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %533 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %534 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %533, i32 0, i32 0
  %535 = load i64, i64* %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %532, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i32 0, i32 15
  store i32 64, i32* %537, align 4
  br label %538

538:                                              ; preds = %531, %528, %525
  %539 = load i32, i32* %12, align 4
  %540 = icmp uge i32 %539, 8
  br i1 %540, label %541, label %551

541:                                              ; preds = %538
  %542 = load i32, i32* %12, align 4
  %543 = icmp ule i32 %542, 11
  br i1 %543, label %544, label %551

544:                                              ; preds = %541
  %545 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %546 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %547 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %545, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %549, i32 0, i32 15
  store i32 128, i32* %550, align 4
  br label %551

551:                                              ; preds = %544, %541, %538
  %552 = load i32, i32* %12, align 4
  %553 = icmp uge i32 %552, 12
  br i1 %553, label %554, label %564

554:                                              ; preds = %551
  %555 = load i32, i32* %12, align 4
  %556 = icmp ule i32 %555, 15
  br i1 %556, label %557, label %564

557:                                              ; preds = %554
  %558 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %559 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %560 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %558, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %562, i32 0, i32 15
  store i32 192, i32* %563, align 4
  br label %564

564:                                              ; preds = %557, %554, %551
  br label %722

565:                                              ; preds = %508
  %566 = load i32*, i32** %9, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 14
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %568, 2
  br i1 %569, label %570, label %617

570:                                              ; preds = %565
  %571 = load i32, i32* %12, align 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %573, label %580

573:                                              ; preds = %570
  %574 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %575 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %576 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %575, i32 0, i32 0
  %577 = load i64, i64* %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %574, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %578, i32 0, i32 15
  store i32 0, i32* %579, align 4
  br label %580

580:                                              ; preds = %573, %570
  %581 = load i32, i32* %12, align 4
  %582 = icmp eq i32 %581, 1
  br i1 %582, label %583, label %590

583:                                              ; preds = %580
  %584 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %585 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %586 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %585, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %584, i64 %587
  %589 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %588, i32 0, i32 15
  store i32 64, i32* %589, align 4
  br label %590

590:                                              ; preds = %583, %580
  %591 = load i32, i32* %12, align 4
  %592 = icmp eq i32 %591, 2
  br i1 %592, label %593, label %600

593:                                              ; preds = %590
  %594 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %595 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %596 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %595, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %594, i64 %597
  %599 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %598, i32 0, i32 15
  store i32 128, i32* %599, align 4
  br label %600

600:                                              ; preds = %593, %590
  %601 = load i32, i32* %12, align 4
  %602 = icmp eq i32 %601, 3
  br i1 %602, label %603, label %610

603:                                              ; preds = %600
  %604 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %605 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %606 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %604, i64 %607
  %609 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %608, i32 0, i32 15
  store i32 192, i32* %609, align 4
  br label %610

610:                                              ; preds = %603, %600
  %611 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %612 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %613 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %612, i32 0, i32 0
  %614 = load i64, i64* %613, align 8
  %615 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %611, i64 %614
  %616 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %615, i32 0, i32 14
  store i32 0, i32* %616, align 8
  store i32 0, i32* %12, align 4
  br label %722

617:                                              ; preds = %565
  %618 = load i32, i32* %12, align 4
  %619 = icmp uge i32 %618, 0
  br i1 %619, label %620, label %630

620:                                              ; preds = %617
  %621 = load i32, i32* %12, align 4
  %622 = icmp ule i32 %621, 1
  br i1 %622, label %623, label %630

623:                                              ; preds = %620
  %624 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %625 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %626 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %625, i32 0, i32 0
  %627 = load i64, i64* %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %624, i64 %627
  %629 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %628, i32 0, i32 15
  store i32 0, i32* %629, align 4
  br label %630

630:                                              ; preds = %623, %620, %617
  %631 = load i32, i32* %12, align 4
  %632 = icmp uge i32 %631, 2
  br i1 %632, label %633, label %659

633:                                              ; preds = %630
  %634 = load i32, i32* %12, align 4
  %635 = icmp ule i32 %634, 3
  br i1 %635, label %636, label %659

636:                                              ; preds = %633
  %637 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %638 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %639 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %638, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %637, i64 %640
  %642 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %641, i32 0, i32 14
  %643 = load i32, i32* %642, align 8
  %644 = sub i32 %643, 2
  %645 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %646 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %647 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %646, i32 0, i32 0
  %648 = load i64, i64* %647, align 8
  %649 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %645, i64 %648
  %650 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %649, i32 0, i32 14
  store i32 %644, i32* %650, align 8
  %651 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %652 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %653 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %651, i64 %654
  %656 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %655, i32 0, i32 15
  store i32 64, i32* %656, align 4
  %657 = load i32, i32* %12, align 4
  %658 = sub i32 %657, 2
  store i32 %658, i32* %12, align 4
  br label %659

659:                                              ; preds = %636, %633, %630
  %660 = load i32, i32* %12, align 4
  %661 = icmp uge i32 %660, 4
  br i1 %661, label %662, label %688

662:                                              ; preds = %659
  %663 = load i32, i32* %12, align 4
  %664 = icmp ule i32 %663, 5
  br i1 %664, label %665, label %688

665:                                              ; preds = %662
  %666 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %667 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %668 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %667, i32 0, i32 0
  %669 = load i64, i64* %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %666, i64 %669
  %671 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %670, i32 0, i32 14
  %672 = load i32, i32* %671, align 8
  %673 = sub i32 %672, 4
  %674 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %675 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %676 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %675, i32 0, i32 0
  %677 = load i64, i64* %676, align 8
  %678 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %674, i64 %677
  %679 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %678, i32 0, i32 14
  store i32 %673, i32* %679, align 8
  %680 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %681 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %682 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %681, i32 0, i32 0
  %683 = load i64, i64* %682, align 8
  %684 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %680, i64 %683
  %685 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %684, i32 0, i32 15
  store i32 128, i32* %685, align 4
  %686 = load i32, i32* %12, align 4
  %687 = sub i32 %686, 4
  store i32 %687, i32* %12, align 4
  br label %688

688:                                              ; preds = %665, %662, %659
  %689 = load i32, i32* %12, align 4
  %690 = icmp uge i32 %689, 6
  br i1 %690, label %691, label %717

691:                                              ; preds = %688
  %692 = load i32, i32* %12, align 4
  %693 = icmp ule i32 %692, 7
  br i1 %693, label %694, label %717

694:                                              ; preds = %691
  %695 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %696 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %697 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %696, i32 0, i32 0
  %698 = load i64, i64* %697, align 8
  %699 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %695, i64 %698
  %700 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %699, i32 0, i32 14
  %701 = load i32, i32* %700, align 8
  %702 = sub i32 %701, 6
  %703 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %704 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %705 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %704, i32 0, i32 0
  %706 = load i64, i64* %705, align 8
  %707 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %703, i64 %706
  %708 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %707, i32 0, i32 14
  store i32 %702, i32* %708, align 8
  %709 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %710 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %711 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %710, i32 0, i32 0
  %712 = load i64, i64* %711, align 8
  %713 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %709, i64 %712
  %714 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %713, i32 0, i32 15
  store i32 192, i32* %714, align 4
  %715 = load i32, i32* %12, align 4
  %716 = sub i32 %715, 6
  store i32 %716, i32* %12, align 4
  br label %717

717:                                              ; preds = %694, %691, %688
  br label %722

718:                                              ; preds = %508
  %719 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  %720 = load i32, i32* %14, align 4
  %721 = add nsw i32 %720, 1
  store i32 %721, i32* %14, align 4
  br label %722

722:                                              ; preds = %718, %717, %610, %564
  br label %760

723:                                              ; preds = %503
  %724 = load i32*, i32** %9, align 8
  %725 = getelementptr inbounds i32, i32* %724, i64 11
  %726 = load i32, i32* %725, align 4
  switch i32 %726, label %755 [
    i32 1, label %727
    i32 2, label %734
    i32 3, label %741
    i32 4, label %748
  ]

727:                                              ; preds = %723
  %728 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %729 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %730 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %729, i32 0, i32 0
  %731 = load i64, i64* %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %728, i64 %731
  %733 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %732, i32 0, i32 15
  store i32 0, i32* %733, align 4
  br label %759

734:                                              ; preds = %723
  %735 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %736 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %737 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %736, i32 0, i32 0
  %738 = load i64, i64* %737, align 8
  %739 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %735, i64 %738
  %740 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %739, i32 0, i32 15
  store i32 64, i32* %740, align 4
  br label %759

741:                                              ; preds = %723
  %742 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %743 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %744 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %743, i32 0, i32 0
  %745 = load i64, i64* %744, align 8
  %746 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %742, i64 %745
  %747 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %746, i32 0, i32 15
  store i32 128, i32* %747, align 4
  br label %759

748:                                              ; preds = %723
  %749 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %750 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %751 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %750, i32 0, i32 0
  %752 = load i64, i64* %751, align 8
  %753 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %749, i64 %752
  %754 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %753, i32 0, i32 15
  store i32 192, i32* %754, align 4
  br label %759

755:                                              ; preds = %723
  %756 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %757 = load i32, i32* %14, align 4
  %758 = add nsw i32 %757, 1
  store i32 %758, i32* %14, align 4
  br label %759

759:                                              ; preds = %755, %748, %741, %734, %727
  br label %760

760:                                              ; preds = %759, %722
  %761 = load i32, i32* %14, align 4
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %763, label %768

763:                                              ; preds = %760
  %764 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %765 = call i32 @i_APCI3200_Reset(%struct.comedi_device* %764)
  %766 = load i32, i32* @EINVAL, align 4
  %767 = sub nsw i32 0, %766
  store i32 %767, i32* %5, align 4
  br label %1023

768:                                              ; preds = %760
  %769 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %770 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %771 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %770, i32 0, i32 0
  %772 = load i64, i64* %771, align 8
  %773 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %769, i64 %772
  %774 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %773, i32 0, i32 8
  %775 = load i32, i32* %774, align 8
  %776 = icmp ne i32 %775, 1
  br i1 %776, label %777, label %790

777:                                              ; preds = %768
  %778 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %779 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %780 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %779, i32 0, i32 0
  %781 = load i64, i64* %780, align 8
  %782 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %778, i64 %781
  %783 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %782, i32 0, i32 17
  store i64 0, i64* %783, align 8
  %784 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %785 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %786 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %785, i32 0, i32 0
  %787 = load i64, i64* %786, align 8
  %788 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %784, i64 %787
  %789 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %788, i32 0, i32 16
  store i64 0, i64* %789, align 8
  br label %790

790:                                              ; preds = %777, %768
  %791 = load i32*, i32** %9, align 8
  %792 = getelementptr inbounds i32, i32* %791, i64 1
  %793 = load i32, i32* %792, align 4
  %794 = load i32*, i32** %9, align 8
  %795 = getelementptr inbounds i32, i32* %794, i64 2
  %796 = load i32, i32* %795, align 4
  %797 = shl i32 %796, 6
  %798 = or i32 %793, %797
  %799 = load i32*, i32** %9, align 8
  %800 = getelementptr inbounds i32, i32* %799, i64 5
  %801 = load i32, i32* %800, align 4
  %802 = shl i32 %801, 7
  %803 = or i32 %798, %802
  %804 = load i32*, i32** %9, align 8
  %805 = getelementptr inbounds i32, i32* %804, i64 3
  %806 = load i32, i32* %805, align 4
  %807 = shl i32 %806, 8
  %808 = or i32 %803, %807
  %809 = load i32*, i32** %9, align 8
  %810 = getelementptr inbounds i32, i32* %809, i64 4
  %811 = load i32, i32* %810, align 4
  %812 = shl i32 %811, 9
  %813 = or i32 %808, %812
  store i32 %813, i32* %10, align 4
  br label %814

814:                                              ; preds = %831, %790
  %815 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %816 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %815, i32 0, i32 0
  %817 = load i32, i32* %816, align 4
  %818 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %819 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %820 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %819, i32 0, i32 0
  %821 = load i64, i64* %820, align 8
  %822 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %818, i64 %821
  %823 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %822, i32 0, i32 15
  %824 = load i32, i32* %823, align 4
  %825 = add nsw i32 %817, %824
  %826 = add nsw i32 %825, 12
  %827 = call i32 @inl(i32 %826)
  %828 = ashr i32 %827, 19
  %829 = and i32 %828, 1
  %830 = icmp ne i32 %829, 1
  br i1 %830, label %831, label %832

831:                                              ; preds = %814
  br label %814

832:                                              ; preds = %814
  %833 = load i32, i32* %12, align 4
  %834 = or i32 0, %833
  %835 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %836 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %835, i32 0, i32 0
  %837 = load i32, i32* %836, align 4
  %838 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %839 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %840 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %839, i32 0, i32 0
  %841 = load i64, i64* %840, align 8
  %842 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %838, i64 %841
  %843 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %842, i32 0, i32 15
  %844 = load i32, i32* %843, align 4
  %845 = add nsw i32 %837, %844
  %846 = add nsw i32 %845, 4
  %847 = call i32 @outl(i32 %834, i32 %846)
  br label %848

848:                                              ; preds = %865, %832
  %849 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %850 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 4
  %852 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %853 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %854 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %853, i32 0, i32 0
  %855 = load i64, i64* %854, align 8
  %856 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %852, i64 %855
  %857 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %856, i32 0, i32 15
  %858 = load i32, i32* %857, align 4
  %859 = add nsw i32 %851, %858
  %860 = add nsw i32 %859, 12
  %861 = call i32 @inl(i32 %860)
  %862 = ashr i32 %861, 19
  %863 = and i32 %862, 1
  %864 = icmp ne i32 %863, 1
  br i1 %864, label %865, label %866

865:                                              ; preds = %848
  br label %848

866:                                              ; preds = %848
  %867 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %868 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %867, i32 0, i32 0
  %869 = load i32, i32* %868, align 4
  %870 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %871 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %872 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %871, i32 0, i32 0
  %873 = load i64, i64* %872, align 8
  %874 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %870, i64 %873
  %875 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %874, i32 0, i32 15
  %876 = load i32, i32* %875, align 4
  %877 = add nsw i32 %869, %876
  %878 = add nsw i32 %877, 0
  %879 = call i32 @outl(i32 0, i32 %878)
  br label %880

880:                                              ; preds = %897, %866
  %881 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %882 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %881, i32 0, i32 0
  %883 = load i32, i32* %882, align 4
  %884 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %885 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %886 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %885, i32 0, i32 0
  %887 = load i64, i64* %886, align 8
  %888 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %884, i64 %887
  %889 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %888, i32 0, i32 15
  %890 = load i32, i32* %889, align 4
  %891 = add nsw i32 %883, %890
  %892 = add nsw i32 %891, 12
  %893 = call i32 @inl(i32 %892)
  %894 = ashr i32 %893, 19
  %895 = and i32 %894, 1
  %896 = icmp ne i32 %895, 1
  br i1 %896, label %897, label %898

897:                                              ; preds = %880
  br label %880

898:                                              ; preds = %880
  %899 = load i32, i32* %10, align 4
  %900 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %901 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %900, i32 0, i32 0
  %902 = load i32, i32* %901, align 4
  %903 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %904 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %905 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %904, i32 0, i32 0
  %906 = load i64, i64* %905, align 8
  %907 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %903, i64 %906
  %908 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %907, i32 0, i32 15
  %909 = load i32, i32* %908, align 4
  %910 = add nsw i32 %902, %909
  %911 = add nsw i32 %910, 0
  %912 = call i32 @outl(i32 %899, i32 %911)
  %913 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %914 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %913, i32 0, i32 0
  %915 = load i32, i32* %914, align 4
  %916 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %917 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %918 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %917, i32 0, i32 0
  %919 = load i64, i64* %918, align 8
  %920 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %916, i64 %919
  %921 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %920, i32 0, i32 15
  %922 = load i32, i32* %921, align 4
  %923 = add nsw i32 %915, %922
  %924 = add nsw i32 %923, 12
  %925 = call i32 @inl(i32 %924)
  store i32 %925, i32* %11, align 4
  br label %926

926:                                              ; preds = %943, %898
  %927 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %928 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %927, i32 0, i32 0
  %929 = load i32, i32* %928, align 4
  %930 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %931 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %932 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %931, i32 0, i32 0
  %933 = load i64, i64* %932, align 8
  %934 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %930, i64 %933
  %935 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %934, i32 0, i32 15
  %936 = load i32, i32* %935, align 4
  %937 = add nsw i32 %929, %936
  %938 = add nsw i32 %937, 12
  %939 = call i32 @inl(i32 %938)
  %940 = ashr i32 %939, 19
  %941 = and i32 %940, 1
  %942 = icmp ne i32 %941, 1
  br i1 %942, label %943, label %944

943:                                              ; preds = %926
  br label %926

944:                                              ; preds = %926
  %945 = load i32, i32* %11, align 4
  %946 = and i32 %945, -393217
  %947 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %948 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %947, i32 0, i32 0
  %949 = load i32, i32* %948, align 4
  %950 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %951 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %952 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %951, i32 0, i32 0
  %953 = load i64, i64* %952, align 8
  %954 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %950, i64 %953
  %955 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %954, i32 0, i32 15
  %956 = load i32, i32* %955, align 4
  %957 = add nsw i32 %949, %956
  %958 = add nsw i32 %957, 12
  %959 = call i32 @outl(i32 %946, i32 %958)
  %960 = load i32*, i32** %9, align 8
  %961 = getelementptr inbounds i32, i32* %960, i64 9
  %962 = load i32, i32* %961, align 4
  %963 = icmp eq i32 %962, 1
  br i1 %963, label %964, label %974

964:                                              ; preds = %944
  %965 = load i32, i32* @current, align 4
  %966 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %967 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %966, i32 0, i32 1
  store i32 %965, i32* %967, align 4
  %968 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %969 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %970 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %969, i32 0, i32 0
  %971 = load i64, i64* %970, align 8
  %972 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %968, i64 %971
  %973 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %972, i32 0, i32 3
  store i32 1, i32* %973, align 4
  br label %981

974:                                              ; preds = %944
  %975 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %976 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %977 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %976, i32 0, i32 0
  %978 = load i64, i64* %977, align 8
  %979 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %975, i64 %978
  %980 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %979, i32 0, i32 3
  store i32 0, i32* %980, align 4
  br label %981

981:                                              ; preds = %974, %964
  %982 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %983 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %984 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %983, i32 0, i32 0
  %985 = load i64, i64* %984, align 8
  %986 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %982, i64 %985
  %987 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %986, i32 0, i32 6
  store i32 1, i32* %987, align 8
  %988 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %989 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %990 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %989, i32 0, i32 0
  %991 = load i64, i64* %990, align 8
  %992 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %988, i64 %991
  %993 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %992, i32 0, i32 8
  %994 = load i32, i32* %993, align 8
  %995 = icmp eq i32 %994, 1
  br i1 %995, label %996, label %1019

996:                                              ; preds = %981
  %997 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %998 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %999 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %998, i32 0, i32 0
  %1000 = load i64, i64* %999, align 8
  %1001 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %997, i64 %1000
  %1002 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1001, i32 0, i32 16
  %1003 = load i64, i64* %1002, align 8
  %1004 = add nsw i64 %1003, 1
  %1005 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_BoardInfos, align 8
  %1006 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %1007 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %1006, i32 0, i32 0
  %1008 = load i64, i64* %1007, align 8
  %1009 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1005, i64 %1008
  %1010 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1009, i32 0, i32 16
  store i64 %1004, i64* %1010, align 8
  %1011 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %1012 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %1011, i32 0, i32 1
  %1013 = load i64*, i64** %1012, align 8
  %1014 = getelementptr inbounds i64, i64* %1013, i64 0
  store i64 0, i64* %1014, align 8
  %1015 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %1016 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %1017 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %1018 = call i32 @i_APCI3200_ReadAnalogInput(%struct.comedi_device* %1015, %struct.comedi_subdevice* %1016, %struct.comedi_insn* %1017, i32* %13)
  br label %1019

1019:                                             ; preds = %996, %981
  %1020 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %1021 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %1020, i32 0, i32 0
  %1022 = load i32, i32* %1021, align 8
  store i32 %1022, i32* %5, align 4
  br label %1023

1023:                                             ; preds = %1019, %763
  %1024 = load i32, i32* %5, align 4
  ret i32 %1024
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @v_GetAPCI3200EepromCalibrationValue(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @i_APCI3200_Reset(%struct.comedi_device*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @i_APCI3200_ReadAnalogInput(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
