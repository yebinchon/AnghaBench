; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_i2c_read_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_i2c_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_msg = type { i32, i32, i8*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I/O error (read2)\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"chip_read2: reg%d=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @i2c_read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read_register(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %17 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i64 1
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %23 = load i32, i32* @I2C_M_RD, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %26 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %7, align 4
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %35 = call i32 @i2c_transfer(i32 %33, %struct.i2c_msg* %34, i32 2)
  %36 = icmp ne i32 2, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = call i32 @v4l_warn(%struct.i2c_client* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

40:                                               ; preds = %3
  %41 = load i32, i32* @debug, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @v4l_dbg(i32 1, i32 %41, %struct.i2c_client* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8 zeroext %45)
  %47 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %40, %37
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @v4l_warn(%struct.i2c_client*, i8*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
