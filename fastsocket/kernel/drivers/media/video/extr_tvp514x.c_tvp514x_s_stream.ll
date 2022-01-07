; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_s_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.tvp514x_decoder = type { i32 }
%struct.tvp514x_reg = type { i32 }

@REG_OPERATION_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to turn off decoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to turn on decoder\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to detect decoder\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to configure decoder\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tvp514x_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.tvp514x_decoder*, align 8
  %9 = alloca %struct.tvp514x_reg*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %12)
  store %struct.tvp514x_decoder* %13, %struct.tvp514x_decoder** %8, align 8
  %14 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %8, align 8
  %15 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %78 [
    i32 0, label %22
    i32 1, label %36
  ]

22:                                               ; preds = %20
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = load i32, i32* @REG_OPERATION_MODE, align 4
  %25 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %23, i32 %24, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = call i32 @v4l2_err(%struct.v4l2_subdev* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %83

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %8, align 8
  %35 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %81

36:                                               ; preds = %20
  %37 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.tvp514x_reg*
  store %struct.tvp514x_reg* %44, %struct.tvp514x_reg** %9, align 8
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %46 = load %struct.tvp514x_reg*, %struct.tvp514x_reg** %9, align 8
  %47 = call i32 @tvp514x_write_regs(%struct.v4l2_subdev* %45, %struct.tvp514x_reg* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %52 = call i32 @v4l2_err(%struct.v4l2_subdev* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %83

54:                                               ; preds = %36
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %56 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %8, align 8
  %57 = call i32 @tvp514x_detect(%struct.v4l2_subdev* %55, %struct.tvp514x_decoder* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %62 = call i32 @v4l2_err(%struct.v4l2_subdev* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %54
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %66 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %8, align 8
  %67 = call i32 @tvp514x_configure(%struct.v4l2_subdev* %65, %struct.tvp514x_decoder* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %72 = call i32 @v4l2_err(%struct.v4l2_subdev* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %83

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %8, align 8
  %77 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %81

78:                                               ; preds = %20
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %74, %32
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %70, %60, %50, %28, %19
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp514x_write_reg(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @tvp514x_write_regs(%struct.v4l2_subdev*, %struct.tvp514x_reg*) #1

declare dso_local i32 @tvp514x_detect(%struct.v4l2_subdev*, %struct.tvp514x_decoder*) #1

declare dso_local i32 @tvp514x_configure(%struct.v4l2_subdev*, %struct.tvp514x_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
