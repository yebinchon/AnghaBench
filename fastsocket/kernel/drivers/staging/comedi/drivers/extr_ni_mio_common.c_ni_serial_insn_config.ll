; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DIO_HW_Serial_Enable = common dso_local global i32 0, align 4
@SERIAL_DISABLED = common dso_local global i32 0, align 4
@DIO_Software_Serial_Control = common dso_local global i32 0, align 4
@SERIAL_600NS = common dso_local global i32 0, align 4
@DIO_HW_Serial_Timebase = common dso_local global i32 0, align 4
@Slow_Internal_Timebase = common dso_local global i32 0, align 4
@DIO_Serial_Out_Divide_By_2 = common dso_local global i32 0, align 4
@SERIAL_1_2US = common dso_local global i32 0, align 4
@SERIAL_10US = common dso_local global i32 0, align 4
@DIO_Control_Register = common dso_local global i32 0, align 4
@Clock_and_FOUT_Register = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ni_serial_insn_config: serial disabled!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_serial_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_serial_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  store i8 0, i8* %12, align 1
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %246

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %243 [
    i32 128, label %27
    i32 129, label %191
  ]

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @DIO_HW_Serial_Enable, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SERIAL_DISABLED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %27
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* @DIO_HW_Serial_Enable, align 4
  %44 = load i32, i32* @DIO_Software_Serial_Control, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @SERIAL_DISABLED, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %172

59:                                               ; preds = %27
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SERIAL_600NS, align 4
  %64 = icmp ule i32 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = load i32, i32* @DIO_HW_Serial_Timebase, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @Slow_Internal_Timebase, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @DIO_Serial_Out_Divide_By_2, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @SERIAL_600NS, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %171

91:                                               ; preds = %59
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SERIAL_1_2US, align 4
  %96 = icmp ule i32 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %91
  %98 = load i32, i32* @DIO_HW_Serial_Timebase, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @Slow_Internal_Timebase, align 4
  %105 = load i32, i32* @DIO_Serial_Out_Divide_By_2, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* @SERIAL_1_2US, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  br label %170

119:                                              ; preds = %91
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SERIAL_10US, align 4
  %124 = icmp ule i32 %122, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %119
  %126 = load i32, i32* @DIO_HW_Serial_Timebase, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @Slow_Internal_Timebase, align 4
  %132 = load i32, i32* @DIO_Serial_Out_Divide_By_2, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @SERIAL_10US, align 4
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %138, i32* %140, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  br label %169

146:                                              ; preds = %119
  %147 = load i32, i32* @DIO_HW_Serial_Enable, align 4
  %148 = load i32, i32* @DIO_Software_Serial_Control, align 4
  %149 = or i32 %147, %148
  %150 = xor i32 %149, -1
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = udiv i32 %159, 1000
  %161 = mul i32 %160, 1000
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %161, i32* %163, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %146, %125
  br label %170

170:                                              ; preds = %169, %97
  br label %171

171:                                              ; preds = %170, %65
  br label %172

172:                                              ; preds = %171, %40
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 4
  %175 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %174, align 8
  %176 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @DIO_Control_Register, align 4
  %181 = call i32 %175(%struct.comedi_device* %176, i32 %179, i32 %180)
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 4
  %184 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %183, align 8
  %185 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @Clock_and_FOUT_Register, align 4
  %190 = call i32 %184(%struct.comedi_device* %185, i32 %188, i32 %189)
  store i32 1, i32* %5, align 4
  br label %246

191:                                              ; preds = %23
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %5, align 4
  br label %246

199:                                              ; preds = %191
  %200 = load i32*, i32** %9, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 255
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %11, align 1
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %199
  %210 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %211 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %212 = load i8, i8* %11, align 1
  %213 = call i32 @ni_serial_hw_readwrite8(%struct.comedi_device* %210, %struct.comedi_subdevice* %211, i8 zeroext %212, i8* %12)
  store i32 %213, i32* %10, align 4
  br label %229

214:                                              ; preds = %199
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp ugt i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %221 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %222 = load i8, i8* %11, align 1
  %223 = call i32 @ni_serial_sw_readwrite8(%struct.comedi_device* %220, %struct.comedi_subdevice* %221, i8 zeroext %222, i8* %12)
  store i32 %223, i32* %10, align 4
  br label %228

224:                                              ; preds = %214
  %225 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %5, align 4
  br label %246

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %228, %209
  %230 = load i32, i32* %10, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %5, align 4
  br label %246

234:                                              ; preds = %229
  %235 = load i8, i8* %12, align 1
  %236 = zext i8 %235 to i32
  %237 = and i32 %236, 255
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %241 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %5, align 4
  br label %246

243:                                              ; preds = %23
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %243, %234, %232, %224, %196, %172, %20
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @ni_serial_hw_readwrite8(%struct.comedi_device*, %struct.comedi_subdevice*, i8 zeroext, i8*) #1

declare dso_local i32 @ni_serial_sw_readwrite8(%struct.comedi_device*, %struct.comedi_subdevice*, i8 zeroext, i8*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
