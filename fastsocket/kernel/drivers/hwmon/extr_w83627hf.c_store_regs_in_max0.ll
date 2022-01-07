; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_regs_in_max0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_regs_in_max0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32, i64, i32, i32* }

@w83627thf = common dso_local global i64 0, align 8
@w83637hf = common dso_local global i64 0, align 8
@w83687thf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_regs_in_max0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_regs_in_max0(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.w83627hf_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.w83627hf_data* %12, %struct.w83627hf_data** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @simple_strtoul(i8* %13, i32* null, i32 10)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %16 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %19 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %4
  %24 = load i64, i64* @w83627thf, align 8
  %25 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %26 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* @w83637hf, align 8
  %31 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %32 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @w83687thf, align 8
  %37 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %38 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35, %29, %23
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, 100
  %44 = sub nsw i32 %43, 70000
  %45 = add nsw i32 %44, 244
  %46 = sdiv i32 %45, 488
  %47 = call i32 @SENSORS_LIMIT(i32 %46, i32 0, i32 255)
  %48 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %49 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  br label %59

52:                                               ; preds = %35, %4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @IN_TO_REG(i32 %53)
  %55 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %56 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %41
  %60 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %61 = call i32 @W83781D_REG_IN_MAX(i32 0)
  %62 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %63 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %60, i32 %61, i32 %66)
  %68 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %69 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i64, i64* %8, align 8
  ret i64 %71
}

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SENSORS_LIMIT(i32, i32, i32) #1

declare dso_local i32 @IN_TO_REG(i32) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @W83781D_REG_IN_MAX(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
