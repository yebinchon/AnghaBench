; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_virtual.c_set_max_uA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_virtual.c_set_max_uA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.virtual_consumer_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_max_uA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_max_uA(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.virtual_consumer_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.virtual_consumer_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.virtual_consumer_data* %13, %struct.virtual_consumer_data** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strict_strtol(i8* %14, i32 10, i64* %11)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %5, align 8
  br label %33

19:                                               ; preds = %4
  %20 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %10, align 8
  %21 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %10, align 8
  %25 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %10, align 8
  %28 = call i32 @update_current_limit_constraints(%struct.device* %26, %struct.virtual_consumer_data* %27)
  %29 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %10, align 8
  %30 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %19, %17
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local %struct.virtual_consumer_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @update_current_limit_constraints(%struct.device*, %struct.virtual_consumer_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
