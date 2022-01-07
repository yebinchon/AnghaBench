; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, %struct.TYPE_2__, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i8*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bad MAC address %pM.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_read_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_read_mac_addr(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 3
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @NX_IS_REVISION_P3(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %23 = call i64 @netxen_p3_get_mac_addr(%struct.netxen_adapter* %22, i32* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %93

28:                                               ; preds = %21
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %31 = call i64 @netxen_get_flash_mac_addr(%struct.netxen_adapter* %30, i32* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %93

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %28
  %38 = bitcast i32* %6 to i8*
  store i8* %38, i8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %56, %37
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %49, i8* %55, align 1
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32 %62, i8* %65, i32 %68)
  %70 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32 %72, i8* %75, i32 %78)
  %80 = load %struct.net_device*, %struct.net_device** %7, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @is_valid_ether_addr(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %59
  %86 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @dev_warn(i32* %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %85, %59
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %33, %25
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i64 @netxen_p3_get_mac_addr(%struct.netxen_adapter*, i32*) #1

declare dso_local i64 @netxen_get_flash_mac_addr(%struct.netxen_adapter*, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
