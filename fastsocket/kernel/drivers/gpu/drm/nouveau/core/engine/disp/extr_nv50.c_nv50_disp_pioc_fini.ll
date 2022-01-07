; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_pioc_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_pioc_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { i32 }
%struct.nv50_disp_pioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"timeout: 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32)* @nv50_disp_pioc_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_pioc_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_disp_priv*, align 8
  %7 = alloca %struct.nv50_disp_pioc*, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %13, %struct.nv50_disp_priv** %6, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %15 = bitcast %struct.nouveau_object* %14 to i8*
  %16 = bitcast i8* %15 to %struct.nv50_disp_pioc*
  store %struct.nv50_disp_pioc* %16, %struct.nv50_disp_pioc** %7, align 8
  %17 = load %struct.nv50_disp_pioc*, %struct.nv50_disp_pioc** %7, align 8
  %18 = getelementptr inbounds %struct.nv50_disp_pioc, %struct.nv50_disp_pioc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %22, 16
  %24 = add nsw i32 6357504, %23
  %25 = call i32 @nv_mask(%struct.nv50_disp_priv* %21, i32 %24, i32 1, i32 0)
  %26 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %27, 16
  %29 = add nsw i32 6357504, %28
  %30 = call i32 @nv_wait(%struct.nv50_disp_priv* %26, i32 %29, i32 196608, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %2
  %33 = load %struct.nv50_disp_pioc*, %struct.nv50_disp_pioc** %7, align 8
  %34 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 16
  %37 = add nsw i32 6357504, %36
  %38 = call i32 @nv_rd32(%struct.nv50_disp_priv* %34, i32 %37)
  %39 = call i32 @nv_error(%struct.nv50_disp_pioc* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.nv50_disp_pioc*, %struct.nv50_disp_pioc** %7, align 8
  %48 = getelementptr inbounds %struct.nv50_disp_pioc, %struct.nv50_disp_pioc* %47, i32 0, i32 0
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @nv50_disp_chan_fini(%struct.TYPE_2__* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_pioc*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv50_disp_chan_fini(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
