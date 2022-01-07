; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_ramht.c_nouveau_ramht_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_ramht.c_nouveau_ramht_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_ramht = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*)* }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_ramht_insert(%struct.nouveau_ramht* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_ramht*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nouveau_bar*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.nouveau_ramht* %0, %struct.nouveau_ramht** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %6, align 8
  %14 = call %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_ramht* %13)
  store %struct.nouveau_bar* %14, %struct.nouveau_bar** %10, align 8
  %15 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @nouveau_ramht_hash(%struct.nouveau_ramht* %15, i32 %16, i64 %17)
  store i64 %18, i64* %12, align 8
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %58, %4
  %20 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %6, align 8
  %21 = load i64, i64* %11, align 8
  %22 = add nsw i64 %21, 4
  %23 = call i32 @nv_ro32(%struct.nouveau_ramht* %20, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %19
  %26 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %6, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add nsw i64 %27, 0
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @nv_wo32(%struct.nouveau_ramht* %26, i64 %28, i64 %29)
  %31 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %6, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add nsw i64 %32, 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @nv_wo32(%struct.nouveau_ramht* %31, i64 %33, i64 %34)
  %36 = load %struct.nouveau_bar*, %struct.nouveau_bar** %10, align 8
  %37 = icmp ne %struct.nouveau_bar* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load %struct.nouveau_bar*, %struct.nouveau_bar** %10, align 8
  %40 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %39, i32 0, i32 0
  %41 = load i32 (%struct.nouveau_bar*)*, i32 (%struct.nouveau_bar*)** %40, align 8
  %42 = load %struct.nouveau_bar*, %struct.nouveau_bar** %10, align 8
  %43 = call i32 %41(%struct.nouveau_bar* %42)
  br label %44

44:                                               ; preds = %38, %25
  %45 = load i64, i64* %11, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %65

47:                                               ; preds = %19
  %48 = load i64, i64* %11, align 8
  %49 = add nsw i64 %48, 8
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %6, align 8
  %52 = call %struct.TYPE_2__* @nv_gpuobj(%struct.nouveau_ramht* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i64 0, i64* %11, align 8
  br label %57

57:                                               ; preds = %56, %47
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %19, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %44
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.nouveau_bar* @nouveau_bar(%struct.nouveau_ramht*) #1

declare dso_local i64 @nouveau_ramht_hash(%struct.nouveau_ramht*, i32, i64) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_ramht*, i64) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_ramht*, i64, i64) #1

declare dso_local %struct.TYPE_2__* @nv_gpuobj(%struct.nouveau_ramht*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
