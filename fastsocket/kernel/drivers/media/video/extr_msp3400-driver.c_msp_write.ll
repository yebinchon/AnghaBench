; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"msp_write(0x%x, 0x%x, 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"I/O error #%d (write 0x%02x/0x%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"resetting chip, sound will go off.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @msp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_write(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i32], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load i32, i32* %8, align 4
  %15 = ashr i32 %14, 8
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 8
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* @msp_debug, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @v4l_dbg(i32 3, i32 %26, %struct.i2c_client* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %49, %4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %38 = call i32 @i2c_master_send(%struct.i2c_client* %36, i32* %37, i32 5)
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %52

41:                                               ; preds = %35
  %42 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_warn(%struct.i2c_client* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = call i32 @msecs_to_jiffies(i32 10)
  %48 = call i32 @schedule_timeout_interruptible(i32 %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %32

52:                                               ; preds = %40, %32
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %57 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_warn(%struct.i2c_client* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %59 = call i32 @msp_reset(%struct.i2c_client* %58)
  store i32 -1, i32* %5, align 4
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @v4l_warn(%struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msp_reset(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
