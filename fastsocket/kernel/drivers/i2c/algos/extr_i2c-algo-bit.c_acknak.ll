; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-bit.c_acknak.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-bit.c_acknak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_algo_bit_data* }
%struct.i2c_algo_bit_data = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"readbytes: ack/nak timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32)* @acknak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acknak(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 1
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %8, align 8
  store %struct.i2c_algo_bit_data* %9, %struct.i2c_algo_bit_data** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %14 = call i32 @setsda(%struct.i2c_algo_bit_data* %13, i32 0)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = sdiv i32 %19, 2
  %21 = call i32 @udelay(i32 %20)
  %22 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %23 = call i64 @sclhi(%struct.i2c_algo_bit_data* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %15
  %32 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %33 = call i32 @scllo(%struct.i2c_algo_bit_data* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @setsda(%struct.i2c_algo_bit_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @sclhi(%struct.i2c_algo_bit_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @scllo(%struct.i2c_algo_bit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
