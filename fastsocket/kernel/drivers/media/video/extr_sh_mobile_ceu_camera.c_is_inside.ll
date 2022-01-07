; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_is_inside.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_is_inside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_rect*, %struct.v4l2_rect*)* @is_inside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_inside(%struct.v4l2_rect* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.v4l2_rect*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_rect* %0, %struct.v4l2_rect** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %5 = load %struct.v4l2_rect*, %struct.v4l2_rect** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %52, label %12

12:                                               ; preds = %2
  %13 = load %struct.v4l2_rect*, %struct.v4l2_rect** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %52, label %20

20:                                               ; preds = %12
  %21 = load %struct.v4l2_rect*, %struct.v4l2_rect** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.v4l2_rect*, %struct.v4l2_rect** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = icmp slt i64 %27, %34
  br i1 %35, label %52, label %36

36:                                               ; preds = %20
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.v4l2_rect*, %struct.v4l2_rect** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = icmp slt i64 %43, %50
  br label %52

52:                                               ; preds = %36, %20, %12, %2
  %53 = phi i1 [ true, %20 ], [ true, %12 ], [ true, %2 ], [ %51, %36 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
