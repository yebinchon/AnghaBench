; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_update_linear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_update_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i64 (%struct.nouveau_therm*)* }
%struct.nouveau_therm_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_therm*)* @nouveau_therm_update_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_therm_update_linear(%struct.nouveau_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca %struct.nouveau_therm_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %3, align 8
  %9 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %10 = bitcast %struct.nouveau_therm* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %11, %struct.nouveau_therm_priv** %4, align 8
  %12 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %25 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %24, i32 0, i32 0
  %26 = load i64 (%struct.nouveau_therm*)*, i64 (%struct.nouveau_therm*)** %25, align 8
  %27 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %28 = call i64 %26(%struct.nouveau_therm* %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %34 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %2, align 4
  br label %87

39:                                               ; preds = %1
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %45 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %2, align 4
  br label %87

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %8, align 8
  %55 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %56 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %62 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %60, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %8, align 8
  %70 = mul nsw i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %5, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i64, i64* %8, align 8
  %75 = sdiv i64 %74, %73
  store i64 %75, i64* %8, align 8
  %76 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %77 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %51, %43, %32
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
