; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ReadCJCValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3200.c_i_APCI3200_ReadCJCValue.c"
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
define dso_local i32 @i_APCI3200_ReadCJCValue(%struct.comedi_device* %0, i32* %1) #0 {
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
  store i32 0, i32* %6, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %118 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ADDIDATA_ENABLE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %103
  %127 = load i32, i32* %6, align 4
  %128 = or i32 %127, 1048576
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %126, %103
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, 524288
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %149, %129
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %137 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %138 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %135, %142
  %144 = add nsw i64 %143, 12
  %145 = call i32 @inl(i64 %144)
  %146 = ashr i32 %145, 19
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 1
  br i1 %148, label %149, label %150

149:                                              ; preds = %132
  br label %132

150:                                              ; preds = %132
  %151 = load i32, i32* %6, align 4
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
  %163 = add nsw i64 %162, 8
  %164 = call i32 @outl(i32 %151, i64 %163)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %166 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @ADDIDATA_DISABLE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %209

174:                                              ; preds = %150
  br label %175

175:                                              ; preds = %190, %174
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %180 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %181 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %178, %185
  %187 = add nsw i64 %186, 20
  %188 = call i32 @inl(i64 %187)
  %189 = and i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %175
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 1
  br i1 %192, label %175, label %193

193:                                              ; preds = %190
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %198 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %199 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %196, %203
  %205 = add nsw i64 %204, 28
  %206 = call i32 @inl(i64 %205)
  %207 = load i32*, i32** %4, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %193, %150
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
