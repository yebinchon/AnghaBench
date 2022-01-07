; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_store_fwdump_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_store_fwdump_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.netxen_adapter = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device }

@FW_DUMP_LEVELS = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Driver mask changed to: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid Dump Level: 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @netxen_store_fwdump_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @netxen_store_fwdump_level(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.netxen_adapter*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.netxen_adapter* @dev_get_drvdata(%struct.device* %13)
  store %struct.netxen_adapter* %14, %struct.netxen_adapter** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @simple_strtoul(i8* %15, i32* null, i32 16)
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %48, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i64*, i64** @FW_DUMP_LEVELS, align 8
  %20 = call i32 @ARRAY_SIZE(i64* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load i64, i64* %11, align 8
  %24 = load i64*, i64** @FW_DUMP_LEVELS, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %23, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = call i32 (...) @rtnl_lock()
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.netxen_adapter*, %struct.netxen_adapter** %12, align 8
  %34 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = call i32 (...) @rtnl_unlock()
  %37 = load %struct.netxen_adapter*, %struct.netxen_adapter** %12, align 8
  %38 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.netxen_adapter*, %struct.netxen_adapter** %12, align 8
  %42 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dev_info(%struct.device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %5, align 8
  br label %57

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @dev_info(%struct.device* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %51, %30
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local %struct.netxen_adapter* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
