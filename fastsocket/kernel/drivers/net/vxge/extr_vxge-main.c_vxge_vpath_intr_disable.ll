; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_vpath_intr_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_vpath_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { %struct.TYPE_7__, %struct.vxge_vpath* }
%struct.TYPE_7__ = type { i64 }
%struct.vxge_vpath = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@INTA = common dso_local global i64 0, align 8
@VXGE_HW_VPATH_MSIX_ACTIVE = common dso_local global i32 0, align 4
@VXGE_ALARM_MSIX_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_vpath_intr_disable(%struct.vxgedev* %0, i32 %1) #0 {
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxge_vpath*, align 8
  %6 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %8 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %7, i32 0, i32 1
  %9 = load %struct.vxge_vpath*, %struct.vxge_vpath** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %9, i64 %11
  store %struct.vxge_vpath* %12, %struct.vxge_vpath** %5, align 8
  %13 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %14 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = call i32 @vxge_hw_vpath_intr_disable(%struct.TYPE_10__* %15)
  %17 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %18 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INTA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %25 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = call i32 @vxge_hw_vpath_inta_mask_tx_rx(%struct.TYPE_10__* %26)
  br label %63

28:                                               ; preds = %2
  %29 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %30 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %35 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @vxge_hw_vpath_msix_mask(%struct.TYPE_10__* %36, i32 %37)
  %39 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %40 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @vxge_hw_vpath_msix_mask(%struct.TYPE_10__* %41, i32 %43)
  %45 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %46 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @VXGE_HW_VPATH_MSIX_ACTIVE, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @VXGE_ALARM_MSIX_ID, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %59 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @vxge_hw_vpath_msix_mask(%struct.TYPE_10__* %60, i32 %61)
  br label %63

63:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @vxge_hw_vpath_intr_disable(%struct.TYPE_10__*) #1

declare dso_local i32 @vxge_hw_vpath_inta_mask_tx_rx(%struct.TYPE_10__*) #1

declare dso_local i32 @vxge_hw_vpath_msix_mask(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
