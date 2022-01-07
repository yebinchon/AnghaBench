; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_tda9875_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_tda9875_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Writing %d 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"I/O error, trying (write %d 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i8)* @tda9875_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9875_write(%struct.v4l2_subdev* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca [2 x i8], align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %8, align 8
  %12 = load i32, i32* @debug, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8, i8* %7, align 1
  %16 = call i32 @v4l2_dbg(i32 1, i32 %12, %struct.v4l2_subdev* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i8 zeroext %15)
  %17 = load i32, i32* %6, align 4
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %18, i8* %19, align 1
  %20 = load i8, i8* %7, align 1
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 %20, i8* %21, align 1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %24 = call i32 @i2c_master_send(%struct.i2c_client* %22, i8* %23, i32 2)
  %25 = icmp ne i32 2, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i8, i8* %7, align 1
  %30 = call i32 @v4l2_warn(%struct.v4l2_subdev* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8 zeroext %29)
  store i32 -1, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i8 zeroext) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
