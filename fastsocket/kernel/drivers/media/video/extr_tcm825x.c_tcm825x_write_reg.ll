; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i8*, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8, i8)* @tcm825x_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm825x_write_reg(%struct.i2c_client* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca [1 x %struct.i2c_msg], align 16
  %10 = alloca [2 x i8], align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 2
  store i64 0, i64* %25, align 16
  %26 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  store i32 2, i32* %27, align 16
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %29 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8, i8* %6, align 1
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = load i8, i8* %7, align 1
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %33, i8* %34, align 1
  %35 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %9, i64 0, i64 0
  %39 = call i32 @i2c_transfer(i32 %37, %struct.i2c_msg* %38, i32 1)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %45

43:                                               ; preds = %18
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %42, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
