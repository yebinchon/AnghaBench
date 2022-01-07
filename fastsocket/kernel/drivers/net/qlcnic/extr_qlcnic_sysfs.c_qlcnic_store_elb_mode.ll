; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_store_elb_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_store_elb_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qlcnic_adapter = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@__QLCNIC_ELB_INPROGRESS = common dso_local global i32 0, align 4
@QLCNIC_ELB_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qlcnic_store_elb_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qlcnic_store_elb_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlcnic_adapter*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.qlcnic_adapter* @dev_get_drvdata(%struct.device* %13)
  store %struct.qlcnic_adapter* %14, %struct.qlcnic_adapter** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strict_strtoul(i8* %15, i32 2, i64* %11)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %50

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* @__QLCNIC_ELB_INPROGRESS, align 4
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = call i64 @test_and_set_bit(i32 %23, i32* %25)
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %5, align 8
  br label %50

30:                                               ; preds = %21
  %31 = call i32 (...) @rtnl_lock()
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @QLCNIC_ELB_MODE, align 4
  %36 = call i32 @qlcnic_loopback_test(i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = call i32 (...) @rtnl_unlock()
  %38 = load i32, i32* @__QLCNIC_ELB_INPROGRESS, align 4
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %10, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 0
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %30
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %47, %28, %18
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local %struct.qlcnic_adapter* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @qlcnic_loopback_test(i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
