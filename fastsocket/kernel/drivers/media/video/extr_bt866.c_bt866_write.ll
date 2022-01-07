; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt866.c_bt866_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt866.c_bt866_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt866 = type { i64*, i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"write 0x%02x = 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error #%d writing to 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"giving up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt866*, i64, i64)* @bt866_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt866_write(%struct.bt866* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bt866*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i32, align 4
  store %struct.bt866* %0, %struct.bt866** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.bt866*, %struct.bt866** %5, align 8
  %12 = getelementptr inbounds %struct.bt866, %struct.bt866* %11, i32 0, i32 1
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %14, i64* %15, align 16
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.bt866*, %struct.bt866** %5, align 8
  %20 = getelementptr inbounds %struct.bt866, %struct.bt866* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %18, i64* %23, align 8
  %24 = load i32, i32* @debug, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @v4l_dbg(i32 1, i32 %24, %struct.i2c_client* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %38, %3
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %35 = call i32 @i2c_master_send(%struct.i2c_client* %33, i64* %34, i32 2)
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_warn(%struct.i2c_client* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %43)
  %45 = call i32 @msecs_to_jiffies(i32 100)
  %46 = call i32 @schedule_timeout_interruptible(i32 %45)
  br label %29

47:                                               ; preds = %37, %29
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %52 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_warn(%struct.i2c_client* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %54

53:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i64, i64) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i64*, i32) #1

declare dso_local i32 @v4l_warn(%struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
