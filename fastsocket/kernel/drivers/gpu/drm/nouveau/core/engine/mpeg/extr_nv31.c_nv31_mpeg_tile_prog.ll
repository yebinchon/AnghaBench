; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_tile_prog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/mpeg/extr_nv31.c_nv31_mpeg_tile_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_engine = type { i32 }
%struct.nouveau_fb_tile = type { i32, i32, i32 }
%struct.nv31_mpeg_priv = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nouveau_fb_tile* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv31_mpeg_tile_prog(%struct.nouveau_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_fb_tile*, align 8
  %6 = alloca %struct.nv31_mpeg_priv*, align 8
  store %struct.nouveau_engine* %0, %struct.nouveau_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %8 = call %struct.TYPE_4__* @nouveau_fb(%struct.nouveau_engine* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %11, i64 %13
  store %struct.nouveau_fb_tile* %14, %struct.nouveau_fb_tile** %5, align 8
  %15 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %16 = bitcast %struct.nouveau_engine* %15 to i8*
  %17 = bitcast i8* %16 to %struct.nv31_mpeg_priv*
  store %struct.nv31_mpeg_priv* %17, %struct.nv31_mpeg_priv** %6, align 8
  %18 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 16
  %21 = add nsw i32 45064, %20
  %22 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %23 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %18, i32 %21, i32 %24)
  %26 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 16
  %29 = add nsw i32 45060, %28
  %30 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %31 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %26, i32 %29, i32 %32)
  %34 = load %struct.nv31_mpeg_priv*, %struct.nv31_mpeg_priv** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, 16
  %37 = add nsw i32 45056, %36
  %38 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %39 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nv_wr32(%struct.nv31_mpeg_priv* %34, i32 %37, i32 %40)
  ret void
}

declare dso_local %struct.TYPE_4__* @nouveau_fb(%struct.nouveau_engine*) #1

declare dso_local i32 @nv_wr32(%struct.nv31_mpeg_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
