; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_try_or_set_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_try_or_set_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ext_controls = type { i32, i32 }
%struct.ctrl_helper = type { i64, %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { i32, i32, i64, %struct.v4l2_ctrl** }

@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_GRABBED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@user_to_new = common dso_local global i32 0, align 4
@new_to_user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl_handler*, %struct.v4l2_ext_controls*, %struct.ctrl_helper*, i32)* @try_or_set_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_or_set_ext_ctrls(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ext_controls* %1, %struct.ctrl_helper* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.ctrl_helper*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_ctrl*, align 8
  %14 = alloca %struct.v4l2_ctrl*, align 8
  %15 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %6, align 8
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %7, align 8
  store %struct.ctrl_helper* %2, %struct.ctrl_helper** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %64, %4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = load %struct.ctrl_helper*, %struct.ctrl_helper** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %28, i64 %30
  %32 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %31, i32 0, i32 1
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %32, align 8
  store %struct.v4l2_ctrl* %33, %struct.v4l2_ctrl** %13, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  %42 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EACCES, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %166

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @V4L2_CTRL_FLAG_GRABBED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %166

63:                                               ; preds = %53, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %21

67:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %161, %67
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ult i32 %72, %75
  br label %77

77:                                               ; preds = %71, %68
  %78 = phi i1 [ false, %68 ], [ %76, %71 ]
  br i1 %78, label %79, label %164

79:                                               ; preds = %77
  %80 = load %struct.ctrl_helper*, %struct.ctrl_helper** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %80, i64 %82
  %84 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %83, i32 0, i32 1
  %85 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %84, align 8
  store %struct.v4l2_ctrl* %85, %struct.v4l2_ctrl** %14, align 8
  %86 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %14, align 8
  %87 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %86, i32 0, i32 3
  %88 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %87, align 8
  %89 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %88, i64 0
  %90 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %89, align 8
  store %struct.v4l2_ctrl* %90, %struct.v4l2_ctrl** %15, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ctrl_helper*, %struct.ctrl_helper** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %94, i64 %96
  %98 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %79
  br label %161

102:                                              ; preds = %79
  %103 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %14, align 8
  %104 = call i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl* %103)
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %130, %102
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %15, align 8
  %108 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %105
  %112 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %15, align 8
  %113 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %112, i32 0, i32 3
  %114 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %114, i64 %116
  %118 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %117, align 8
  %119 = icmp ne %struct.v4l2_ctrl* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %111
  %121 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %15, align 8
  %122 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %121, i32 0, i32 3
  %123 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %123, i64 %125
  %127 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %126, align 8
  %128 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %120, %111
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %105

133:                                              ; preds = %105
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %136 = load %struct.ctrl_helper*, %struct.ctrl_helper** %8, align 8
  %137 = load i32, i32* @user_to_new, align 4
  %138 = call i32 @cluster_walk(i32 %134, %struct.v4l2_ext_controls* %135, %struct.ctrl_helper* %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %133
  %142 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %15, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @try_or_set_control_cluster(%struct.v4l2_ctrl* %142, i32 %143)
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %141, %133
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %151 = load %struct.ctrl_helper*, %struct.ctrl_helper** %8, align 8
  %152 = load i32, i32* @new_to_user, align 4
  %153 = call i32 @cluster_walk(i32 %149, %struct.v4l2_ext_controls* %150, %struct.ctrl_helper* %151, i32 %152)
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %148, %145
  %155 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %14, align 8
  %156 = call i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl* %155)
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %159 = load %struct.ctrl_helper*, %struct.ctrl_helper** %8, align 8
  %160 = call i32 @cluster_done(i32 %157, %struct.v4l2_ext_controls* %158, %struct.ctrl_helper* %159)
  br label %161

161:                                              ; preds = %154, %101
  %162 = load i32, i32* %10, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %68

164:                                              ; preds = %77
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %60, %47
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @cluster_walk(i32, %struct.v4l2_ext_controls*, %struct.ctrl_helper*, i32) #1

declare dso_local i32 @try_or_set_control_cluster(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @cluster_done(i32, %struct.v4l2_ext_controls*, %struct.ctrl_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
