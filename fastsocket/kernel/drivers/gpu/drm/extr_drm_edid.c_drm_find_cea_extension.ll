; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_find_cea_extension.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_find_cea_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@CEA_EXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @drm_find_cea_extension(%struct.edid* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.edid*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.edid* %0, %struct.edid** %3, align 8
  store i64* null, i64** %4, align 8
  %6 = load %struct.edid*, %struct.edid** %3, align 8
  %7 = icmp eq %struct.edid* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.edid*, %struct.edid** %3, align 8
  %10 = getelementptr inbounds %struct.edid, %struct.edid* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i64* null, i64** %2, align 8
  br label %49

14:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.edid*, %struct.edid** %3, align 8
  %18 = getelementptr inbounds %struct.edid, %struct.edid* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.edid*, %struct.edid** %3, align 8
  %23 = bitcast %struct.edid* %22 to i64*
  %24 = load i32, i32* @EDID_LENGTH, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = mul nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  store i64* %29, i64** %4, align 8
  %30 = load i64*, i64** %4, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CEA_EXT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %40

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %15

40:                                               ; preds = %35, %15
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.edid*, %struct.edid** %3, align 8
  %43 = getelementptr inbounds %struct.edid, %struct.edid* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i64* null, i64** %2, align 8
  br label %49

47:                                               ; preds = %40
  %48 = load i64*, i64** %4, align 8
  store i64* %48, i64** %2, align 8
  br label %49

49:                                               ; preds = %47, %46, %13
  %50 = load i64*, i64** %2, align 8
  ret i64* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
