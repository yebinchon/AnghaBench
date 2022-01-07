; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_new_custom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_new_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl_config = type { i8*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_config* %1, i8* %2) #0 {
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_ctrl_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_ctrl*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %4, align 8
  store %struct.v4l2_ctrl_config* %1, %struct.v4l2_ctrl_config** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %20, i32 0, i32 1
  %22 = load i8**, i8*** %21, align 8
  store i8** %22, i8*** %10, align 8
  %23 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %16, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @v4l2_ctrl_fill(i32 %46, i8** %9, i32* %11, i32* %13, i32* %14, i32* %15, i32* %16, i32* %12)
  br label %48

48:                                               ; preds = %43, %3
  %49 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @WARN_ON(i32 %59)
  br label %66

61:                                               ; preds = %48
  %62 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @WARN_ON(i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i8**, i8*** %10, align 8
  %71 = icmp eq i8** %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i8** @v4l2_ctrl_get_menu(i32 %75)
  store i8** %76, i8*** %10, align 8
  br label %77

77:                                               ; preds = %72, %69, %66
  %78 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %79 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  br label %97

95:                                               ; preds = %77
  %96 = load i32, i32* %15, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi i32 [ %94, %91 ], [ %96, %95 ]
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i8**, i8*** %10, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = call %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler* %78, i32 %81, i32 %84, i8* %85, i32 %86, i32 %87, i32 %88, i32 %98, i32 %99, i32 %100, i8** %101, i8* %102)
  store %struct.v4l2_ctrl* %103, %struct.v4l2_ctrl** %8, align 8
  %104 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %105 = icmp ne %struct.v4l2_ctrl* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %97
  %107 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %111 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %5, align 8
  %113 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  %116 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %106, %97
  %118 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  ret %struct.v4l2_ctrl* %118
}

declare dso_local i32 @v4l2_ctrl_fill(i32, i8**, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8** @v4l2_ctrl_get_menu(i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
