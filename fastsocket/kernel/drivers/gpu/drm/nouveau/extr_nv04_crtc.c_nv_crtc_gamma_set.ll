; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_gamma_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_crtc.c_nv_crtc_gamma_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.nouveau_crtc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i8**, i8**, i8** }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i8**, i8**, i8**, i32, i32)* @nv_crtc_gamma_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_gamma_set(%struct.drm_crtc* %0, i8** %1, i8** %2, i8** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nouveau_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = add nsw i32 %16, %17
  %19 = icmp sgt i32 %18, 256
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %25

21:                                               ; preds = %6
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %22, %23
  br label %25

25:                                               ; preds = %21, %20
  %26 = phi i32 [ 256, %20 ], [ %24, %21 ]
  store i32 %26, i32* %13, align 4
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %28 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %27)
  store %struct.nouveau_crtc* %28, %struct.nouveau_crtc** %15, align 8
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %71, %25
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %41 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %39, i8** %46, align 8
  %47 = load i8**, i8*** %9, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %53 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %51, i8** %58, align 8
  %59 = load i8**, i8*** %10, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %65 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %63, i8** %70, align 8
  br label %71

71:                                               ; preds = %34
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %30

74:                                               ; preds = %30
  %75 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %76 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %15, align 8
  %82 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %87

84:                                               ; preds = %74
  %85 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %86 = call i32 @nv_crtc_gamma_load(%struct.drm_crtc* %85)
  br label %87

87:                                               ; preds = %84, %80
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @nv_crtc_gamma_load(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
