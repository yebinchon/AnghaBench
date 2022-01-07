; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_set_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_set_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_vbi_ram_value = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tvp5150 = type { i32 }

@V4L2_STD_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"VBI can't be configured without knowing number of lines\0A\00", align 1
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_INI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.i2c_vbi_ram_value*, i32, i32, i32, i32)* @tvp5150_set_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_set_vbi(%struct.v4l2_subdev* %0, %struct.i2c_vbi_ram_value* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.i2c_vbi_ram_value*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tvp5150*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %8, align 8
  store %struct.i2c_vbi_ram_value* %1, %struct.i2c_vbi_ram_value** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %19 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %18)
  store %struct.tvp5150* %19, %struct.tvp5150** %14, align 8
  %20 = load %struct.tvp5150*, %struct.tvp5150** %14, align 8
  %21 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @V4L2_STD_ALL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %28 = call i32 @v4l2_err(%struct.v4l2_subdev* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %119

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @V4L2_STD_625_50, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 3
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 6
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 27
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38
  store i32 0, i32* %7, align 4
  br label %119

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %78, %45
  %47 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %9, align 8
  %48 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, -1
  br i1 %50, label %51, label %83

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %9, align 8
  %54 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %52, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %9, align 8
  %62 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %60, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %9, align 8
  %69 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %67, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %9, align 8
  %75 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  br label %83

78:                                               ; preds = %66, %59, %51
  %79 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %9, align 8
  %80 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %79, i32 1
  store %struct.i2c_vbi_ram_value* %80, %struct.i2c_vbi_ram_value** %9, align 8
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %46

83:                                               ; preds = %73, %46
  %84 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %9, align 8
  %85 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %119

89:                                               ; preds = %83
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, 240
  %93 = or i32 %90, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %94, 6
  %96 = shl i32 %95, 1
  %97 = load i32, i32* @TVP5150_LINE_MODE_INI, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %89
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @tvp5150_write(%struct.v4l2_subdev* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %89
  %108 = load i32, i32* %13, align 4
  %109 = and i32 %108, 2
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @tvp5150_write(%struct.v4l2_subdev* %112, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %107
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %88, %44, %26
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @tvp5150_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
