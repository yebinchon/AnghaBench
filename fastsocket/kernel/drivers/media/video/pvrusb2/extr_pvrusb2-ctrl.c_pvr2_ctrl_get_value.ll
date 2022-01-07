; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_get_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ctrl_get_value(%struct.pvr2_ctrl* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_ctrl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %8 = icmp ne %struct.pvr2_ctrl* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %14 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LOCK_TAKE(i32 %17)
  br label %19

19:                                               ; preds = %12
  %20 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %21 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.pvr2_ctrl*, i32*)**
  %25 = load i32 (%struct.pvr2_ctrl*, i32*)*, i32 (%struct.pvr2_ctrl*, i32*)** %24, align 8
  %26 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 %25(%struct.pvr2_ctrl* %26, i32* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %19
  %30 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @LOCK_GIVE(i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
