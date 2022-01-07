; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_dump_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32, i64 }
%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i64, i32*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"FW Dump not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Dump not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"extracted the FW dump Successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*, i8*)* @qlcnic_get_dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_dump_data(%struct.net_device* %0, %struct.ethtool_dump* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_dump*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.qlcnic_adapter*, align 8
  %13 = alloca %struct.qlcnic_fw_dump*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %12, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %19, %struct.qlcnic_fw_dump** %13, align 8
  %20 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %21 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %105

29:                                               ; preds = %3
  %30 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %31 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netdev_info(%struct.net_device* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %105

39:                                               ; preds = %29
  %40 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %41 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %46 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = bitcast %struct.TYPE_4__* %47 to i32*
  store i32* %48, i32** %10, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %65, %39
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 4
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %10, align 8
  %61 = load i32, i32* %59, align 4
  %62 = call i32 @cpu_to_le32(i32 %61)
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %51

68:                                               ; preds = %51
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %69, i64 %71
  %73 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %74 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %77 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @memcpy(i8* %72, i32* %75, i64 %78)
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %83 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %87 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %89 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ethtool_dump*, %struct.ethtool_dump** %6, align 8
  %94 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %96 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @vfree(i32* %97)
  %99 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %100 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %99, i32 0, i32 1
  store i32* null, i32** %100, align 8
  %101 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %13, align 8
  %102 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = call i32 @netdev_info(%struct.net_device* %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %68, %34, %24
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
