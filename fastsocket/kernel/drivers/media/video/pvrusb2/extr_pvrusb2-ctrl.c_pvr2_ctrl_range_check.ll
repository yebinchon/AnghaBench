; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_range_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_range_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 (%struct.pvr2_ctrl*, i32*)*, %struct.TYPE_7__, i32 (%struct.pvr2_ctrl*, i32*)*, {}* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@pvr2_ctl_enum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32)* @pvr2_ctrl_range_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_ctrl_range_check(%struct.pvr2_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %8 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = bitcast {}** %10 to i32 (%struct.pvr2_ctrl*, i32)**
  %12 = load i32 (%struct.pvr2_ctrl*, i32)*, i32 (%struct.pvr2_ctrl*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.pvr2_ctrl*, i32)* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %16 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = bitcast {}** %18 to i32 (%struct.pvr2_ctrl*, i32)**
  %20 = load i32 (%struct.pvr2_ctrl*, i32)*, i32 (%struct.pvr2_ctrl*, i32)** %19, align 8
  %21 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 %20(%struct.pvr2_ctrl* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* @ERANGE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %118

28:                                               ; preds = %14
  br label %117

29:                                               ; preds = %2
  %30 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @pvr2_ctl_enum, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %118

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %46 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %44, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @ERANGE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %118

56:                                               ; preds = %43
  br label %116

57:                                               ; preds = %29
  %58 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %59 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %6, align 4
  %65 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %66 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32 (%struct.pvr2_ctrl*, i32*)*, i32 (%struct.pvr2_ctrl*, i32*)** %68, align 8
  %70 = icmp ne i32 (%struct.pvr2_ctrl*, i32*)* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %57
  %72 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %73 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32 (%struct.pvr2_ctrl*, i32*)*, i32 (%struct.pvr2_ctrl*, i32*)** %75, align 8
  %77 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %78 = call i32 %76(%struct.pvr2_ctrl* %77, i32* %6)
  br label %79

79:                                               ; preds = %71, %57
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @ERANGE, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %118

86:                                               ; preds = %79
  %87 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %88 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %6, align 4
  %94 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %95 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32 (%struct.pvr2_ctrl*, i32*)*, i32 (%struct.pvr2_ctrl*, i32*)** %97, align 8
  %99 = icmp ne i32 (%struct.pvr2_ctrl*, i32*)* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %86
  %101 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %102 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32 (%struct.pvr2_ctrl*, i32*)*, i32 (%struct.pvr2_ctrl*, i32*)** %104, align 8
  %106 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %107 = call i32 %105(%struct.pvr2_ctrl* %106, i32* %6)
  br label %108

108:                                              ; preds = %100, %86
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @ERANGE, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %118

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %56
  br label %117

117:                                              ; preds = %116, %28
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %112, %83, %53, %40, %25
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
