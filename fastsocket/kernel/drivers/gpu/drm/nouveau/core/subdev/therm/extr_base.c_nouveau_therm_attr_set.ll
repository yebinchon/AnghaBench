; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_attr_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32 (%struct.nouveau_therm.0*)* }
%struct.nouveau_therm.0 = type opaque
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_attr_set(%struct.nouveau_therm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_therm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_therm_priv*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %10 = bitcast %struct.nouveau_therm* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %11, %struct.nouveau_therm_priv** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %175 [
    i32 137, label %13
    i32 138, label %40
    i32 136, label %67
    i32 131, label %71
    i32 130, label %84
    i32 133, label %97
    i32 132, label %110
    i32 135, label %123
    i32 134, label %136
    i32 129, label %149
    i32 128, label %162
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %20 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %18, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %17
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %36 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store i32 %34, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %178

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %47 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %45, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %55 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %53, %44
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %63 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %178

67:                                               ; preds = %3
  %68 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @nouveau_therm_fan_mode(%struct.nouveau_therm* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %178

71:                                               ; preds = %3
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %74 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %78 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32 (%struct.nouveau_therm.0*)*, i32 (%struct.nouveau_therm.0*)** %79, align 8
  %81 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %82 = bitcast %struct.nouveau_therm* %81 to %struct.nouveau_therm.0*
  %83 = call i32 %80(%struct.nouveau_therm.0* %82)
  store i32 0, i32* %4, align 4
  br label %178

84:                                               ; preds = %3
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %87 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  %90 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %91 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32 (%struct.nouveau_therm.0*)*, i32 (%struct.nouveau_therm.0*)** %92, align 8
  %94 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %95 = bitcast %struct.nouveau_therm* %94 to %struct.nouveau_therm.0*
  %96 = call i32 %93(%struct.nouveau_therm.0* %95)
  store i32 0, i32* %4, align 4
  br label %178

97:                                               ; preds = %3
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %100 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  %103 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %104 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32 (%struct.nouveau_therm.0*)*, i32 (%struct.nouveau_therm.0*)** %105, align 8
  %107 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %108 = bitcast %struct.nouveau_therm* %107 to %struct.nouveau_therm.0*
  %109 = call i32 %106(%struct.nouveau_therm.0* %108)
  store i32 0, i32* %4, align 4
  br label %178

110:                                              ; preds = %3
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %113 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %117 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32 (%struct.nouveau_therm.0*)*, i32 (%struct.nouveau_therm.0*)** %118, align 8
  %120 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %121 = bitcast %struct.nouveau_therm* %120 to %struct.nouveau_therm.0*
  %122 = call i32 %119(%struct.nouveau_therm.0* %121)
  store i32 0, i32* %4, align 4
  br label %178

123:                                              ; preds = %3
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %126 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  %129 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %130 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32 (%struct.nouveau_therm.0*)*, i32 (%struct.nouveau_therm.0*)** %131, align 8
  %133 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %134 = bitcast %struct.nouveau_therm* %133 to %struct.nouveau_therm.0*
  %135 = call i32 %132(%struct.nouveau_therm.0* %134)
  store i32 0, i32* %4, align 4
  br label %178

136:                                              ; preds = %3
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %139 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 4
  %142 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %143 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32 (%struct.nouveau_therm.0*)*, i32 (%struct.nouveau_therm.0*)** %144, align 8
  %146 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %147 = bitcast %struct.nouveau_therm* %146 to %struct.nouveau_therm.0*
  %148 = call i32 %145(%struct.nouveau_therm.0* %147)
  store i32 0, i32* %4, align 4
  br label %178

149:                                              ; preds = %3
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %152 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 8
  %155 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %156 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32 (%struct.nouveau_therm.0*)*, i32 (%struct.nouveau_therm.0*)** %157, align 8
  %159 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %160 = bitcast %struct.nouveau_therm* %159 to %struct.nouveau_therm.0*
  %161 = call i32 %158(%struct.nouveau_therm.0* %160)
  store i32 0, i32* %4, align 4
  br label %178

162:                                              ; preds = %3
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %165 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 4
  %168 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %8, align 8
  %169 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i32 (%struct.nouveau_therm.0*)*, i32 (%struct.nouveau_therm.0*)** %170, align 8
  %172 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %173 = bitcast %struct.nouveau_therm* %172 to %struct.nouveau_therm.0*
  %174 = call i32 %171(%struct.nouveau_therm.0* %173)
  store i32 0, i32* %4, align 4
  br label %178

175:                                              ; preds = %3
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %175, %162, %149, %136, %123, %110, %97, %84, %71, %67, %60, %33
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @nouveau_therm_fan_mode(%struct.nouveau_therm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
