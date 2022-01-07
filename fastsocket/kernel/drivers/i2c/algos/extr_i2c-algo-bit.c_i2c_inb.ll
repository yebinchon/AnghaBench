; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-bit.c_i2c_inb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-bit.c_i2c_inb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_algo_bit_data* }
%struct.i2c_algo_bit_data = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"i2c_inb: timeout at bit #%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @i2c_inb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_inb(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i8 0, i8* %5, align 1
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 1
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %8, align 8
  store %struct.i2c_algo_bit_data* %9, %struct.i2c_algo_bit_data** %6, align 8
  %10 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %11 = call i32 @sdahi(%struct.i2c_algo_bit_data* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %57, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %60

15:                                               ; preds = %12
  %16 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %17 = call i64 @sclhi(%struct.i2c_algo_bit_data* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 7, %22
  %24 = call i32 @bit_dbg(i32 1, i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ETIMEDOUT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %63

27:                                               ; preds = %15
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = mul nsw i32 %29, 2
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %5, align 1
  %32 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %33 = call i64 @getsda(%struct.i2c_algo_bit_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 1
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %5, align 1
  br label %40

40:                                               ; preds = %35, %27
  %41 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %42 = call i32 @setscl(%struct.i2c_algo_bit_data* %41, i32 0)
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i32 [ %49, %45 ], [ %53, %50 ]
  %56 = call i32 @udelay(i32 %55)
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %12

60:                                               ; preds = %12
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %19
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @sdahi(%struct.i2c_algo_bit_data*) #1

declare dso_local i64 @sclhi(%struct.i2c_algo_bit_data*) #1

declare dso_local i32 @bit_dbg(i32, i32*, i8*, i32) #1

declare dso_local i64 @getsda(%struct.i2c_algo_bit_data*) #1

declare dso_local i32 @setscl(%struct.i2c_algo_bit_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
