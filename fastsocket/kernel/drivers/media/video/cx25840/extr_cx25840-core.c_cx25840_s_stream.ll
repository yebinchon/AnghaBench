; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_s_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.i2c_client = type { i32 }

@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s video output\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @cx25840_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25840_state*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.cx25840_state* %9, %struct.cx25840_state** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load i32, i32* @cx25840_debug, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @v4l_dbg(i32 1, i32 %12, %struct.i2c_client* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %2
  %22 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %23 = call i64 @is_cx2388x(%struct.cx25840_state* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %27 = call i64 @is_cx231xx(%struct.cx25840_state* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %21
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = call i32 @cx25840_read(%struct.i2c_client* %30, i32 1057)
  %32 = or i32 %31, 11
  store i32 %32, i32* %7, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @cx25840_write(%struct.i2c_client* %33, i32 1057, i32 %34)
  br label %49

36:                                               ; preds = %25
  %37 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %38 = call i32 @cx25840_read(%struct.i2c_client* %37, i32 277)
  %39 = or i32 %38, 12
  store i32 %39, i32* %7, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @cx25840_write(%struct.i2c_client* %40, i32 277, i32 %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = call i32 @cx25840_read(%struct.i2c_client* %43, i32 278)
  %45 = or i32 %44, 4
  store i32 %45, i32* %7, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @cx25840_write(%struct.i2c_client* %46, i32 278, i32 %47)
  br label %49

49:                                               ; preds = %36, %29
  br label %79

50:                                               ; preds = %2
  %51 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %52 = call i64 @is_cx2388x(%struct.cx25840_state* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %56 = call i64 @is_cx231xx(%struct.cx25840_state* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54, %50
  %59 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %60 = call i32 @cx25840_read(%struct.i2c_client* %59, i32 1057)
  %61 = and i32 %60, -12
  store i32 %61, i32* %7, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @cx25840_write(%struct.i2c_client* %62, i32 1057, i32 %63)
  br label %78

65:                                               ; preds = %54
  %66 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %67 = call i32 @cx25840_read(%struct.i2c_client* %66, i32 277)
  %68 = and i32 %67, -13
  store i32 %68, i32* %7, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @cx25840_write(%struct.i2c_client* %69, i32 277, i32 %70)
  %72 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %73 = call i32 @cx25840_read(%struct.i2c_client* %72, i32 278)
  %74 = and i32 %73, -5
  store i32 %74, i32* %7, align 4
  %75 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @cx25840_write(%struct.i2c_client* %75, i32 278, i32 %76)
  br label %78

78:                                               ; preds = %65, %58
  br label %79

79:                                               ; preds = %78, %49
  ret i32 0
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i8*) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
