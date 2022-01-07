; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_bmc_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_bmc_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ibmpex_bmc_data* }
%struct.ibmpex_bmc_data = type { i32, %struct.ibmpex_bmc_data*, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }

@sensor_dev_attr_reset_high_low = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@sensor_dev_attr_name = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PEX_NUM_SENSOR_FUNCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmpex_bmc_data*)* @ibmpex_bmc_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmpex_bmc_delete(%struct.ibmpex_bmc_data* %0) #0 {
  %2 = alloca %struct.ibmpex_bmc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ibmpex_bmc_data* %0, %struct.ibmpex_bmc_data** %2, align 8
  %5 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %6 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @device_remove_file(i32 %7, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sensor_dev_attr_reset_high_low, i32 0, i32 0))
  %9 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %10 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @device_remove_file(i32 %11, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sensor_dev_attr_name, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %79, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %16 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %75, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PEX_NUM_SENSOR_FUNCS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %20
  %25 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %26 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %25, i32 0, i32 1
  %27 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %27, i64 %29
  %31 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %30, i32 0, i32 6
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %38, align 8
  %40 = icmp ne %struct.ibmpex_bmc_data* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %24
  br label %75

42:                                               ; preds = %24
  %43 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %44 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %47 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %46, i32 0, i32 1
  %48 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %51, i32 0, i32 6
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @device_remove_file(i32 %45, %struct.TYPE_10__* %57)
  %59 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %60 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %59, i32 0, i32 1
  %61 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %61, i64 %63
  %65 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %64, i32 0, i32 6
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %72, align 8
  %74 = call i32 @kfree(%struct.ibmpex_bmc_data* %73)
  br label %75

75:                                               ; preds = %42, %41
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %20

78:                                               ; preds = %20
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %13

82:                                               ; preds = %13
  %83 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %84 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %83, i32 0, i32 5
  %85 = call i32 @list_del(i32* %84)
  %86 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %87 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_set_drvdata(i32 %88, i32* null)
  %90 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %91 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @hwmon_device_unregister(i32 %92)
  %94 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %95 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ipmi_destroy_user(i32 %96)
  %98 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %99 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %98, i32 0, i32 1
  %100 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %99, align 8
  %101 = call i32 @kfree(%struct.ibmpex_bmc_data* %100)
  %102 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %103 = call i32 @kfree(%struct.ibmpex_bmc_data* %102)
  ret void
}

declare dso_local i32 @device_remove_file(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.ibmpex_bmc_data*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32, i32*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @ipmi_destroy_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
