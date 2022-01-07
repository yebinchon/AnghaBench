; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnReadAnalogInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnReadAnalogInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8, i32, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i8, i8 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI3XXX_SINGLE = common dso_local global i64 0, align 8
@APCI3XXX_DIFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Channel %d range %d selection error\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Channel %d selection error\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Any conversion started\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Buffer size error\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Operating mode not configured\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3XXX_InsnReadAnalogInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @CR_RANGE(i32 %21)
  %23 = trunc i64 %22 to i8
  store i8 %23, i8* %10, align 1
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @CR_CHAN(i32 %26)
  %28 = trunc i64 %27 to i8
  store i8 %28, i8* %11, align 1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8 0, i8* %15, align 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %240

33:                                               ; preds = %4
  %34 = load i8, i8* %11, align 1
  %35 = zext i8 %34 to i32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp slt i32 %35, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @APCI3XXX_SINGLE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %43, %33
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp slt i32 %51, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %49
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @APCI3XXX_DIFF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59, %43
  %66 = load i8, i8* %10, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sgt i32 %67, 7
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  store i32 -4, i32* %9, align 4
  %70 = load i8, i8* %11, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %10, align 1
  %73 = zext i8 %72 to i32
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %69, %65
  br label %80

76:                                               ; preds = %59, %49
  store i32 -3, i32* %9, align 4
  %77 = load i8, i8* %11, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %75
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %239

83:                                               ; preds = %80
  %84 = load i8, i8* %15, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load i8, i8* %15, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %236

91:                                               ; preds = %87
  %92 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %94, 1
  br i1 %95, label %96, label %236

96:                                               ; preds = %91, %83
  %97 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %98 = call i64 @i_APCI3XXX_TestConversionStarted(%struct.comedi_device* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %233

100:                                              ; preds = %96
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 12
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @writel(i32 65536, i8* %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 4
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 @readl(i8* %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = and i64 %114, 4294967024
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 4
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 @writel(i32 %117, i8* %122)
  %124 = load i8, i8* %10, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 3
  %127 = load i8, i8* %10, align 1
  %128 = zext i8 %127 to i32
  %129 = ashr i32 %128, 2
  %130 = shl i32 %129, 6
  %131 = or i32 %126, %130
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = shl i32 %135, 7
  %137 = or i32 %131, %136
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 0
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @writel(i32 %138, i8* %143)
  %145 = load i32, i32* %12, align 4
  %146 = zext i32 %145 to i64
  %147 = or i64 %146, 256
  %148 = trunc i64 %147 to i32
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 4
  %153 = inttoptr i64 %152 to i8*
  %154 = call i32 @writel(i32 %148, i8* %153)
  %155 = load i8, i8* %11, align 1
  %156 = zext i8 %155 to i32
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 0
  %161 = inttoptr i64 %160 to i8*
  %162 = call i32 @writel(i32 %156, i8* %161)
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 4
  %168 = inttoptr i64 %167 to i8*
  %169 = call i32 @writel(i32 %163, i8* %168)
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 48
  %174 = inttoptr i64 %173 to i8*
  %175 = call i32 @writel(i32 1, i8* %174)
  %176 = load i8, i8* %15, align 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store i8 %176, i8* %178, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  store i32 1, i32* %180, align 4
  %181 = load i8, i8* %15, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %225

184:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %221, %184
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ult i32 %186, %189
  br i1 %190, label %191, label %224

191:                                              ; preds = %185
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 8
  %196 = inttoptr i64 %195 to i8*
  %197 = call i32 @writel(i32 524288, i8* %196)
  br label %198

198:                                              ; preds = %207, %191
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 20
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 @readl(i8* %203)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = and i32 %205, 1
  store i32 %206, i32* %12, align 4
  br label %207

207:                                              ; preds = %198
  %208 = load i32, i32* %12, align 4
  %209 = icmp ne i32 %208, 1
  br i1 %209, label %198, label %210

210:                                              ; preds = %207
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 28
  %215 = inttoptr i64 %214 to i8*
  %216 = call i32 @readl(i8* %215)
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* %14, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %216, i32* %220, align 4
  br label %221

221:                                              ; preds = %210
  %222 = load i32, i32* %14, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %14, align 4
  br label %185

224:                                              ; preds = %185
  br label %232

225:                                              ; preds = %100
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 8
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @writel(i32 1572864, i8* %230)
  br label %232

232:                                              ; preds = %225, %224
  br label %235

233:                                              ; preds = %96
  %234 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -10, i32* %9, align 4
  br label %235

235:                                              ; preds = %233, %232
  br label %238

236:                                              ; preds = %91, %87
  %237 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %238

238:                                              ; preds = %236, %235
  br label %239

239:                                              ; preds = %238, %80
  br label %242

240:                                              ; preds = %4
  %241 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %242

242:                                              ; preds = %240, %239
  %243 = load i32, i32* %9, align 4
  ret i32 %243
}

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @i_APCI3XXX_TestConversionStarted(%struct.comedi_device*) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @readl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
