; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_set_in_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_set_in_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm87_data = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*, i32)* @set_in_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_in_min(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.lm87_data*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %13 = call %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.lm87_data* %13, %struct.lm87_data** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @simple_strtol(i8* %14, i32* null, i32 10)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.lm87_data*, %struct.lm87_data** %8, align 8
  %17 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.lm87_data*, %struct.lm87_data** %8, align 8
  %21 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IN_TO_REG(i64 %19, i32 %26)
  %28 = load %struct.lm87_data*, %struct.lm87_data** %8, align 8
  %29 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 6
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @LM87_REG_IN_MIN(i32 %38)
  br label %44

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 6
  %43 = call i32 @LM87_REG_AIN_MIN(i32 %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i32 [ %39, %37 ], [ %43, %40 ]
  %46 = load %struct.lm87_data*, %struct.lm87_data** %8, align 8
  %47 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lm87_write_value(%struct.i2c_client* %34, i32 %45, i32 %52)
  %54 = load %struct.lm87_data*, %struct.lm87_data** %8, align 8
  %55 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  ret void
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm87_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IN_TO_REG(i64, i32) #1

declare dso_local i32 @lm87_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM87_REG_IN_MIN(i32) #1

declare dso_local i32 @LM87_REG_AIN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
