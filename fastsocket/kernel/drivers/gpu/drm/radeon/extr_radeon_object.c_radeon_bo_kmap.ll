; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_kmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_kmap(%struct.radeon_bo* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_bo*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_bo* %0, %struct.radeon_bo** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** %5, align 8
  store i8* %18, i8** %19, align 8
  br label %20

20:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %22, i32 0, i32 2
  %24 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %28, i32 0, i32 1
  %30 = call i32 @ttm_bo_kmap(%struct.TYPE_2__* %23, i32 0, i32 %27, i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %51

35:                                               ; preds = %21
  %36 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %36, i32 0, i32 1
  %38 = call i8* @ttm_kmap_obj_virtual(i32* %37, i32* %6)
  %39 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %45 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** %5, align 8
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %50 = call i32 @radeon_bo_check_tiling(%struct.radeon_bo* %49, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %33, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ttm_bo_kmap(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i8* @ttm_kmap_obj_virtual(i32*, i32*) #1

declare dso_local i32 @radeon_bo_check_tiling(%struct.radeon_bo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
