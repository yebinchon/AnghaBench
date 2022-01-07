; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_dumb_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.nouveau_bo = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_display_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.nouveau_bo*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %10 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %11 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %14 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 8
  %17 = mul nsw i32 %12, %16
  %18 = call i8* @roundup(i32 %17, i32 256)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %21 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %26 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %30 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %32 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = call i8* @roundup(i32 %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %38 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %40 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %41 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %44 = call i32 @nouveau_gem_new(%struct.drm_device* %39, i32 %42, i32 0, i32 %43, i32 0, i32 0, %struct.nouveau_bo** %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %62

49:                                               ; preds = %3
  %50 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %51 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %52 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %55 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %54, i32 0, i32 5
  %56 = call i32 @drm_gem_handle_create(%struct.drm_file* %50, i32 %53, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %58 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @drm_gem_object_unreference_unlocked(i32 %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %49, %47
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i32 @nouveau_gem_new(%struct.drm_device*, i32, i32, i32, i32, i32, %struct.nouveau_bo**) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32, i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
