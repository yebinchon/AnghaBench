; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_read_block_data_once.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_read_block_data_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2c_client*, i64, i64, i64*)* @ds1307_read_block_data_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ds1307_read_block_data_once(%struct.i2c_client* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %31, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %17, i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %5, align 8
  br label %36

26:                                               ; preds = %16
  %27 = load i64, i64* %11, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %10, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %10, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %34, %24
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
