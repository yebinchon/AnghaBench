; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_curs_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_curs_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_display_curs_class = type { i32 }
%struct.nv50_disp_pioc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_disp_curs_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_curs_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_display_curs_class*, align 8
  %15 = alloca %struct.nv50_disp_pioc*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.nv50_display_curs_class*
  store %struct.nv50_display_curs_class* %18, %struct.nv50_display_curs_class** %14, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.nv50_display_curs_class*, %struct.nv50_display_curs_class** %14, align 8
  %24 = getelementptr inbounds %struct.nv50_display_curs_class, %struct.nv50_display_curs_class* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %48

30:                                               ; preds = %22
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %32 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %33 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %34 = load %struct.nv50_display_curs_class*, %struct.nv50_display_curs_class** %14, align 8
  %35 = getelementptr inbounds %struct.nv50_display_curs_class, %struct.nv50_display_curs_class* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 7, %36
  %38 = bitcast %struct.nv50_disp_pioc** %15 to i8**
  %39 = call i32 @nv50_disp_pioc_create_(%struct.nouveau_object* %31, %struct.nouveau_object* %32, %struct.nouveau_oclass* %33, i32 %37, i32 4, i8** %38)
  store i32 %39, i32* %16, align 4
  %40 = load %struct.nv50_disp_pioc*, %struct.nv50_disp_pioc** %15, align 8
  %41 = call %struct.nouveau_object* @nv_object(%struct.nv50_disp_pioc* %40)
  %42 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %41, %struct.nouveau_object** %42, align 8
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %48

47:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %45, %27
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @nv50_disp_pioc_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_disp_pioc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
