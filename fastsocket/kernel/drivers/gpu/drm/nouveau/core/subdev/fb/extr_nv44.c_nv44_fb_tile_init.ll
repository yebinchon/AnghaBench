; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv44.c_nv44_fb_tile_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv44.c_nv44_fb_tile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { i32 }
%struct.nouveau_fb_tile = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_fb*, i32, i32, i32, i32, i32, %struct.nouveau_fb_tile*)* @nv44_fb_tile_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv44_fb_tile_init(%struct.nouveau_fb* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.nouveau_fb_tile* %6) #0 {
  %8 = alloca %struct.nouveau_fb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nouveau_fb_tile*, align 8
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.nouveau_fb_tile* %6, %struct.nouveau_fb_tile** %14, align 8
  %15 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %16 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %19 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i64 @max(i32 1, i32 %24)
  %26 = sub nsw i64 %25, 1
  %27 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %28 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %14, align 8
  %31 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i64 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
