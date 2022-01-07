; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_try_or_set_control_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_try_or_set_control_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, %struct.v4l2_ctrl**, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)* }

@V4L2_CTRL_FLAG_GRABBED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*, i32)* @try_or_set_control_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_or_set_control_cluster(%struct.v4l2_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %64, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i1 [ false, %14 ], [ %22, %17 ]
  br i1 %24, label %25, label %67

25:                                               ; preds = %23
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 2
  %28 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %28, i64 %30
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %31, align 8
  store %struct.v4l2_ctrl* %32, %struct.v4l2_ctrl** %9, align 8
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %34 = icmp eq %struct.v4l2_ctrl* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %64

36:                                               ; preds = %25
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V4L2_CTRL_FLAG_GRABBED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %131

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %59 = call i32 @validate_new(%struct.v4l2_ctrl* %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %64

61:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %63 = call i32 @cur_to_new(%struct.v4l2_ctrl* %62)
  br label %64

64:                                               ; preds = %61, %60, %35
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %14

67:                                               ; preds = %23
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %67
  %71 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %72 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)** %74, align 8
  %76 = icmp ne i32 (%struct.v4l2_ctrl*)* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %82 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)** %84, align 8
  %86 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %87 = call i32 %85(%struct.v4l2_ctrl* %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %80, %77, %70, %67
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %129, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %91
  %95 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %96 = call i64 @cluster_changed(%struct.v4l2_ctrl* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %129

98:                                               ; preds = %94
  %99 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %100 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)** %102, align 8
  %104 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %105 = call i32 %103(%struct.v4l2_ctrl* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %128, label %108

108:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %124, %108
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %112 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %117 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %116, i32 0, i32 2
  %118 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %118, i64 %120
  %122 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %121, align 8
  %123 = call i32 @new_to_cur(%struct.v4l2_ctrl* %122)
  br label %124

124:                                              ; preds = %115
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %109

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127, %98
  br label %129

129:                                              ; preds = %128, %94, %91, %88
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %51
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @validate_new(%struct.v4l2_ctrl*) #1

declare dso_local i32 @cur_to_new(%struct.v4l2_ctrl*) #1

declare dso_local i64 @cluster_changed(%struct.v4l2_ctrl*) #1

declare dso_local i32 @new_to_cur(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
