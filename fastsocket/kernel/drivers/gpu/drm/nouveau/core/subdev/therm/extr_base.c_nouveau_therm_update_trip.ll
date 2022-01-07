; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_update_trip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_update_trip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i64 (%struct.nouveau_therm*)* }
%struct.nouveau_therm_priv = type { %struct.nouveau_therm_trip_point*, %struct.TYPE_4__* }
%struct.nouveau_therm_trip_point = type { i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.nouveau_therm_trip_point* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_therm*)* @nouveau_therm_update_trip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_therm_update_trip(%struct.nouveau_therm* %0) #0 {
  %2 = alloca %struct.nouveau_therm*, align 8
  %3 = alloca %struct.nouveau_therm_priv*, align 8
  %4 = alloca %struct.nouveau_therm_trip_point*, align 8
  %5 = alloca %struct.nouveau_therm_trip_point*, align 8
  %6 = alloca %struct.nouveau_therm_trip_point*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %2, align 8
  %10 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %11 = bitcast %struct.nouveau_therm* %10 to i8*
  %12 = bitcast i8* %11 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %12, %struct.nouveau_therm_priv** %3, align 8
  %13 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %17, align 8
  store %struct.nouveau_therm_trip_point* %18, %struct.nouveau_therm_trip_point** %4, align 8
  store %struct.nouveau_therm_trip_point* null, %struct.nouveau_therm_trip_point** %5, align 8
  %19 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %19, i32 0, i32 0
  %21 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %20, align 8
  store %struct.nouveau_therm_trip_point* %21, %struct.nouveau_therm_trip_point** %6, align 8
  %22 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %23 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %22, i32 0, i32 0
  %24 = load i64 (%struct.nouveau_therm*)*, i64 (%struct.nouveau_therm*)** %23, align 8
  %25 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %26 = call i64 %24(%struct.nouveau_therm* %25)
  store i64 %26, i64* %7, align 8
  store %struct.nouveau_therm_trip_point* null, %struct.nouveau_therm_trip_point** %5, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %49, %1
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %28, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %27
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %4, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %38, i64 %39
  %41 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %37, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %4, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %45, i64 %46
  store %struct.nouveau_therm_trip_point* %47, %struct.nouveau_therm_trip_point** %5, align 8
  br label %48

48:                                               ; preds = %44, %36
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %27

52:                                               ; preds = %27
  %53 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %6, align 8
  %54 = icmp ne %struct.nouveau_therm_trip_point* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %6, align 8
  %58 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %6, align 8
  %64 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %6, align 8
  %67 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = icmp sgt i64 %62, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %6, align 8
  store %struct.nouveau_therm_trip_point* %72, %struct.nouveau_therm_trip_point** %5, align 8
  br label %73

73:                                               ; preds = %71, %61, %55, %52
  %74 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %5, align 8
  %75 = icmp ne %struct.nouveau_therm_trip_point* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %5, align 8
  %78 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %5, align 8
  %81 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %82 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %81, i32 0, i32 0
  store %struct.nouveau_therm_trip_point* %80, %struct.nouveau_therm_trip_point** %82, align 8
  br label %86

83:                                               ; preds = %73
  store i64 0, i64* %8, align 8
  %84 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %85 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %84, i32 0, i32 0
  store %struct.nouveau_therm_trip_point* null, %struct.nouveau_therm_trip_point** %85, align 8
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i64, i64* %8, align 8
  %88 = trunc i64 %87 to i32
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
