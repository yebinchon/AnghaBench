; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_mac_addr_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_mac_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.be_adapter = type { i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sockaddr = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MAC address changed to %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"MAC address change to %pM failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @be_mac_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mac_addr_set(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.be_adapter* %16, %struct.be_adapter** %6, align 8
  %17 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.sockaddr*
  store %struct.sockaddr* %22, %struct.sockaddr** %8, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @is_valid_ether_addr(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @EADDRNOTAVAIL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %114

40:                                               ; preds = %2
  %41 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = call i32 @be_cmd_pmac_add(%struct.be_adapter* %41, i32* %45, i32 %48, i64* %52, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %40
  %57 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %13, align 8
  %62 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %71 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %72 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @be_cmd_pmac_del(%struct.be_adapter* %70, i32 %73, i64 %74, i32 0)
  br label %76

76:                                               ; preds = %69, %56
  br label %77

77:                                               ; preds = %76, %40
  %78 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @be_cmd_get_active_mac(%struct.be_adapter* %78, i64 %79, i32* %26)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %107

84:                                               ; preds = %77
  %85 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %86 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i64 @memcmp(i64 %87, i32* %26, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @EPERM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %107

94:                                               ; preds = %84
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %99 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %97, i64 %100, i32 %103)
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = call i32 @dev_info(%struct.device* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %26)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %114

107:                                              ; preds = %91, %83
  %108 = load %struct.device*, %struct.device** %7, align 8
  %109 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %110 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @dev_warn(%struct.device* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %114

114:                                              ; preds = %107, %94, %37
  %115 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @is_valid_ether_addr(i64) #1

declare dso_local i32 @be_cmd_pmac_add(%struct.be_adapter*, i32*, i32, i64*, i32) #1

declare dso_local i32 @be_cmd_pmac_del(%struct.be_adapter*, i32, i64, i32) #1

declare dso_local i32 @be_cmd_get_active_mac(%struct.be_adapter*, i64, i32*) #1

declare dso_local i64 @memcmp(i64, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
