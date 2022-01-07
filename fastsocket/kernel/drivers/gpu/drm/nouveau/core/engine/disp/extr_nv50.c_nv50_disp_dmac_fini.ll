; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_dmac_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_dmac_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { i32 }
%struct.nv50_disp_dmac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"fini timeout, 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32)* @nv50_disp_dmac_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_dmac_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_disp_priv*, align 8
  %7 = alloca %struct.nv50_disp_dmac*, align 8
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
  %16 = bitcast i8* %15 to %struct.nv50_disp_dmac*
  store %struct.nv50_disp_dmac* %16, %struct.nv50_disp_dmac** %7, align 8
  %17 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %7, align 8
  %18 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %22, 16
  %24 = add nsw i32 6357504, %23
  %25 = call i32 @nv_mask(%struct.nv50_disp_priv* %21, i32 %24, i32 4112, i32 4096)
  %26 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %27, 16
  %29 = add nsw i32 6357504, %28
  %30 = call i32 @nv_mask(%struct.nv50_disp_priv* %26, i32 %29, i32 3, i32 0)
  %31 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 16
  %34 = add nsw i32 6357504, %33
  %35 = call i32 @nv_wait(%struct.nv50_disp_priv* %31, i32 %34, i32 1966080, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %2
  %38 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %7, align 8
  %39 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %40, 16
  %42 = add nsw i32 6357504, %41
  %43 = call i32 @nv_rd32(%struct.nv50_disp_priv* %39, i32 %42)
  %44 = call i32 @nv_error(%struct.nv50_disp_dmac* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %62

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 65537, %53
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 0, %55
  %57 = call i32 @nv_mask(%struct.nv50_disp_priv* %52, i32 6357032, i32 %54, i32 %56)
  %58 = load %struct.nv50_disp_dmac*, %struct.nv50_disp_dmac** %7, align 8
  %59 = getelementptr inbounds %struct.nv50_disp_dmac, %struct.nv50_disp_dmac* %58, i32 0, i32 0
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @nv50_disp_chan_fini(%struct.TYPE_2__* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %51, %47
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @nv_mask(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nv50_disp_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_dmac*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @nv50_disp_chan_fini(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
