; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_beep_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_beep_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32, i32 }

@W83781D_REG_BEEP_INTS1 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS3 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_beep_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.w83627hf_data*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.w83627hf_data* %12, %struct.w83627hf_data** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @simple_strtoul(i8* %13, i32* null, i32 10)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %16 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %19 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 32768
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @BEEP_MASK_TO_REG(i64 %22)
  %24 = or i32 %21, %23
  %25 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %26 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %28 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %29 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %30 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %27, i32 %28, i32 %32)
  %34 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %35 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %36 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %37 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %34, i32 %35, i32 %40)
  %42 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %43 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %44 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %45 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %42, i32 %43, i32 %48)
  %50 = load %struct.w83627hf_data*, %struct.w83627hf_data** %9, align 8
  %51 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i64, i64* %8, align 8
  ret i64 %53
}

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BEEP_MASK_TO_REG(i64) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
