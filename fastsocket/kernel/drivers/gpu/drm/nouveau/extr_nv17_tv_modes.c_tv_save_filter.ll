; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv_modes.c_tv_save_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv_modes.c_tv_save_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i64, [7 x i64]*)* @tv_save_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_save_filter(%struct.drm_device* %0, i64 %1, [7 x i64]* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [7 x i64]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i64], align 16
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store [7 x i64]* %2, [7 x i64]** %6, align 8
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 1
  %13 = load i64, i64* %5, align 8
  %14 = add nsw i64 %13, 28
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds i64, i64* %12, i64 1
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, 64
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds i64, i64* %15, i64 1
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %19, 92
  store i64 %20, i64* %18, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %50, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 7
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 4, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i64 @nv_read_ptv(%struct.drm_device* %29, i64 %37)
  %39 = load [7 x i64]*, [7 x i64]** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [7 x i64], [7 x i64]* %39, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [7 x i64], [7 x i64]* %42, i64 0, i64 %44
  store i64 %38, i64* %45, align 8
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %25

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %21

53:                                               ; preds = %21
  ret void
}

declare dso_local i64 @nv_read_ptv(%struct.drm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
