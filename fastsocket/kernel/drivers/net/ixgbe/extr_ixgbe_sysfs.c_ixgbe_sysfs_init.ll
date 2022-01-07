; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sysfs.c_ixgbe_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_sysfs.c_ixgbe_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_12__, %struct.TYPE_8__*, %struct.hwmon_buff }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_12__*)* }
%struct.TYPE_8__ = type { i32 }
%struct.hwmon_buff = type { i32, i32 }

@IXGBE_MAX_SENSORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IXGBE_HWMON_TYPE_CAUTION = common dso_local global i32 0, align 4
@IXGBE_HWMON_TYPE_LOC = common dso_local global i32 0, align 4
@IXGBE_HWMON_TYPE_TEMP = common dso_local global i32 0, align 4
@IXGBE_HWMON_TYPE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_sysfs_init(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.hwmon_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 2
  store %struct.hwmon_buff* %8, %struct.hwmon_buff** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %13, align 8
  %15 = icmp eq i64 (%struct.TYPE_12__*)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %115

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %22, align 8
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = call i64 %23(%struct.TYPE_12__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %115

29:                                               ; preds = %17
  %30 = load i32, i32* @IXGBE_MAX_SENSORS, align 4
  %31 = mul nsw i32 %30, 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @kcalloc(i32 %32, i32 4, i32 %33)
  %35 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %36 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %38 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %112

44:                                               ; preds = %29
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @hwmon_device_register(i32* %48)
  %50 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %51 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %53 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %59 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %6, align 4
  br label %112

62:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %108, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @IXGBE_MAX_SENSORS, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %63
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %108

81:                                               ; preds = %67
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @IXGBE_HWMON_TYPE_CAUTION, align 4
  %85 = call i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %82, i32 %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @IXGBE_HWMON_TYPE_LOC, align 4
  %89 = call i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @IXGBE_HWMON_TYPE_TEMP, align 4
  %95 = call i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %92, i32 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @IXGBE_HWMON_TYPE_MAX, align 4
  %101 = call i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %98, i32 %99, i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %81
  br label %112

107:                                              ; preds = %81
  br label %108

108:                                              ; preds = %107, %80
  %109 = load i32, i32* %4, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %63

111:                                              ; preds = %63
  br label %115

112:                                              ; preds = %106, %57, %41
  %113 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %114 = call i32 @ixgbe_sysfs_del_adapter(%struct.ixgbe_adapter* %113)
  br label %115

115:                                              ; preds = %112, %111, %28, %16
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @hwmon_device_register(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local i32 @ixgbe_sysfs_del_adapter(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
