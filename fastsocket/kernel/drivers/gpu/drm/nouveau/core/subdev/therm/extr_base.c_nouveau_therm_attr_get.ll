; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_attr_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_attr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { i32, %struct.TYPE_12__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_attr_get(%struct.nouveau_therm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_therm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_therm_priv*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %8 = bitcast %struct.nouveau_therm* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %9, %struct.nouveau_therm_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %77 [
    i32 137, label %11
    i32 138, label %18
    i32 136, label %25
    i32 131, label %29
    i32 130, label %35
    i32 133, label %41
    i32 132, label %47
    i32 135, label %53
    i32 134, label %59
    i32 129, label %65
    i32 128, label %71
  ]

11:                                               ; preds = %2
  %12 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %13 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %20 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %27 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  br label %80

29:                                               ; preds = %2
  %30 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %31 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %80

35:                                               ; preds = %2
  %36 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %37 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %80

41:                                               ; preds = %2
  %42 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %43 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %2
  %48 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %49 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  br label %80

53:                                               ; preds = %2
  %54 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %55 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %3, align 4
  br label %80

59:                                               ; preds = %2
  %60 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %61 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %3, align 4
  br label %80

65:                                               ; preds = %2
  %66 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %67 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %3, align 4
  br label %80

71:                                               ; preds = %2
  %72 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %6, align 8
  %73 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %3, align 4
  br label %80

77:                                               ; preds = %2
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %71, %65, %59, %53, %47, %41, %35, %29, %25, %18, %11
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
