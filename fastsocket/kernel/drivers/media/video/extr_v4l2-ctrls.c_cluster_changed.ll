; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_cluster_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_cluster_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.v4l2_ctrl** }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @cluster_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_changed(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %64, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ false, %7 ], [ %15, %10 ]
  br i1 %17, label %18, label %67

18:                                               ; preds = %16
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 6
  %21 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %21, i64 %23
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %24, align 8
  store %struct.v4l2_ctrl* %25, %struct.v4l2_ctrl** %6, align 8
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %27 = icmp eq %struct.v4l2_ctrl* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %64

29:                                               ; preds = %18
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %53 [
    i32 130, label %33
    i32 128, label %34
    i32 129, label %43
  ]

33:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %69

34:                                               ; preds = %29
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strcmp(i32 %37, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %63

43:                                               ; preds = %29
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %46, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %63

53:                                               ; preds = %29
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %56, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %53, %43, %34
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %7

67:                                               ; preds = %16
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %33
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
