; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_g_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_g_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ext_controls = type { i32, i32, i32 }
%struct.ctrl_helper = type { i64, %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { i32, %struct.TYPE_2__*, i64, %struct.v4l2_ctrl** }
%struct.TYPE_2__ = type { i32 (%struct.v4l2_ctrl*)* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@cur_to_user = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_g_ext_ctrls(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ext_controls* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_ext_controls*, align 8
  %6 = alloca [4 x %struct.ctrl_helper], align 16
  %7 = alloca %struct.ctrl_helper*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_ctrl*, align 8
  %11 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %4, align 8
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %5, align 8
  %12 = getelementptr inbounds [4 x %struct.ctrl_helper], [4 x %struct.ctrl_helper]* %6, i64 0, i64 0
  store %struct.ctrl_helper* %12, %struct.ctrl_helper** %7, align 8
  %13 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @V4L2_CTRL_ID2CLASS(i32 %20)
  %22 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %25 = icmp eq %struct.v4l2_ctrl_handler* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %185

29:                                               ; preds = %2
  %30 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %36 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @class_check(%struct.v4l2_ctrl_handler* %35, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %185

40:                                               ; preds = %29
  %41 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [4 x %struct.ctrl_helper], [4 x %struct.ctrl_helper]* %6, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(%struct.ctrl_helper* %44)
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 16, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.ctrl_helper* @kmalloc(i32 %53, i32 %54)
  store %struct.ctrl_helper* %55, %struct.ctrl_helper** %7, align 8
  %56 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %57 = icmp eq %struct.ctrl_helper* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %185

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %64 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %65 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %66 = call i32 @prepare_ext_ctrls(%struct.v4l2_ctrl_handler* %63, %struct.v4l2_ext_controls* %64, %struct.ctrl_helper* %65, i32 0)
  store i32 %66, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %94, %62
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i1 [ false, %67 ], [ %75, %70 ]
  br i1 %77, label %78, label %97

78:                                               ; preds = %76
  %79 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %79, i64 %81
  %83 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %82, i32 0, i32 1
  %84 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %83, align 8
  %85 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32, i32* @EACCES, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %90, %78
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %67

97:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %170, %97
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br label %107

107:                                              ; preds = %101, %98
  %108 = phi i1 [ false, %98 ], [ %106, %101 ]
  br i1 %108, label %109, label %173

109:                                              ; preds = %107
  %110 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %110, i64 %112
  %114 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %113, i32 0, i32 1
  %115 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %114, align 8
  store %struct.v4l2_ctrl* %115, %struct.v4l2_ctrl** %10, align 8
  %116 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %10, align 8
  %117 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %116, i32 0, i32 3
  %118 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %117, align 8
  %119 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %118, i64 0
  %120 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %119, align 8
  store %struct.v4l2_ctrl* %120, %struct.v4l2_ctrl** %11, align 8
  %121 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %121, i64 %123
  %125 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %109
  br label %170

129:                                              ; preds = %109
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %132 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, align 8
  %134 = call i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl* %133)
  %135 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %10, align 8
  %136 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %129
  %140 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, align 8
  %141 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)** %143, align 8
  %145 = icmp ne i32 (%struct.v4l2_ctrl*)* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, align 8
  %148 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)** %150, align 8
  %152 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, align 8
  %153 = call i32 %151(%struct.v4l2_ctrl* %152)
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %146, %139, %129
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %160 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %161 = load i32, i32* @cur_to_user, align 4
  %162 = call i32 @cluster_walk(i32 %158, %struct.v4l2_ext_controls* %159, %struct.ctrl_helper* %160, i32 %161)
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %157, %154
  %164 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, align 8
  %165 = call i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl* %164)
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %168 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %169 = call i32 @cluster_done(i32 %166, %struct.v4l2_ext_controls* %167, %struct.ctrl_helper* %168)
  br label %170

170:                                              ; preds = %163, %128
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %98

173:                                              ; preds = %107
  %174 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %175 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds [4 x %struct.ctrl_helper], [4 x %struct.ctrl_helper]* %6, i64 0, i64 0
  %178 = call i32 @ARRAY_SIZE(%struct.ctrl_helper* %177)
  %179 = icmp sgt i32 %176, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load %struct.ctrl_helper*, %struct.ctrl_helper** %7, align 8
  %182 = call i32 @kfree(%struct.ctrl_helper* %181)
  br label %183

183:                                              ; preds = %180, %173
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %183, %58, %34, %26
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @V4L2_CTRL_ID2CLASS(i32) #1

declare dso_local i32 @class_check(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ctrl_helper*) #1

declare dso_local %struct.ctrl_helper* @kmalloc(i32, i32) #1

declare dso_local i32 @prepare_ext_ctrls(%struct.v4l2_ctrl_handler*, %struct.v4l2_ext_controls*, %struct.ctrl_helper*, i32) #1

declare dso_local i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @cluster_walk(i32, %struct.v4l2_ext_controls*, %struct.ctrl_helper*, i32) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @cluster_done(i32, %struct.v4l2_ext_controls*, %struct.ctrl_helper*) #1

declare dso_local i32 @kfree(%struct.ctrl_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
