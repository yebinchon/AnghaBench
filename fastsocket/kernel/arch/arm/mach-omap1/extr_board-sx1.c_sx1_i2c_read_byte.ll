; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_board-sx1.c_sx1_i2c_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_board-sx1.c_sx1_i2c_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i8, i32, i8*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sx1_i2c_read_byte(i8 zeroext %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.i2c_msg], align 16
  %11 = alloca [2 x i8], align 1
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %12 = call %struct.i2c_adapter* @i2c_get_adapter(i32 0)
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %8, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %14 = icmp ne %struct.i2c_adapter* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load i8, i8* %5, align 1
  %20 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  store i8 %19, i8* %21, align 16
  %22 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 3
  store i64 0, i64* %23, align 16
  %24 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %27 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8, i8* %6, align 1
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %32 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %33 = call i32 @i2c_transfer(%struct.i2c_adapter* %31, %struct.i2c_msg* %32, i32 1)
  store i32 %33, i32* %9, align 4
  %34 = load i8, i8* %5, align 1
  %35 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  store i8 %34, i8* %36, align 16
  %37 = load i64, i64* @I2C_M_RD, align 8
  %38 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 16
  %40 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %43 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %46 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %47 = call i32 @i2c_transfer(%struct.i2c_adapter* %45, %struct.i2c_msg* %46, i32 1)
  store i32 %47, i32* %9, align 4
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %7, align 8
  store i8 %49, i8* %50, align 1
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %52 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %58

56:                                               ; preds = %18
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %55, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
