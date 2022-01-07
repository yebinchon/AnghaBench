; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv04_cursor_upload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv04_cursor_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nouveau_bo*, %struct.nouveau_bo*)* @nv04_cursor_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_cursor_upload(%struct.drm_device* %0, %struct.nouveau_bo* %1, %struct.nouveau_bo* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca %struct.nouveau_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nouveau_bo* %1, %struct.nouveau_bo** %5, align 8
  store %struct.nouveau_bo* %2, %struct.nouveau_bo** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call i32 @nv_cursor_width(%struct.drm_device* %11)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %55, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %24, 64
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @nouveau_bo_rd32(%struct.nouveau_bo* %23, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, -2147483648
  %37 = lshr i32 %36, 16
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 16252928
  %40 = ashr i32 %39, 9
  %41 = or i32 %37, %40
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 63488
  %44 = ashr i32 %43, 6
  %45 = or i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 248
  %48 = ashr i32 %47, 3
  %49 = or i32 %45, %48
  %50 = call i32 @nouveau_bo_wr16(%struct.nouveau_bo* %29, i32 %34, i32 %49)
  br label %51

51:                                               ; preds = %22
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %18

54:                                               ; preds = %18
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %13

58:                                               ; preds = %13
  ret void
}

declare dso_local i32 @nv_cursor_width(%struct.drm_device*) #1

declare dso_local i32 @nouveau_bo_rd32(%struct.nouveau_bo*, i32) #1

declare dso_local i32 @nouveau_bo_wr16(%struct.nouveau_bo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
