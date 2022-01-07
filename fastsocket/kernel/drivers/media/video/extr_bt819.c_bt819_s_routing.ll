; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt819.c_bt819_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt819.c_bt819_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.bt819 = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"set input %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no notify found!\0A\00", align 1
@BT819_FIFO_RESET_LOW = common dso_local global i32 0, align 4
@BT819_FIFO_RESET_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @bt819_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bt819*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.bt819* @to_bt819(%struct.v4l2_subdev* %11)
  store %struct.bt819* %12, %struct.bt819** %10, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @v4l2_dbg(i32 1, i32 %13, %struct.v4l2_subdev* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 7
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %72

25:                                               ; preds = %19
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp eq %struct.TYPE_2__* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %25
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %39 = call i32 @v4l2_err(%struct.v4l2_subdev* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.bt819*, %struct.bt819** %10, align 8
  %42 = getelementptr inbounds %struct.bt819, %struct.bt819* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %48 = load i32, i32* @BT819_FIFO_RESET_LOW, align 4
  %49 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %47, i32 %48, i32 0)
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.bt819*, %struct.bt819** %10, align 8
  %52 = getelementptr inbounds %struct.bt819, %struct.bt819* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bt819*, %struct.bt819** %10, align 8
  %54 = getelementptr inbounds %struct.bt819, %struct.bt819* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.bt819*, %struct.bt819** %10, align 8
  %59 = call i32 @bt819_setbit(%struct.bt819* %58, i32 11, i32 6, i32 0)
  %60 = load %struct.bt819*, %struct.bt819** %10, align 8
  %61 = call i32 @bt819_setbit(%struct.bt819* %60, i32 26, i32 1, i32 1)
  br label %67

62:                                               ; preds = %46
  %63 = load %struct.bt819*, %struct.bt819** %10, align 8
  %64 = call i32 @bt819_setbit(%struct.bt819* %63, i32 11, i32 6, i32 1)
  %65 = load %struct.bt819*, %struct.bt819** %10, align 8
  %66 = call i32 @bt819_setbit(%struct.bt819* %65, i32 26, i32 1, i32 0)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %69 = load i32, i32* @BT819_FIFO_RESET_HIGH, align 4
  %70 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %67, %40
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %22
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.bt819* @to_bt819(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @bt819_setbit(%struct.bt819*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
