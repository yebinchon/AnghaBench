; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_pioc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_pioc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { i32 }
%struct.nv50_disp_pioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"init: 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nvd0_disp_pioc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_disp_pioc_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_disp_priv*, align 8
  %5 = alloca %struct.nv50_disp_pioc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %12, %struct.nv50_disp_priv** %4, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = bitcast %struct.nouveau_object* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv50_disp_pioc*
  store %struct.nv50_disp_pioc* %15, %struct.nv50_disp_pioc** %5, align 8
  %16 = load %struct.nv50_disp_pioc*, %struct.nv50_disp_pioc** %5, align 8
  %17 = getelementptr inbounds %struct.nv50_disp_pioc, %struct.nv50_disp_pioc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.nv50_disp_pioc*, %struct.nv50_disp_pioc** %5, align 8
  %21 = getelementptr inbounds %struct.nv50_disp_pioc, %struct.nv50_disp_pioc* %20, i32 0, i32 0
  %22 = call i32 @nv50_disp_chan_init(%struct.TYPE_2__* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %62

27:                                               ; preds = %1
  %28 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 1, %31
  %33 = call i32 @nv_mask(%struct.nv50_disp_priv* %28, i32 6357136, i32 %30, i32 %32)
  %34 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = call i32 @nv_mask(%struct.nv50_disp_priv* %34, i32 6357152, i32 %36, i32 %38)
  %40 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 16
  %43 = add nsw i32 6358160, %42
  %44 = call i32 @nv_wr32(%struct.nv50_disp_priv* %40, i32 %43, i32 1)
  %45 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 16
  %48 = add nsw i32 6358160, %47
  %49 = call i32 @nv_wait(%struct.nv50_disp_priv* %45, i32 %48, i32 196608, i32 65536)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %27
  %52 = load %struct.nv50_disp_pioc*, %struct.nv50_disp_pioc** %5, align 8
  %53 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 16
  %56 = add nsw i32 6358160, %55
  %57 = call i32 @nv_rd32(%struct.nv50_disp_priv* %53, i32 %56)
  %58 = call i32 @nv_error(%struct.nv50_disp_pioc* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %51, %25
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @nv50_disp_chan_init(%struct.TYPE_2__*) #1

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_pioc*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
