; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_user_to_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_user_to_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_control = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { i32, i32, i8*, i32, i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_control*, %struct.v4l2_ctrl*)* @user_to_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_to_new(%struct.v4l2_ext_control* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ext_control*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.v4l2_ext_control* %0, %struct.v4l2_ext_control** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %93 [
    i32 129, label %14
    i32 128, label %20
  ]

14:                                               ; preds = %2
  %15 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  br label %99

20:                                               ; preds = %2
  %21 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ERANGE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %100

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @copy_from_user(i8* %44, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %41
  %53 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %8, align 1
  %61 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %52
  %77 = load i8, i8* %8, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @ERANGE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %100

83:                                               ; preds = %76, %52
  br label %84

84:                                               ; preds = %83, %41
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @EFAULT, align 4
  %89 = sub nsw i32 0, %88
  br label %91

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %87
  %92 = phi i32 [ %89, %87 ], [ 0, %90 ]
  store i32 %92, i32* %3, align 4
  br label %100

93:                                               ; preds = %2
  %94 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %4, align 8
  %95 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %93, %14
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %91, %80, %26
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @copy_from_user(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
