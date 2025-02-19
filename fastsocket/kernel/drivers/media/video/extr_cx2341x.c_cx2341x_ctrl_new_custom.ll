; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_ctrl_new_custom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_ctrl_new_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl_config = type { i64, i8*, i8*, i32, i8*, i8*, i8*, i32, i32*, i32, i32 }

@cx2341x_ops = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_ctrl* (%struct.v4l2_ctrl_handler*, i32, i8*, i8*, i8*, i8*)* @cx2341x_ctrl_new_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_ctrl* @cx2341x_ctrl_new_custom(%struct.v4l2_ctrl_handler* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.v4l2_ctrl_handler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.v4l2_ctrl_config, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 10
  %16 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 0
  %17 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 9
  %18 = call i32 @cx2341x_ctrl_fill(i32 %14, i32* %15, i64* %16, i8** %9, i8** %10, i8** %11, i8** %12, i32* %17)
  %19 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 8
  store i32* @cx2341x_ops, i32** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 7
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 6
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 5
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 2
  store i8* null, i8** %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @cx2341x_get_menu(i32 %36)
  %38 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  br label %43

39:                                               ; preds = %6
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %13, i32 0, i32 1
  store i8* null, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %45 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %44, %struct.v4l2_ctrl_config* %13, i32* null)
  ret %struct.v4l2_ctrl* %45
}

declare dso_local i32 @cx2341x_ctrl_fill(i32, i32*, i64*, i8**, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @cx2341x_get_menu(i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_config*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
