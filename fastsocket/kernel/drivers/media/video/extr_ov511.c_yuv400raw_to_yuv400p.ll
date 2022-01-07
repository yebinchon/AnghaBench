; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_yuv400raw_to_yuv400p.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_yuv400raw_to_yuv400p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov511_frame = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ov511_frame*, i8*, i8*)* @yuv400raw_to_yuv400p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv400raw_to_yuv400p(%struct.ov511_frame* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ov511_frame*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.ov511_frame* %0, %struct.ov511_frame** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %52, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %17 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %14
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %41, %21
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %26 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %34 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @make_8x8(i8* %31, i8* %32, i32 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 64
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 8
  store i32 %43, i32* %7, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %46 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 8, %47
  %49 = load i8*, i8** %11, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %11, align 8
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 8
  store i32 %54, i32* %8, align 4
  br label %14

55:                                               ; preds = %14
  ret void
}

declare dso_local i32 @make_8x8(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
