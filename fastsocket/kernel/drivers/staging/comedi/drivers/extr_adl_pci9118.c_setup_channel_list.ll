; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_setup_channel_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_setup_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32 }
%struct.comedi_device = type { i64, i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"adl_pci9118 EDBG: BGN: setup_channel_list(%d,.,%d,.,%d,%d,%d,%d)\0A\00", align 1
@AREF_DIFF = common dso_local global i64 0, align 8
@PCI9118_BIPOLAR_RANGES = common dso_local global i32 0, align 4
@AdControl_UniP = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@AdControl_Diff = common dso_local global i32 0, align 4
@PCI9118_ADCNTRL = common dso_local global i64 0, align 8
@PCI9118_SCANMOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"FA: %04x: \00", align 1
@PCI9118_GAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SL: \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"BA: %04x: \00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"adl_pci9118 EDBG: END: setup_channel_list()\0A\00", align 1
@PCI9118_CHANLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*, i32, i32, i32, i32, i8)* @setup_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_channel_list(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8 signext %8) #0 {
  %10 = alloca %struct.comedi_device*, align 8
  %11 = alloca %struct.comedi_subdevice*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %10, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8 %8, i8* %18, align 1
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %24, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %17, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %9
  store i32 8, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %36, %9
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @CR_AREF(i32 %40)
  %42 = load i64, i64* @AREF_DIFF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %20, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CR_RANGE(i32 %48)
  %50 = load i32, i32* @PCI9118_BIPOLAR_RANGES, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %21, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @AdControl_UniP, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %70

62:                                               ; preds = %53
  %63 = load i32, i32* @AdControl_UniP, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %64, 255
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %62, %56
  %71 = load i32, i32* %20, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @AdControl_Diff, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %87

79:                                               ; preds = %70
  %80 = load i32, i32* @AdControl_Diff, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %81, 255
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %79, %73
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PCI9118_ADCNTRL, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @outl(i32 %90, i64 %95)
  %97 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PCI9118_SCANMOD, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outl(i32 2, i64 %101)
  %103 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PCI9118_SCANMOD, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @outl(i32 0, i64 %107)
  %109 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PCI9118_SCANMOD, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outl(i32 1, i64 %113)
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %162

117:                                              ; preds = %87
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %24, align 4
  %121 = load i32, i32* %24, align 4
  %122 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  store i32 0, i32* %19, align 4
  br label %123

123:                                              ; preds = %157, %117
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %160

127:                                              ; preds = %123
  %128 = load i32*, i32** %13, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @CR_CHAN(i32 %130)
  store i32 %131, i32* %22, align 4
  %132 = load i32*, i32** %13, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @CR_RANGE(i32 %134)
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %23, align 4
  %137 = and i32 %136, 3
  %138 = shl i32 %137, 8
  %139 = load i32, i32* %22, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %22, align 4
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %24, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %145 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PCI9118_GAIN, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @outl(i32 %143, i64 %148)
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %24, align 4
  %152 = or i32 %150, %151
  %153 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %24, align 4
  br label %157

157:                                              ; preds = %127
  %158 = load i32, i32* %19, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %19, align 4
  br label %123

160:                                              ; preds = %123
  %161 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %87
  %163 = load i32, i32* %24, align 4
  %164 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  store i32 0, i32* %19, align 4
  br label %165

165:                                              ; preds = %200, %162
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %203

169:                                              ; preds = %165
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* %19, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @CR_CHAN(i32 %174)
  store i32 %175, i32* %22, align 4
  %176 = load i32*, i32** %13, align 8
  %177 = load i32, i32* %19, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @CR_RANGE(i32 %180)
  store i32 %181, i32* %23, align 4
  %182 = load i32, i32* %23, align 4
  %183 = and i32 %182, 3
  %184 = shl i32 %183, 8
  %185 = load i32, i32* %22, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %22, align 4
  %187 = load i32, i32* %22, align 4
  %188 = load i32, i32* %24, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %191 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @PCI9118_GAIN, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @outl(i32 %189, i64 %194)
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %24, align 4
  %198 = or i32 %196, %197
  %199 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %169
  %201 = load i32, i32* %19, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %19, align 4
  br label %165

203:                                              ; preds = %165
  %204 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %205 = load i32, i32* %16, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %246

207:                                              ; preds = %203
  %208 = load i32, i32* %24, align 4
  %209 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %208)
  store i32 0, i32* %19, align 4
  br label %210

210:                                              ; preds = %241, %207
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %16, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %244

214:                                              ; preds = %210
  %215 = load i32*, i32** %13, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @CR_CHAN(i32 %217)
  store i32 %218, i32* %22, align 4
  %219 = load i32*, i32** %13, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @CR_RANGE(i32 %221)
  store i32 %222, i32* %23, align 4
  %223 = load i32, i32* %23, align 4
  %224 = and i32 %223, 3
  %225 = shl i32 %224, 8
  %226 = load i32, i32* %22, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %22, align 4
  %228 = load i32, i32* %22, align 4
  %229 = load i32, i32* %24, align 4
  %230 = or i32 %228, %229
  %231 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %232 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @PCI9118_GAIN, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @outl(i32 %230, i64 %235)
  %237 = load i32, i32* %22, align 4
  %238 = load i32, i32* %24, align 4
  %239 = or i32 %237, %238
  %240 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %214
  %242 = load i32, i32* %19, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %19, align 4
  br label %210

244:                                              ; preds = %210
  %245 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %203
  %247 = load %struct.comedi_device*, %struct.comedi_device** %10, align 8
  %248 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @PCI9118_SCANMOD, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @outl(i32 0, i64 %251)
  %253 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
