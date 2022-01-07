; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ReadCJCCalOffset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ReadCJCCalOffset.c"
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
define dso_local i32 @i_APCI3200_ReadCJCCalOffset(%struct.comedi_device* %0, i32* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %10, %17
  %19 = add nsw i64 %18, 12
  %20 = call i32 @inl(i64 %19)
  %21 = ashr i32 %20, 19
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %35, %42
  %44 = add nsw i64 %43, 36
  %45 = call i32 @outl(i32 %32, i64 %44)
  br label %46

46:                                               ; preds = %63, %25
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %49, %56
  %58 = add nsw i64 %57, 12
  %59 = call i32 @inl(i64 %58)
  %60 = ashr i32 %59, 19
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %46

64:                                               ; preds = %46
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %74, %81
  %83 = add nsw i64 %82, 32
  %84 = call i32 @outl(i32 %71, i64 %83)
  br label %85

85:                                               ; preds = %102, %64
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %90 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %88, %95
  %97 = add nsw i64 %96, 12
  %98 = call i32 @inl(i64 %97)
  %99 = ashr i32 %98, 19
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %85
  br label %85

103:                                              ; preds = %85
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %108 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %106, %113
  %115 = add nsw i64 %114, 4
  %116 = call i32 @outl(i32 1024, i64 %115)
  br label %117

117:                                              ; preds = %134, %103
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %122 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %120, %127
  %129 = add nsw i64 %128, 12
  %130 = call i32 @inl(i64 %129)
  %131 = ashr i32 %130, 19
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %117
  br label %117

135:                                              ; preds = %117
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %140 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %141 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %138, %145
  %147 = add nsw i64 %146, 12
  %148 = call i32 @outl(i32 131072, i64 %147)
  store i32 0, i32* %6, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %150 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %151 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @ADDIDATA_ENABLE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %135
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %159, 1048576
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %158, %135
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, 524288
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %181, %161
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %169 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %170 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %167, %174
  %176 = add nsw i64 %175, 12
  %177 = call i32 @inl(i64 %176)
  %178 = ashr i32 %177, 19
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 1
  br i1 %180, label %181, label %182

181:                                              ; preds = %164
  br label %164

182:                                              ; preds = %164
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %188 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %189 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %186, %193
  %195 = add nsw i64 %194, 8
  %196 = call i32 @outl(i32 %183, i64 %195)
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %198 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %199 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @ADDIDATA_DISABLE, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %241

206:                                              ; preds = %182
  br label %207

207:                                              ; preds = %222, %206
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %212 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %213 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %210, %217
  %219 = add nsw i64 %218, 20
  %220 = call i32 @inl(i64 %219)
  %221 = and i32 %220, 1
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %207
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 1
  br i1 %224, label %207, label %225

225:                                              ; preds = %222
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %230 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %231 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %228, %235
  %237 = add nsw i64 %236, 28
  %238 = call i32 @inl(i64 %237)
  %239 = load i32*, i32** %4, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %225, %182
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
