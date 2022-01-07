; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9874a_checkit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9874a_checkit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@TDA9874A_DIC = common dso_local global i32 0, align 4
@TDA9874A_SIC = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"tda9874a_checkit(): DIC=0x%X, SIC=0x%X.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"found tda9874%s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@tda9874a_dic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @tda9874a_checkit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9874a_checkit(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  %7 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %8 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %7, i32 0, i32 0
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %10 = load i32, i32* @TDA9874A_DIC, align 4
  %11 = call i32 @chip_read2(%struct.CHIPSTATE* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp eq i32 -1, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %16 = load i32, i32* @TDA9874A_SIC, align 4
  %17 = call i32 @chip_read2(%struct.CHIPSTATE* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = icmp eq i32 -1, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load i32, i32* @debug, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @v4l2_dbg(i32 1, i32 %21, %struct.v4l2_subdev* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 17
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %39

31:                                               ; preds = %28, %20
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 17
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %37 = call i32 @v4l2_info(%struct.v4l2_subdev* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* @tda9874a_dic, align 4
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %31, %19, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @chip_read2(%struct.CHIPSTATE*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
