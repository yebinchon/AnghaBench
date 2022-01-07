; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_ctrl_nextv4l.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_ctrl_nextv4l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pvr2_hdw = type { i32, %struct.pvr2_ctrl* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_nextv4l(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_ctrl*, align 8
  %6 = alloca %struct.pvr2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.pvr2_ctrl* null, %struct.pvr2_ctrl** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %49, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %9
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 1
  %18 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %18, i64 %20
  store %struct.pvr2_ctrl* %21, %struct.pvr2_ctrl** %5, align 8
  %22 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %23 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  br label %49

30:                                               ; preds = %15
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %49

35:                                               ; preds = %30
  %36 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %37 = icmp ne %struct.pvr2_ctrl* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %40 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %49

47:                                               ; preds = %38, %35
  %48 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  store %struct.pvr2_ctrl* %48, %struct.pvr2_ctrl** %6, align 8
  br label %49

49:                                               ; preds = %47, %46, %34, %29
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %9

52:                                               ; preds = %9
  %53 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  ret %struct.pvr2_ctrl* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
