; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci16xx.c_i_APCI16XX_InsnConfigInitTTLIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci16xx.c_i_APCI16XX_InsnConfigInitTTLIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI16XX_TTL_INIT = common dso_local global i8 0, align 1
@APCI16XX_TTL_INITDIRECTION = common dso_local global i8 0, align 1
@APCI16XX_TTL_OUTPUTMEMORY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"\0ABuffer size error\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\0ACommand selection error\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\0APort %d direction selection error\00", align 1
@ADDIDATA_ENABLE = common dso_local global i32 0, align 4
@ADDIDATA_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI16XX_InsnConfigInitTTLIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 8
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %12, align 1
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 1
  br i1 %26, label %27, label %86

27:                                               ; preds = %4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %10, align 1
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @APCI16XX_TTL_INIT, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %27
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @APCI16XX_TTL_INITDIRECTION, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @APCI16XX_TTL_OUTPUTMEMORY, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %43, %37, %27
  %50 = load i8, i8* %10, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @APCI16XX_TTL_INITDIRECTION, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = trunc i32 %59 to i8
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %12, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %55, %49
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* @APCI16XX_TTL_OUTPUTMEMORY, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = trunc i32 %76 to i8
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %73, %67
  br label %85

83:                                               ; preds = %43
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -100, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %82
  br label %88

86:                                               ; preds = %4
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %170

91:                                               ; preds = %88
  %92 = load i8, i8* %10, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @APCI16XX_TTL_INITDIRECTION, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %170

97:                                               ; preds = %91
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @memset(i32* %100, i32 0, i32 8)
  store i8 1, i8* %11, align 1
  br label %102

102:                                              ; preds = %166, %97
  %103 = load i8, i8* %11, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* %12, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp sle i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = icmp sge i32 %109, 0
  br label %111

111:                                              ; preds = %108, %102
  %112 = phi i1 [ false, %102 ], [ %110, %108 ]
  br i1 %112, label %113, label %169

113:                                              ; preds = %111
  %114 = load i32*, i32** %8, align 8
  %115 = load i8, i8* %11, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %113
  %121 = load i32*, i32** %8, align 8
  %122 = load i8, i8* %11, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 255
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = load i8, i8* %11, align 1
  %129 = zext i8 %128 to i32
  %130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i8, i8* %11, align 1
  %132 = zext i8 %131 to i32
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %127, %120, %113
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i8, i8* %11, align 1
  %139 = zext i8 %138 to i32
  %140 = sub nsw i32 %139, 1
  %141 = sdiv i32 %140, 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = load i8, i8* %11, align 1
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i8, i8* %11, align 1
  %151 = zext i8 %150 to i32
  %152 = sub nsw i32 %151, 1
  %153 = srem i32 %152, 4
  %154 = mul nsw i32 8, %153
  %155 = shl i32 %149, %154
  %156 = or i32 %144, %155
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i8, i8* %11, align 1
  %161 = zext i8 %160 to i32
  %162 = sub nsw i32 %161, 1
  %163 = sdiv i32 %162, 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  store i32 %156, i32* %165, align 4
  br label %166

166:                                              ; preds = %134
  %167 = load i8, i8* %11, align 1
  %168 = add i8 %167, 1
  store i8 %168, i8* %11, align 1
  br label %102

169:                                              ; preds = %111
  br label %170

170:                                              ; preds = %169, %91, %88
  %171 = load i32, i32* %9, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %221

173:                                              ; preds = %170
  %174 = load i8, i8* %10, align 1
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* @APCI16XX_TTL_INIT, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %185, label %179

179:                                              ; preds = %173
  %180 = load i8, i8* %10, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8, i8* @APCI16XX_TTL_INITDIRECTION, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %220

185:                                              ; preds = %179, %173
  store i8 0, i8* %11, align 1
  br label %186

186:                                              ; preds = %216, %185
  %187 = load i8, i8* %11, align 1
  %188 = zext i8 %187 to i32
  %189 = load i8, i8* %12, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp sle i32 %188, %190
  br i1 %191, label %192, label %219

192:                                              ; preds = %186
  %193 = load i8, i8* %11, align 1
  %194 = zext i8 %193 to i32
  %195 = srem i32 %194, 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %215

197:                                              ; preds = %192
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i8, i8* %11, align 1
  %202 = zext i8 %201 to i32
  %203 = sdiv i32 %202, 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, 32
  %211 = load i8, i8* %11, align 1
  %212 = zext i8 %211 to i64
  %213 = add nsw i64 %210, %212
  %214 = call i32 @outl(i32 %206, i64 %213)
  br label %215

215:                                              ; preds = %197, %192
  br label %216

216:                                              ; preds = %215
  %217 = load i8, i8* %11, align 1
  %218 = add i8 %217, 1
  store i8 %218, i8* %11, align 1
  br label %186

219:                                              ; preds = %186
  br label %220

220:                                              ; preds = %219, %179
  br label %221

221:                                              ; preds = %220, %170
  %222 = load i8, i8* %10, align 1
  %223 = zext i8 %222 to i32
  %224 = load i8, i8* @APCI16XX_TTL_OUTPUTMEMORY, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp eq i32 %223, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %221
  %228 = load i32*, i32** %8, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load i32, i32* @ADDIDATA_ENABLE, align 4
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 8
  br label %240

236:                                              ; preds = %227
  %237 = load i32, i32* @ADDIDATA_DISABLE, align 4
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %236, %232
  br label %241

241:                                              ; preds = %240, %221
  %242 = load i32, i32* %9, align 4
  ret i32 %242
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
