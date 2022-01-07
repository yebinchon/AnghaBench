; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-bit.c_try_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-bit.c_try_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_algo_bit_data* }
%struct.i2c_algo_bit_data = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"emitting stop condition\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"emitting start condition\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Used %d tries to %s client at 0x%02x: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"read from\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"write to\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"failed, timeout?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8, i32)* @try_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_address(%struct.i2c_adapter* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_algo_bit_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 1
  %12 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  store %struct.i2c_algo_bit_data* %12, %struct.i2c_algo_bit_data** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %44, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %19 = load i8, i8* %5, align 1
  %20 = call i32 @i2c_outb(%struct.i2c_adapter* %18, i8 zeroext %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %17
  br label %47

28:                                               ; preds = %23
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = call i32 (i32, i32*, i8*, ...) @bit_dbg(i32 3, i32* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %7, align 8
  %33 = call i32 @i2c_stop(%struct.i2c_algo_bit_data* %32)
  %34 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %7, align 8
  %35 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @udelay(i32 %36)
  %38 = call i32 (...) @yield()
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 0
  %41 = call i32 (i32, i32*, i8*, ...) @bit_dbg(i32 3, i32* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %7, align 8
  %43 = call i32 @i2c_start(%struct.i2c_algo_bit_data* %42)
  br label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %13

47:                                               ; preds = %27, %13
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i8, i8* %5, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = ashr i32 %65, 1
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 1
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)
  %71 = call i32 (i32, i32*, i8*, ...) @bit_dbg(i32 1, i32* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %63, i32 %66, i8* %70)
  br label %72

72:                                               ; preds = %53, %50, %47
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @i2c_outb(%struct.i2c_adapter*, i8 zeroext) #1

declare dso_local i32 @bit_dbg(i32, i32*, i8*, ...) #1

declare dso_local i32 @i2c_stop(%struct.i2c_algo_bit_data*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @i2c_start(%struct.i2c_algo_bit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
