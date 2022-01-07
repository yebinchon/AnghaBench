; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_jpeg.h_jpeg_set_qual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_jpeg.h_jpeg_set_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jpeg_head = common dso_local global i32* null, align 8
@JPEG_QT0_OFFSET = common dso_local global i32 0, align 4
@JPEG_QT1_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @jpeg_set_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpeg_set_qual(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 50
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 5000, %10
  store i32 %11, i32* %6, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 %13, 2
  %15 = sub nsw i32 200, %14
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %12, %9
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %55, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 64
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  %21 = load i32*, i32** @jpeg_head, align 8
  %22 = load i32, i32* @JPEG_QT0_OFFSET, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %29, 50
  %31 = sdiv i32 %30, 100
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @JPEG_QT0_OFFSET, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load i32*, i32** @jpeg_head, align 8
  %39 = load i32, i32* @JPEG_QT1_OFFSET, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %46, 50
  %48 = sdiv i32 %47, 100
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @JPEG_QT1_OFFSET, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %20
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %17

58:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
