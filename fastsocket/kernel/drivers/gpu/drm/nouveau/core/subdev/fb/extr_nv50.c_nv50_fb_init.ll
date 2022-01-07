; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nv50_fb_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv50_fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fb_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_device*, align 8
  %5 = alloca %struct.nv50_fb_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %7)
  store %struct.nouveau_device* %8, %struct.nouveau_device** %4, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %10 = bitcast %struct.nouveau_object* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nv50_fb_priv*
  store %struct.nv50_fb_priv* %11, %struct.nv50_fb_priv** %5, align 8
  %12 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %13 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %12, i32 0, i32 1
  %14 = call i32 @nouveau_fb_init(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %21 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %22 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  %25 = call i32 @nv_wr32(%struct.nv50_fb_priv* %20, i32 1051656, i32 %24)
  %26 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %38 [
    i32 80, label %29
    i32 163, label %32
    i32 165, label %32
    i32 168, label %32
    i32 175, label %35
  ]

29:                                               ; preds = %19
  %30 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %31 = call i32 @nv_wr32(%struct.nv50_fb_priv* %30, i32 1051792, i32 460799)
  br label %41

32:                                               ; preds = %19, %19, %19
  %33 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %34 = call i32 @nv_wr32(%struct.nv50_fb_priv* %33, i32 1051792, i32 856063)
  br label %41

35:                                               ; preds = %19
  %36 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %37 = call i32 @nv_wr32(%struct.nv50_fb_priv* %36, i32 1051792, i32 144515071)
  br label %41

38:                                               ; preds = %19
  %39 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %5, align 8
  %40 = call i32 @nv_wr32(%struct.nv50_fb_priv* %39, i32 1051792, i32 1902591)
  br label %41

41:                                               ; preds = %38, %35, %32, %29
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fb_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv50_fb_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
