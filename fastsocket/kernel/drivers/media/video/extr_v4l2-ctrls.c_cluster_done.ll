; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_cluster_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_cluster_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_controls = type { i32 }
%struct.ctrl_helper = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl** }
%struct.v4l2_ctrl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.v4l2_ext_controls*, %struct.ctrl_helper*)* @cluster_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_done(i32 %0, %struct.v4l2_ext_controls* %1, %struct.ctrl_helper* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ext_controls*, align 8
  %6 = alloca %struct.ctrl_helper*, align 8
  %7 = alloca %struct.v4l2_ctrl**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %5, align 8
  store %struct.ctrl_helper* %2, %struct.ctrl_helper** %6, align 8
  %9 = load %struct.ctrl_helper*, %struct.ctrl_helper** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %9, i64 %11
  %13 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %15, align 8
  store %struct.v4l2_ctrl** %16, %struct.v4l2_ctrl*** %7, align 8
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %42, %3
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load %struct.ctrl_helper*, %struct.ctrl_helper** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %25, i64 %27
  %29 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %31, align 8
  %33 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %7, align 8
  %34 = icmp eq %struct.v4l2_ctrl** %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.ctrl_helper*, %struct.ctrl_helper** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %36, i64 %38
  %40 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %18

45:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
