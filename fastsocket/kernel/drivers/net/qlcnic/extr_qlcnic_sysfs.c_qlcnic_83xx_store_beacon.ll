; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_store_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_store_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64 }

@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@__QLCNIC_LED_ENABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i8*, i64)* @qlcnic_83xx_store_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_store_beacon(%struct.qlcnic_adapter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlcnic_hardware_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 1
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  store %struct.qlcnic_hardware_context* %13, %struct.qlcnic_hardware_context** %8, align 8
  %14 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %91

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strict_strtoul(i8* %23, i32 2, i64* %9)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %91

29:                                               ; preds = %22
  %30 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %31 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %91

38:                                               ; preds = %29
  %39 = call i32 (...) @rtnl_lock()
  %40 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %41 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  %48 = call i64 @test_and_set_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = call i32 (...) @rtnl_unlock()
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %91

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter* %59, i32 1, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %70

63:                                               ; preds = %55
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter* %64, i32 0, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %76 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %79 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @__QLCNIC_LED_ENABLE, align 4
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %85 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %84, i32 0, i32 0
  %86 = call i32 @clear_bit(i32 %83, i32* %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = call i32 (...) @rtnl_unlock()
  %89 = load i64, i64* %7, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %50, %35, %26, %19
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qlcnic_83xx_config_led(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
