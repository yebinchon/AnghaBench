; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ReadCalibrationOffsetValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ReadCalibrationOffsetValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@s_BoardInfos = common dso_local global %struct.TYPE_3__* null, align 8
@ADDIDATA_ENABLE = common dso_local global i64 0, align 8
@ADDIDATA_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3200_ReadCalibrationOffsetValue(%struct.comedi_device* %0, i32* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %11, %18
  %20 = add nsw i64 %19, 12
  %21 = call i32 @inl(i64 %20)
  %22 = ashr i32 %21, 19
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  br label %8

26:                                               ; preds = %8
  br label %27

27:                                               ; preds = %44, %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %30, %37
  %39 = add nsw i64 %38, 12
  %40 = call i32 @inl(i64 %39)
  %41 = ashr i32 %40, 19
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %27

45:                                               ; preds = %27
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %57 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %55, %62
  %64 = add nsw i64 %63, 36
  %65 = call i32 @outl(i32 %52, i64 %64)
  br label %66

66:                                               ; preds = %83, %45
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %71 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %69, %76
  %78 = add nsw i64 %77, 12
  %79 = call i32 @inl(i64 %78)
  %80 = ashr i32 %79, 19
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %66

84:                                               ; preds = %66
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %86 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %96 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %97 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %94, %101
  %103 = add nsw i64 %102, 32
  %104 = call i32 @outl(i32 %91, i64 %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %109 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %107, %114
  %116 = add nsw i64 %115, 12
  %117 = call i32 @inl(i64 %116)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %135, %84
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %123 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %121, %128
  %130 = add nsw i64 %129, 12
  %131 = call i32 @inl(i64 %130)
  %132 = ashr i32 %131, 19
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %118
  br label %118

136:                                              ; preds = %118
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, 131072
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %143 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %144 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %141, %148
  %150 = add nsw i64 %149, 12
  %151 = call i32 @outl(i32 %138, i64 %150)
  store i32 0, i32* %7, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %153 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %154 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @ADDIDATA_ENABLE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %136
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, 1048576
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %161, %136
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, 524288
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %184, %164
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %172 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %173 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %170, %177
  %179 = add nsw i64 %178, 12
  %180 = call i32 @inl(i64 %179)
  %181 = ashr i32 %180, 19
  %182 = and i32 %181, 1
  %183 = icmp ne i32 %182, 1
  br i1 %183, label %184, label %185

184:                                              ; preds = %167
  br label %167

185:                                              ; preds = %167
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %191 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %192 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %189, %196
  %198 = add nsw i64 %197, 8
  %199 = call i32 @outl(i32 %186, i64 %198)
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %201 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %202 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @ADDIDATA_DISABLE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %244

209:                                              ; preds = %185
  br label %210

210:                                              ; preds = %225, %209
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %215 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %216 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %213, %220
  %222 = add nsw i64 %221, 20
  %223 = call i32 @inl(i64 %222)
  %224 = and i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %210
  %226 = load i32, i32* %6, align 4
  %227 = icmp ne i32 %226, 1
  br i1 %227, label %210, label %228

228:                                              ; preds = %225
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %233 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %234 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %231, %238
  %240 = add nsw i64 %239, 28
  %241 = call i32 @inl(i64 %240)
  %242 = load i32*, i32** %4, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %228, %185
  ret i32 0
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
