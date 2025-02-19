; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ics932s401.c_ics932s401_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_ics932s401.c_ics932s401_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ics932s401_data = type { i64, i32, i32*, i32 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@SENSOR_REFRESH_INTERVAL = common dso_local global i64 0, align 8
@NUM_MIRRORED_REGS = common dso_local global i32 0, align 4
@regs_to_copy = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ics932s401_data* (%struct.device*)* @ics932s401_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ics932s401_data* @ics932s401_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ics932s401_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.i2c_client* @to_i2c_client(%struct.device* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.ics932s401_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.ics932s401_data* %11, %struct.ics932s401_data** %4, align 8
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ics932s401_data*, %struct.ics932s401_data** %4, align 8
  %14 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %13, i32 0, i32 3
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.ics932s401_data*, %struct.ics932s401_data** %4, align 8
  %18 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SENSOR_REFRESH_INTERVAL, align 8
  %21 = add i64 %19, %20
  %22 = call i64 @time_before(i64 %16, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.ics932s401_data*, %struct.ics932s401_data** %4, align 8
  %26 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %63

30:                                               ; preds = %24, %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NUM_MIRRORED_REGS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i64*, i64** @regs_to_copy, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %36, i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 8
  %45 = load %struct.ics932s401_data*, %struct.ics932s401_data** %4, align 8
  %46 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i64*, i64** @regs_to_copy, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  store i32 %44, i32* %53, align 4
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.ics932s401_data*, %struct.ics932s401_data** %4, align 8
  %60 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ics932s401_data*, %struct.ics932s401_data** %4, align 8
  %62 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %57, %29
  %64 = load %struct.ics932s401_data*, %struct.ics932s401_data** %4, align 8
  %65 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %64, i32 0, i32 3
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.ics932s401_data*, %struct.ics932s401_data** %4, align 8
  ret %struct.ics932s401_data* %67
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ics932s401_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
