; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_query_sensor_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_query_sensor_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmpex_bmc_data = type { i32*, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PEX_GET_SENSOR_NAME = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmpex_bmc_data*, i32)* @ibmpex_query_sensor_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmpex_query_sensor_name(%struct.ibmpex_bmc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmpex_bmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ibmpex_bmc_data* %0, %struct.ibmpex_bmc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @PEX_GET_SENSOR_NAME, align 4
  %7 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %4, align 8
  %8 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %4, align 8
  %13 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %11, i32* %15, align 4
  %16 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %4, align 8
  %17 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 2, i32* %18, align 4
  %19 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %4, align 8
  %20 = call i32 @ibmpex_send_message(%struct.ibmpex_bmc_data* %19)
  %21 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %4, align 8
  %22 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %21, i32 0, i32 3
  %23 = call i32 @wait_for_completion(i32* %22)
  %24 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %4, align 8
  %25 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %4, align 8
  %30 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %2
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ibmpex_send_message(%struct.ibmpex_bmc_data*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
