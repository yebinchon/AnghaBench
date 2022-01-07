; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_cluster_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_cluster_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_controls = type { i32, i32* }
%struct.ctrl_helper = type { i32, %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { %struct.v4l2_ctrl** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.v4l2_ext_controls*, %struct.ctrl_helper*, i32 (i32*, %struct.v4l2_ctrl*)*)* @cluster_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_walk(i32 %0, %struct.v4l2_ext_controls* %1, %struct.ctrl_helper* %2, i32 (i32*, %struct.v4l2_ctrl*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ext_controls*, align 8
  %7 = alloca %struct.ctrl_helper*, align 8
  %8 = alloca i32 (i32*, %struct.v4l2_ctrl*)*, align 8
  %9 = alloca %struct.v4l2_ctrl**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_ctrl*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %6, align 8
  store %struct.ctrl_helper* %2, %struct.ctrl_helper** %7, align 8
  store i32 (i32*, %struct.v4l2_ctrl*)* %3, i32 (i32*, %struct.v4l2_ctrl*)** %8, align 8
  %13 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %13, i64 %15
  %17 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %16, i32 0, i32 1
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 0
  %20 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %19, align 8
  store %struct.v4l2_ctrl** %20, %struct.v4l2_ctrl*** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %64, %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %67

33:                                               ; preds = %31
  %34 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %34, i64 %36
  %38 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %37, i32 0, i32 1
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %38, align 8
  store %struct.v4l2_ctrl* %39, %struct.v4l2_ctrl** %12, align 8
  %40 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %40, i64 %42
  %44 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %33
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 0
  %50 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %49, align 8
  %51 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %9, align 8
  %52 = icmp eq %struct.v4l2_ctrl** %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i32 (i32*, %struct.v4l2_ctrl*)*, i32 (i32*, %struct.v4l2_ctrl*)** %8, align 8
  %55 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %62 = call i32 %54(i32* %60, %struct.v4l2_ctrl* %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %53, %47, %33
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %22

67:                                               ; preds = %31
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
