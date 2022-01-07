; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @tcm825x_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm825x_read_reg(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  store i64 0, i64* %24, align 16
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  store i32 1, i32* %26, align 16
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  store i32* %8, i32** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @I2C_M_RD, align 8
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 16
  %37 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  store i32 1, i32* %38, align 16
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  store i32* %9, i32** %40, align 8
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %46 = call i32 @i2c_transfer(i32 %44, %struct.i2c_msg* %45, i32 2)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %17
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %17
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %49, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
