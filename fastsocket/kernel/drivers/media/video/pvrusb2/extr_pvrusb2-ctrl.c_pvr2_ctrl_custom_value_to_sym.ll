; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_custom_value_to_sym.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_custom_value_to_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ctrl_custom_value_to_sym(%struct.pvr2_ctrl* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pvr2_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %8, align 8
  %15 = icmp ne %struct.pvr2_ctrl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %44

19:                                               ; preds = %6
  %20 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %8, align 8
  %21 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.pvr2_ctrl*, i32, i32, i8*, i32, i32*)**
  %25 = load i32 (%struct.pvr2_ctrl*, i32, i32, i8*, i32, i32*)*, i32 (%struct.pvr2_ctrl*, i32, i32, i8*, i32, i32*)** %24, align 8
  %26 = icmp ne i32 (%struct.pvr2_ctrl*, i32, i32, i8*, i32, i32*)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %44

30:                                               ; preds = %19
  %31 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %8, align 8
  %32 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.pvr2_ctrl*, i32, i32, i8*, i32, i32*)**
  %36 = load i32 (%struct.pvr2_ctrl*, i32, i32, i8*, i32, i32*)*, i32 (%struct.pvr2_ctrl*, i32, i32, i8*, i32, i32*)** %35, align 8
  %37 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 %36(%struct.pvr2_ctrl* %37, i32 %38, i32 %39, i8* %40, i32 %41, i32* %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %30, %27, %16
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
