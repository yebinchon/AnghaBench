; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_set_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_set_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_flash = type { i8* }
%struct.firmware = type { i32, i32 }
%struct.adapter = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"loaded firmware %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_flash*)* @set_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_flash(%struct.net_device* %0, %struct.ethtool_flash* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_flash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_flash* %1, %struct.ethtool_flash** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.adapter* @netdev2adap(%struct.net_device* %9)
  store %struct.adapter* %10, %struct.adapter** %8, align 8
  %11 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 7
  store i8 0, i8* %14, align 1
  %15 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.adapter*, %struct.adapter** %8, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @request_firmware(%struct.firmware** %7, i8* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %2
  %27 = load %struct.adapter*, %struct.adapter** %8, align 8
  %28 = load %struct.firmware*, %struct.firmware** %7, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.firmware*, %struct.firmware** %7, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @t4_load_fw(%struct.adapter* %27, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.firmware*, %struct.firmware** %7, align 8
  %36 = call i32 @release_firmware(%struct.firmware* %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %26
  %40 = load %struct.adapter*, %struct.adapter** %8, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ethtool_flash*, %struct.ethtool_flash** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_flash, %struct.ethtool_flash* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @dev_info(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %39, %26
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @t4_load_fw(%struct.adapter*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
