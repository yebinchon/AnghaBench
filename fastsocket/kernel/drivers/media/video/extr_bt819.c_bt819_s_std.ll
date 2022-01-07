; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt819.c_bt819_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt819.c_bt819_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing = type { i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.bt819 = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"set norm %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no notify found!\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@BT819_FIFO_RESET_LOW = common dso_local global i32 0, align 4
@timing_data = common dso_local global %struct.timing* null, align 8
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"unsupported norm %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BT819_FIFO_RESET_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @bt819_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bt819*, align 8
  %7 = alloca %struct.timing*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.bt819* @to_bt819(%struct.v4l2_subdev* %8)
  store %struct.bt819* %9, %struct.bt819** %6, align 8
  store %struct.timing* null, %struct.timing** %7, align 8
  %10 = load i32, i32* @debug, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = call i32 @v4l2_dbg(i32 1, i32 %10, %struct.v4l2_subdev* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %2
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = call i32 @v4l2_err(%struct.v4l2_subdev* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @V4L2_STD_NTSC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %36 = load i32, i32* @BT819_FIFO_RESET_LOW, align 4
  %37 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %35, i32 %36, i32 0)
  %38 = load %struct.bt819*, %struct.bt819** %6, align 8
  %39 = call i32 @bt819_setbit(%struct.bt819* %38, i32 1, i32 0, i32 1)
  %40 = load %struct.bt819*, %struct.bt819** %6, align 8
  %41 = call i32 @bt819_setbit(%struct.bt819* %40, i32 1, i32 1, i32 0)
  %42 = load %struct.bt819*, %struct.bt819** %6, align 8
  %43 = call i32 @bt819_setbit(%struct.bt819* %42, i32 1, i32 5, i32 0)
  %44 = load %struct.bt819*, %struct.bt819** %6, align 8
  %45 = call i32 @bt819_write(%struct.bt819* %44, i32 24, i32 104)
  %46 = load %struct.bt819*, %struct.bt819** %6, align 8
  %47 = call i32 @bt819_write(%struct.bt819* %46, i32 25, i32 93)
  %48 = load %struct.timing*, %struct.timing** @timing_data, align 8
  %49 = getelementptr inbounds %struct.timing, %struct.timing* %48, i64 1
  store %struct.timing* %49, %struct.timing** %7, align 8
  br label %80

50:                                               ; preds = %29
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @V4L2_STD_PAL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %57 = load i32, i32* @BT819_FIFO_RESET_LOW, align 4
  %58 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %56, i32 %57, i32 0)
  %59 = load %struct.bt819*, %struct.bt819** %6, align 8
  %60 = call i32 @bt819_setbit(%struct.bt819* %59, i32 1, i32 0, i32 1)
  %61 = load %struct.bt819*, %struct.bt819** %6, align 8
  %62 = call i32 @bt819_setbit(%struct.bt819* %61, i32 1, i32 1, i32 1)
  %63 = load %struct.bt819*, %struct.bt819** %6, align 8
  %64 = call i32 @bt819_setbit(%struct.bt819* %63, i32 1, i32 5, i32 1)
  %65 = load %struct.bt819*, %struct.bt819** %6, align 8
  %66 = call i32 @bt819_write(%struct.bt819* %65, i32 24, i32 127)
  %67 = load %struct.bt819*, %struct.bt819** %6, align 8
  %68 = call i32 @bt819_write(%struct.bt819* %67, i32 25, i32 114)
  %69 = load %struct.timing*, %struct.timing** @timing_data, align 8
  %70 = getelementptr inbounds %struct.timing, %struct.timing* %69, i64 0
  store %struct.timing* %70, %struct.timing** %7, align 8
  br label %79

71:                                               ; preds = %50
  %72 = load i32, i32* @debug, align 4
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @v4l2_dbg(i32 1, i32 %72, %struct.v4l2_subdev* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %152

79:                                               ; preds = %55
  br label %80

80:                                               ; preds = %79, %34
  %81 = load %struct.bt819*, %struct.bt819** %6, align 8
  %82 = load %struct.timing*, %struct.timing** %7, align 8
  %83 = getelementptr inbounds %struct.timing, %struct.timing* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 3
  %87 = shl i32 %86, 6
  %88 = load %struct.timing*, %struct.timing** %7, align 8
  %89 = getelementptr inbounds %struct.timing, %struct.timing* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 3
  %93 = shl i32 %92, 4
  %94 = or i32 %87, %93
  %95 = load %struct.timing*, %struct.timing** %7, align 8
  %96 = getelementptr inbounds %struct.timing, %struct.timing* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 3
  %100 = shl i32 %99, 2
  %101 = or i32 %94, %100
  %102 = load %struct.timing*, %struct.timing** %7, align 8
  %103 = getelementptr inbounds %struct.timing, %struct.timing* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 8
  %106 = and i32 %105, 3
  %107 = or i32 %101, %106
  %108 = call i32 @bt819_write(%struct.bt819* %81, i32 3, i32 %107)
  %109 = load %struct.bt819*, %struct.bt819** %6, align 8
  %110 = load %struct.timing*, %struct.timing** %7, align 8
  %111 = getelementptr inbounds %struct.timing, %struct.timing* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 255
  %114 = call i32 @bt819_write(%struct.bt819* %109, i32 4, i32 %113)
  %115 = load %struct.bt819*, %struct.bt819** %6, align 8
  %116 = load %struct.timing*, %struct.timing** %7, align 8
  %117 = getelementptr inbounds %struct.timing, %struct.timing* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 255
  %120 = call i32 @bt819_write(%struct.bt819* %115, i32 5, i32 %119)
  %121 = load %struct.bt819*, %struct.bt819** %6, align 8
  %122 = load %struct.timing*, %struct.timing** %7, align 8
  %123 = getelementptr inbounds %struct.timing, %struct.timing* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 255
  %126 = call i32 @bt819_write(%struct.bt819* %121, i32 6, i32 %125)
  %127 = load %struct.bt819*, %struct.bt819** %6, align 8
  %128 = load %struct.timing*, %struct.timing** %7, align 8
  %129 = getelementptr inbounds %struct.timing, %struct.timing* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 255
  %132 = call i32 @bt819_write(%struct.bt819* %127, i32 7, i32 %131)
  %133 = load %struct.bt819*, %struct.bt819** %6, align 8
  %134 = load %struct.timing*, %struct.timing** %7, align 8
  %135 = getelementptr inbounds %struct.timing, %struct.timing* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = call i32 @bt819_write(%struct.bt819* %133, i32 8, i32 %138)
  %140 = load %struct.bt819*, %struct.bt819** %6, align 8
  %141 = load %struct.timing*, %struct.timing** %7, align 8
  %142 = getelementptr inbounds %struct.timing, %struct.timing* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 255
  %145 = call i32 @bt819_write(%struct.bt819* %140, i32 9, i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.bt819*, %struct.bt819** %6, align 8
  %148 = getelementptr inbounds %struct.bt819, %struct.bt819* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %150 = load i32, i32* @BT819_FIFO_RESET_HIGH, align 4
  %151 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %149, i32 %150, i32 0)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %80, %71
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.bt819* @to_bt819(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @bt819_setbit(%struct.bt819*, i32, i32, i32) #1

declare dso_local i32 @bt819_write(%struct.bt819*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
