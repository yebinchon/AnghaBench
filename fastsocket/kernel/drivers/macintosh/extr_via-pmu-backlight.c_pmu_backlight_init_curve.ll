; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu-backlight.c_pmu_backlight_init_curve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu-backlight.c_pmu_backlight_init_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bl_curve = common dso_local global i8** null, align 8
@FB_BACKLIGHT_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @pmu_backlight_init_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_backlight_init_curve(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %11 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i8**, i8*** @bl_curve, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  store i8* %17, i8** %19, align 8
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %31, %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @FB_BACKLIGHT_LEVELS, align 4
  %23 = sdiv i32 %22, 16
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8**, i8*** @bl_curve, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* %26, i8** %30, align 8
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* @FB_BACKLIGHT_LEVELS, align 4
  %36 = mul nsw i32 %35, 15
  %37 = sdiv i32 %36, 16
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %58, %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = mul nsw i32 %44, %46
  %48 = load i32, i32* %9, align 4
  %49 = sdiv i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %43, i64 %50
  %52 = load i8**, i8*** @bl_curve, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  store i8* %51, i8** %57, align 8
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %38

61:                                               ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
