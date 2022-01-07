; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87427.c_pc87427_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87427.c_pc87427_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc87427_data = type { i32, i32, i64 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pc87427_data* (%struct.device*)* @pc87427_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pc87427_data* @pc87427_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pc87427_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.pc87427_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.pc87427_data* %6, %struct.pc87427_data** %3, align 8
  %7 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %8 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %12 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HZ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @time_after(i64 %10, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %20 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %48

24:                                               ; preds = %18, %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %30 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pc87427_readall_fan(%struct.pc87427_data* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %25

44:                                               ; preds = %25
  %45 = load i64, i64* @jiffies, align 8
  %46 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %47 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %23
  %49 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  %50 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.pc87427_data*, %struct.pc87427_data** %3, align 8
  ret %struct.pc87427_data* %52
}

declare dso_local %struct.pc87427_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @pc87427_readall_fan(%struct.pc87427_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
