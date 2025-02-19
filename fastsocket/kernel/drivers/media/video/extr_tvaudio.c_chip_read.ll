; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_chip_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_chip_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"I/O error (read)\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"chip_read: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @chip_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip_read(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i8, align 1
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  %7 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %8 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %7, i32 0, i32 0
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call i32 @i2c_master_recv(%struct.i2c_client* %11, i8* %6, i32 1)
  %13 = icmp ne i32 1, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call i32 @v4l2_warn(%struct.v4l2_subdev* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @debug, align 4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = load i8, i8* %6, align 1
  %21 = call i32 @v4l2_dbg(i32 1, i32 %18, %struct.v4l2_subdev* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %20)
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
