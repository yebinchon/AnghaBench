; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_chip_read2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_chip_read2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I/O error (read2)\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"chip_read2: reg%d=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*, i32)* @chip_read2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip_read2(%struct.CHIPSTATE* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CHIPSTATE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %4, align 8
  %12 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %11, i32 0, i32 0
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %6, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %23 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 1
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  %27 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  %31 = load i32, i32* @I2C_M_RD, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %30, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 3
  %36 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %5, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  store i8 %39, i8* %40, align 1
  %41 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %45 = call i32 @i2c_transfer(i32 %43, %struct.i2c_msg* %44, i32 2)
  %46 = icmp ne i32 2, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %49 = call i32 @v4l2_warn(%struct.v4l2_subdev* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %60

50:                                               ; preds = %2
  %51 = load i32, i32* @debug, align 4
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @v4l2_dbg(i32 1, i32 %51, %struct.v4l2_subdev* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8 zeroext %55)
  %57 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
