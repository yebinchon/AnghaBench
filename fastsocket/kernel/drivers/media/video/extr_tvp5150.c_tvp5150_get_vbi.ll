; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_get_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_get_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_vbi_ram_value = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tvp5150 = type { i32 }

@V4L2_STD_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"VBI can't be configured without knowing number of lines\0A\00", align 1
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_INI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.i2c_vbi_ram_value*, i32)* @tvp5150_get_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_get_vbi(%struct.v4l2_subdev* %0, %struct.i2c_vbi_ram_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.i2c_vbi_ram_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tvp5150*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.i2c_vbi_ram_value* %1, %struct.i2c_vbi_ram_value** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %13)
  store %struct.tvp5150* %14, %struct.tvp5150** %8, align 8
  %15 = load %struct.tvp5150*, %struct.tvp5150** %8, align 8
  %16 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @V4L2_STD_ALL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %23 = call i32 @v4l2_err(%struct.v4l2_subdev* %22, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @V4L2_STD_625_50, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 3
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 27
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  store i32 0, i32* %4, align 4
  br label %81

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 6
  %43 = shl i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @TVP5150_LINE_MODE_INI, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %10, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @tvp5150_read(%struct.v4l2_subdev* %47, i64 %48)
  %50 = and i32 %49, 15
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 15
  br i1 %52, label %53, label %61

53:                                               ; preds = %40
  %54 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %54, i64 %56
  %58 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %53, %40
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i32 @tvp5150_read(%struct.v4l2_subdev* %62, i64 %64)
  %66 = and i32 %65, 15
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 15
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %70, i64 %72
  %74 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %69, %61
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %39, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @tvp5150_read(%struct.v4l2_subdev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
