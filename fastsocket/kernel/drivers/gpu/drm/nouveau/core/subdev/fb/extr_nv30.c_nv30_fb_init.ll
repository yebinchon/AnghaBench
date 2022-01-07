; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv30.c_nv30_fb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv30.c_nv30_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nv30_fb_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv30_fb_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_device*, align 8
  %5 = alloca %struct.nv30_fb_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %12 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %4, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = bitcast %struct.nouveau_object* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv30_fb_priv*
  store %struct.nv30_fb_priv* %15, %struct.nv30_fb_priv** %5, align 8
  %16 = load %struct.nv30_fb_priv*, %struct.nv30_fb_priv** %5, align 8
  %17 = getelementptr inbounds %struct.nv30_fb_priv, %struct.nv30_fb_priv* %16, i32 0, i32 0
  %18 = call i32 @nouveau_fb_init(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %97

23:                                               ; preds = %1
  %24 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %25 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 48
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %30 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 49
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %35 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 53
  br i1 %37, label %38, label %96

38:                                               ; preds = %33, %28, %23
  %39 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %40 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 49
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.nv30_fb_priv*, %struct.nv30_fb_priv** %5, align 8
  %46 = call i32 @nv_rd32(%struct.nv30_fb_priv* %45, i32 1049552)
  store i32 %46, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %92, %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.nv30_fb_priv*, %struct.nv30_fb_priv** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 12, %57
  %59 = add nsw i32 1049468, %58
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 4, %60
  %62 = add nsw i32 %59, %61
  %63 = load %struct.nv30_fb_priv*, %struct.nv30_fb_priv** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @calc_ref(%struct.nv30_fb_priv* %63, i32 %64, i32 0, i32 %65)
  %67 = call i32 @nv_wr32(%struct.nv30_fb_priv* %56, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %52

71:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %88, %71
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load %struct.nv30_fb_priv*, %struct.nv30_fb_priv** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 8, %77
  %79 = add nsw i32 1049516, %78
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 4, %80
  %82 = add nsw i32 %79, %81
  %83 = load %struct.nv30_fb_priv*, %struct.nv30_fb_priv** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @calc_ref(%struct.nv30_fb_priv* %83, i32 %84, i32 1, i32 %85)
  %87 = call i32 @nv_wr32(%struct.nv30_fb_priv* %76, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %72

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %47

95:                                               ; preds = %47
  br label %96

96:                                               ; preds = %95, %33
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %21
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fb_init(i32*) #1

declare dso_local i32 @nv_rd32(%struct.nv30_fb_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv30_fb_priv*, i32, i32) #1

declare dso_local i32 @calc_ref(%struct.nv30_fb_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
