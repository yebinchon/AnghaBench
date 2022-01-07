; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_i_APCI3200_ReadCalibrationGainValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_i_APCI3200_ReadCalibrationGainValue.c"
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
define dso_local i32 @i_APCI3200_ReadCalibrationGainValue(%struct.comedi_device* %0, i32* %1) #0 {
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
  br label %26

26:                                               ; preds = %43, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %29, %36
  %38 = add nsw i64 %37, 12
  %39 = call i32 @inl(i64 %38)
  %40 = ashr i32 %39, 19
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %46 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %54, %61
  %63 = add nsw i64 %62, 36
  %64 = call i32 @outl(i32 %51, i64 %63)
  br label %65

65:                                               ; preds = %82, %44
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %70 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %68, %75
  %77 = add nsw i64 %76, 12
  %78 = call i32 @inl(i64 %77)
  %79 = ashr i32 %78, 19
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %65
  br label %65

83:                                               ; preds = %65
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %85 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %86 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %95 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %93, %100
  %102 = add nsw i64 %101, 32
  %103 = call i32 @outl(i32 %90, i64 %102)
  br label %104

104:                                              ; preds = %121, %83
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
  %118 = ashr i32 %117, 19
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %104
  br label %104

122:                                              ; preds = %104
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %127 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %125, %132
  %134 = add nsw i64 %133, 12
  %135 = call i32 @outl(i32 262144, i64 %134)
  store i32 0, i32* %6, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %137 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %138 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ADDIDATA_ENABLE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %122
  %146 = load i32, i32* %6, align 4
  %147 = or i32 %146, 1048576
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %145, %122
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, 524288
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %168, %148
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %156 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %157 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %154, %161
  %163 = add nsw i64 %162, 12
  %164 = call i32 @inl(i64 %163)
  %165 = ashr i32 %164, 19
  %166 = and i32 %165, 1
  %167 = icmp ne i32 %166, 1
  br i1 %167, label %168, label %169

168:                                              ; preds = %151
  br label %151

169:                                              ; preds = %151
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %175 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %176 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %173, %180
  %182 = add nsw i64 %181, 8
  %183 = call i32 @outl(i32 %170, i64 %182)
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %185 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %186 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @ADDIDATA_DISABLE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %228

193:                                              ; preds = %169
  br label %194

194:                                              ; preds = %209, %193
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %199 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %200 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %197, %204
  %206 = add nsw i64 %205, 20
  %207 = call i32 @inl(i64 %206)
  %208 = and i32 %207, 1
  store i32 %208, i32* %5, align 4
  br label %209

209:                                              ; preds = %194
  %210 = load i32, i32* %5, align 4
  %211 = icmp ne i32 %210, 1
  br i1 %211, label %194, label %212

212:                                              ; preds = %209
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %217 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %218 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %215, %222
  %224 = add nsw i64 %223, 28
  %225 = call i32 @inl(i64 %224)
  %226 = load i32*, i32** %4, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %212, %169
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
