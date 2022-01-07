; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_curs_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_curs_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_display_curs_class = type { i64 }
%struct.nv50_disp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nv50_disp_pioc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvd0_disp_curs_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_disp_curs_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_display_curs_class*, align 8
  %15 = alloca %struct.nv50_disp_priv*, align 8
  %16 = alloca %struct.nv50_disp_pioc*, align 8
  %17 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.nv50_display_curs_class*
  store %struct.nv50_display_curs_class* %19, %struct.nv50_display_curs_class** %14, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %21 = bitcast %struct.nouveau_object* %20 to i8*
  %22 = bitcast i8* %21 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %22, %struct.nv50_disp_priv** %15, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %35, label %26

26:                                               ; preds = %6
  %27 = load %struct.nv50_display_curs_class*, %struct.nv50_display_curs_class** %14, align 8
  %28 = getelementptr inbounds %struct.nv50_display_curs_class, %struct.nv50_display_curs_class* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %15, align 8
  %31 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26, %6
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %56

38:                                               ; preds = %26
  %39 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %40 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %41 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %42 = load %struct.nv50_display_curs_class*, %struct.nv50_display_curs_class** %14, align 8
  %43 = getelementptr inbounds %struct.nv50_display_curs_class, %struct.nv50_display_curs_class* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 13, %44
  %46 = bitcast %struct.nv50_disp_pioc** %16 to i8**
  %47 = call i32 @nvd0_disp_pioc_create_(%struct.nouveau_object* %39, %struct.nouveau_object* %40, %struct.nouveau_oclass* %41, i64 %45, i32 4, i8** %46)
  store i32 %47, i32* %17, align 4
  %48 = load %struct.nv50_disp_pioc*, %struct.nv50_disp_pioc** %16, align 8
  %49 = call %struct.nouveau_object* @nv_object(%struct.nv50_disp_pioc* %48)
  %50 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %49, %struct.nouveau_object** %50, align 8
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %7, align 4
  br label %56

55:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %53, %35
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @nvd0_disp_pioc_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i64, i32, i8**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_disp_pioc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
