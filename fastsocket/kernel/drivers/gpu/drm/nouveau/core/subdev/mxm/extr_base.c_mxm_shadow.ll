; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_base.c_mxm_shadow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_base.c_mxm_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxm_shadow_h = type { i64 (%struct.nouveau_mxm*, i32)*, i64 }
%struct.nouveau_mxm = type { i32* }

@_mxm_shadow = common dso_local global %struct.mxm_shadow_h* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"checking %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_mxm*, i32)* @mxm_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_shadow(%struct.nouveau_mxm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_mxm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxm_shadow_h*, align 8
  store %struct.nouveau_mxm* %0, %struct.nouveau_mxm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mxm_shadow_h*, %struct.mxm_shadow_h** @_mxm_shadow, align 8
  store %struct.mxm_shadow_h* %7, %struct.mxm_shadow_h** %6, align 8
  br label %8

8:                                                ; preds = %34, %2
  %9 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %10 = load %struct.mxm_shadow_h*, %struct.mxm_shadow_h** %6, align 8
  %11 = getelementptr inbounds %struct.mxm_shadow_h, %struct.mxm_shadow_h* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @nv_debug(%struct.nouveau_mxm* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.mxm_shadow_h*, %struct.mxm_shadow_h** %6, align 8
  %15 = getelementptr inbounds %struct.mxm_shadow_h, %struct.mxm_shadow_h* %14, i32 0, i32 0
  %16 = load i64 (%struct.nouveau_mxm*, i32)*, i64 (%struct.nouveau_mxm*, i32)** %15, align 8
  %17 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 %16(%struct.nouveau_mxm* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %8
  %22 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %23 = call i64 @mxms_valid(%struct.nouveau_mxm* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %43

26:                                               ; preds = %21
  %27 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %28 = getelementptr inbounds %struct.nouveau_mxm, %struct.nouveau_mxm* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree(i32* %29)
  %31 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %4, align 8
  %32 = getelementptr inbounds %struct.nouveau_mxm, %struct.nouveau_mxm* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %8
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.mxm_shadow_h*, %struct.mxm_shadow_h** %6, align 8
  %36 = getelementptr inbounds %struct.mxm_shadow_h, %struct.mxm_shadow_h* %35, i32 1
  store %struct.mxm_shadow_h* %36, %struct.mxm_shadow_h** %6, align 8
  %37 = getelementptr inbounds %struct.mxm_shadow_h, %struct.mxm_shadow_h* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %8, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %25
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @nv_debug(%struct.nouveau_mxm*, i8*, i64) #1

declare dso_local i64 @mxms_valid(%struct.nouveau_mxm*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
