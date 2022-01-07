; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das08.c_das08_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das08.c_das08_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DAS08_LSB = common dso_local global i64 0, align 8
@DAS08_MSB = common dso_local global i64 0, align 8
@DAS08_MUX_MASK = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@DAS08_CONTROL = common dso_local global i64 0, align 8
@DAS08AO_GAIN_CONTROL = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"das08: over-range\0A\00", align 1
@DAS08_TRIG_12BIT = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@DAS08_STATUS = common dso_local global i64 0, align 8
@DAS08_EOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"das08: timeout\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@das08_encode12 = common dso_local global i64 0, align 8
@das08_pcm_encode12 = common dso_local global i64 0, align 8
@das08_encode16 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"bug! unknown ai encoding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das08_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das08_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_RANGE(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DAS08_LSB, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inb(i64 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DAS08_MSB, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inb(i64 %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 1
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load i32, i32* @DAS08_MUX_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @DAS08_MUX(i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DAS08_CONTROL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 %53, i64 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %87

69:                                               ; preds = %4
  %70 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %71 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CR_RANGE(i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DAS08AO_GAIN_CONTROL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outb(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %69, %4
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %227, %87
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %91 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %230

94:                                               ; preds = %88
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thisboard, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 16
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %101 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DAS08_MSB, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @inb(i64 %104)
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %99
  br label %111

111:                                              ; preds = %110, %94
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DAS08_TRIG_12BIT, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @outb_p(i32 0, i64 %116)
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %134, %111
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @TIMEOUT, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DAS08_STATUS, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @inb(i64 %127)
  %129 = load i32, i32* @DAS08_EOC, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  br label %137

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %118

137:                                              ; preds = %132, %118
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @TIMEOUT, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* @ETIME, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %232

145:                                              ; preds = %137
  %146 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %147 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @DAS08_MSB, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @inb(i64 %150)
  store i32 %151, i32* %15, align 4
  %152 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %153 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DAS08_LSB, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @inb(i64 %156)
  store i32 %157, i32* %14, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thisboard, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @das08_encode12, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %145
  %164 = load i32, i32* %14, align 4
  %165 = ashr i32 %164, 4
  %166 = load i32, i32* %15, align 4
  %167 = shl i32 %166, 4
  %168 = or i32 %165, %167
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  br label %226

173:                                              ; preds = %145
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thisboard, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @das08_pcm_encode12, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %173
  %180 = load i32, i32* %15, align 4
  %181 = shl i32 %180, 8
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %183, i32* %187, align 4
  br label %225

188:                                              ; preds = %173
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thisboard, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @das08_encode16, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %221

194:                                              ; preds = %188
  %195 = load i32, i32* %15, align 4
  %196 = and i32 %195, 128
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %194
  %199 = load i32, i32* %14, align 4
  %200 = or i32 32768, %199
  %201 = load i32, i32* %15, align 4
  %202 = and i32 %201, 127
  %203 = shl i32 %202, 8
  %204 = or i32 %200, %203
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %204, i32* %208, align 4
  br label %220

209:                                              ; preds = %194
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %15, align 4
  %212 = and i32 %211, 127
  %213 = shl i32 %212, 8
  %214 = or i32 %210, %213
  %215 = sub nsw i32 32768, %214
  %216 = load i32*, i32** %9, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %209, %198
  br label %224

221:                                              ; preds = %188
  %222 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %223 = call i32 @comedi_error(%struct.comedi_device* %222, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %232

224:                                              ; preds = %220
  br label %225

225:                                              ; preds = %224, %179
  br label %226

226:                                              ; preds = %225, %163
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %88

230:                                              ; preds = %88
  %231 = load i32, i32* %11, align 4
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %230, %221, %141
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @DAS08_MUX(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
