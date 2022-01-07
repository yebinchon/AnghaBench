; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_beep_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_store_beep_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83781d_data = type { i32, i64, i32 }

@W83781D_REG_BEEP_INTS1 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS2 = common dso_local global i32 0, align 4
@w83781d = common dso_local global i64 0, align 8
@as99127f = common dso_local global i64 0, align 8
@W83781D_REG_BEEP_INTS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_beep_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.w83781d_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.w83781d_data* %12, %struct.w83781d_data** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @simple_strtoul(i8* %13, i32* null, i32 10)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %16 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %19 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 32768
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %24 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @BEEP_MASK_TO_REG(i32 %22, i64 %25)
  %27 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %28 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %32 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %33 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %34 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 255
  %37 = call i32 @w83781d_write_value(%struct.w83781d_data* %31, i32 %32, i32 %36)
  %38 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %39 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %40 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %41 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = call i32 @w83781d_write_value(%struct.w83781d_data* %38, i32 %39, i32 %44)
  %46 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %47 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @w83781d, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %4
  %52 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %53 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @as99127f, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %59 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %60 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %61 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = call i32 @w83781d_write_value(%struct.w83781d_data* %58, i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %57, %51, %4
  %67 = load %struct.w83781d_data*, %struct.w83781d_data** %9, align 8
  %68 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %67, i32 0, i32 2
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i64, i64* %8, align 8
  ret i64 %70
}

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BEEP_MASK_TO_REG(i32, i64) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
