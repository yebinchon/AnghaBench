; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_try_set_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_try_set_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ext_controls = type { i32, i32, i32 }
%struct.ctrl_helper = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl_handler*, %struct.v4l2_ext_controls*, i32)* @try_set_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_set_ext_ctrls(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ext_controls* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca %struct.v4l2_ext_controls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x %struct.ctrl_helper], align 16
  %9 = alloca %struct.ctrl_helper*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %5, align 8
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds [4 x %struct.ctrl_helper], [4 x %struct.ctrl_helper]* %8, i64 0, i64 0
  store %struct.ctrl_helper* %12, %struct.ctrl_helper** %9, align 8
  %13 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @V4L2_CTRL_ID2CLASS(i32 %20)
  %22 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %25 = icmp eq %struct.v4l2_ctrl_handler* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %127

29:                                               ; preds = %3
  %30 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %36 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @class_check(%struct.v4l2_ctrl_handler* %35, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %127

40:                                               ; preds = %29
  %41 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [4 x %struct.ctrl_helper], [4 x %struct.ctrl_helper]* %8, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(%struct.ctrl_helper* %44)
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.ctrl_helper* @kmalloc(i32 %53, i32 %54)
  store %struct.ctrl_helper* %55, %struct.ctrl_helper** %9, align 8
  %56 = load %struct.ctrl_helper*, %struct.ctrl_helper** %9, align 8
  %57 = icmp ne %struct.ctrl_helper* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %127

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %64 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %65 = load %struct.ctrl_helper*, %struct.ctrl_helper** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @prepare_ext_ctrls(%struct.v4l2_ctrl_handler* %63, %struct.v4l2_ext_controls* %64, %struct.ctrl_helper* %65, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %115

74:                                               ; preds = %62
  %75 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %76 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %77 = load %struct.ctrl_helper*, %struct.ctrl_helper** %9, align 8
  %78 = call i32 @try_or_set_ext_ctrls(%struct.v4l2_ctrl_handler* %75, %struct.v4l2_ext_controls* %76, %struct.ctrl_helper* %77, i32 0)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %86 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %74
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load %struct.ctrl_helper*, %struct.ctrl_helper** %9, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %101, i64 %103
  %105 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %94

109:                                              ; preds = %94
  %110 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %111 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %112 = load %struct.ctrl_helper*, %struct.ctrl_helper** %9, align 8
  %113 = call i32 @try_or_set_ext_ctrls(%struct.v4l2_ctrl_handler* %110, %struct.v4l2_ext_controls* %111, %struct.ctrl_helper* %112, i32 1)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %109, %90, %87
  br label %115

115:                                              ; preds = %114, %73
  %116 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [4 x %struct.ctrl_helper], [4 x %struct.ctrl_helper]* %8, i64 0, i64 0
  %120 = call i32 @ARRAY_SIZE(%struct.ctrl_helper* %119)
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.ctrl_helper*, %struct.ctrl_helper** %9, align 8
  %124 = call i32 @kfree(%struct.ctrl_helper* %123)
  br label %125

125:                                              ; preds = %122, %115
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %58, %34, %26
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @V4L2_CTRL_ID2CLASS(i32) #1

declare dso_local i32 @class_check(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ctrl_helper*) #1

declare dso_local %struct.ctrl_helper* @kmalloc(i32, i32) #1

declare dso_local i32 @prepare_ext_ctrls(%struct.v4l2_ctrl_handler*, %struct.v4l2_ext_controls*, %struct.ctrl_helper*, i32) #1

declare dso_local i32 @try_or_set_ext_ctrls(%struct.v4l2_ctrl_handler*, %struct.v4l2_ext_controls*, %struct.ctrl_helper*, i32) #1

declare dso_local i32 @kfree(%struct.ctrl_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
