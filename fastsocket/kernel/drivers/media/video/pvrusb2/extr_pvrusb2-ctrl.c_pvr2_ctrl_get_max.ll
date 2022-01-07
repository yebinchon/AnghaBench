; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_get_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_get_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, i32 (%struct.pvr2_ctrl*, i32*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@pvr2_ctl_int = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ctrl_get_max(%struct.pvr2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %6 = icmp ne %struct.pvr2_ctrl* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

8:                                                ; preds = %1
  %9 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @LOCK_TAKE(i32 %13)
  br label %15

15:                                               ; preds = %8
  %16 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32 (%struct.pvr2_ctrl*, i32*)*, i32 (%struct.pvr2_ctrl*, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.pvr2_ctrl*, i32*)* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32 (%struct.pvr2_ctrl*, i32*)*, i32 (%struct.pvr2_ctrl*, i32*)** %26, align 8
  %28 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %29 = call i32 %27(%struct.pvr2_ctrl* %28, i32* %4)
  br label %47

30:                                               ; preds = %15
  %31 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @pvr2_ctl_int, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %38, %30
  br label %47

47:                                               ; preds = %46, %22
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @LOCK_GIVE(i32 %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %48, %7
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
