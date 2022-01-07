; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"I/O error #%d (read 0x%02x/0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"resetting chip, sound will go off.\0A\00", align 1
@msp_debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"msp_read(0x%x, 0x%x): 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @msp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_read(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 3, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %22 = ptrtoint i32* %21 to i32
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i64 1
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  %29 = load i32, i32* @I2C_M_RD, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %28, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  store i32 2, i32* %32, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %35 = ptrtoint i32* %34 to i32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 8
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %64, %3
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %53 = call i32 @i2c_transfer(i32 %51, %struct.i2c_msg* %52, i32 2)
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %67

56:                                               ; preds = %48
  %57 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_warn(%struct.i2c_client* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = call i32 @msecs_to_jiffies(i32 10)
  %63 = call i32 @schedule_timeout_interruptible(i32 %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %45

67:                                               ; preds = %55, %45
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %72 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_warn(%struct.i2c_client* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %74 = call i32 @msp_reset(%struct.i2c_client* %73)
  store i32 -1, i32* %4, align 4
  br label %89

75:                                               ; preds = %67
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %78, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @msp_debug, align 4
  %83 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @v4l_dbg(i32 3, i32 %82, %struct.i2c_client* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %75, %70
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @v4l_warn(%struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msp_reset(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
