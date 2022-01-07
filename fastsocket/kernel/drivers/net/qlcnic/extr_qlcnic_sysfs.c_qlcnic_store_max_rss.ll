; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_store_max_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_store_max_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qlcnic_adapter = type { i32, i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_MSI_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no msix or msi support, hence no rss\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"rss_ring valid range[1 - %d] in powers of 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"allocated 0x%x sds rings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qlcnic_store_max_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_store_max_rss(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlcnic_adapter*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.qlcnic_adapter* @dev_get_drvdata(%struct.device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %10, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 3
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %11, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %20 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %92

25:                                               ; preds = %4
  %26 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 2
  %29 = call i64 @test_and_set_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %92

34:                                               ; preds = %25
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strict_strtoul(i8* %35, i32 10, i64* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %81

41:                                               ; preds = %34
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @QLCNIC_MSI_ENABLED, align 4
  %46 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %41
  %51 = load %struct.net_device*, %struct.net_device** %11, align 8
  %52 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %81

55:                                               ; preds = %41
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %58 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  br label %81

64:                                               ; preds = %55
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @qlcnic_validate_max_rss(%struct.qlcnic_adapter* %65, i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.net_device*, %struct.net_device** %11, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %13, align 4
  br label %81

76:                                               ; preds = %64
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @qlcnic_set_max_rss(%struct.qlcnic_adapter* %77, i64 %78, i64 %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %76, %70, %61, %50, %38
  %82 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %84 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %83, i32 0, i32 2
  %85 = call i32 @clear_bit(i32 %82, i32* %84)
  %86 = load %struct.net_device*, %struct.net_device** %11, align 8
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @netdev_info(%struct.net_device* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %81, %31, %22
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.qlcnic_adapter* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @qlcnic_validate_max_rss(%struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @qlcnic_set_max_rss(%struct.qlcnic_adapter*, i64, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
