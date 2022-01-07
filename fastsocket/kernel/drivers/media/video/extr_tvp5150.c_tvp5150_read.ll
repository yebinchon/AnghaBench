; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"tvp5150: read 0x%02x = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i8)* @tvp5150_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_read(%struct.v4l2_subdev* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca [1 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load i8, i8* %4, align 1
  %11 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  store i8 %10, i8* %11, align 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %14 = call i32 @i2c_master_send(%struct.i2c_client* %12, i8* %13, i32 1)
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 1, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @debug, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = trunc i32 %19 to i8
  %21 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8, ...) @v4l2_dbg(i32 0, i32 %17, %struct.v4l2_subdev* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8 zeroext %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = call i32 @msleep(i32 10)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %26 = call i32 @i2c_master_recv(%struct.i2c_client* %24, i8* %25, i32 1)
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 1, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* @debug, align 4
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = trunc i32 %31 to i8
  %33 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8, ...) @v4l2_dbg(i32 0, i32 %29, %struct.v4l2_subdev* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8 zeroext %32)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @debug, align 4
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %37 = load i8, i8* %4, align 1
  %38 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i8, ...) @v4l2_dbg(i32 2, i32 %35, %struct.v4l2_subdev* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %37, i32 %40)
  %42 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  ret i32 %44
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
