; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/software/extr_nvc0.c_nvc0_software_mthd_vblsem_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/software/extr_nvc0.c_nvc0_software_mthd_vblsem_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nvc0_software_chan = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nouveau_disp = type { i32 }
%struct.TYPE_6__ = type { i64 }

@NV_E0 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i8*, i32)* @nvc0_software_mthd_vblsem_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_software_mthd_vblsem_release(%struct.nouveau_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvc0_software_chan*, align 8
  %11 = alloca %struct.nouveau_disp*, align 8
  %12 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @nv_engctx(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.nvc0_software_chan*
  store %struct.nvc0_software_chan* %18, %struct.nvc0_software_chan** %10, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %20 = call %struct.nouveau_disp* @nouveau_disp(%struct.nouveau_object* %19)
  store %struct.nouveau_disp* %20, %struct.nouveau_disp** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %25 = call %struct.TYPE_6__* @nv_device(%struct.nouveau_object* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NV_E0, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %49

39:                                               ; preds = %33
  %40 = load %struct.nouveau_disp*, %struct.nouveau_disp** %11, align 8
  %41 = getelementptr inbounds %struct.nouveau_disp, %struct.nouveau_disp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.nvc0_software_chan*, %struct.nvc0_software_chan** %10, align 8
  %45 = getelementptr inbounds %struct.nvc0_software_chan, %struct.nvc0_software_chan* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @nouveau_event_get(i32 %42, i32 %43, i32* %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %39, %36
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @nv_engctx(i32) #1

declare dso_local %struct.nouveau_disp* @nouveau_disp(%struct.nouveau_object*) #1

declare dso_local %struct.TYPE_6__* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_event_get(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
