; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i8 }
%struct.net_device_context = type { %struct.hv_device* }
%struct.hv_device = type { i32 }
%struct.sockaddr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @netvsc_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_set_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.hv_device*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %14)
  store %struct.net_device_context* %15, %struct.net_device_context** %6, align 8
  %16 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %17 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %16, i32 0, i32 0
  %18 = load %struct.hv_device*, %struct.hv_device** %17, align 8
  store %struct.hv_device* %18, %struct.hv_device** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %8, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @memcpy(i8* %24, i8* %27, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i8, i8* %31, align 8
  store i8 %32, i8* %11, align 1
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @eth_mac_addr(%struct.net_device* %33, i8* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %59

40:                                               ; preds = %2
  %41 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rndis_filter_set_device_mac(%struct.hv_device* %41, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i8* %51, i8* %24, i32 %52)
  %54 = load i8, i8* %11, align 1
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  store i8 %54, i8* %56, align 8
  br label %57

57:                                               ; preds = %48, %40
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %59

59:                                               ; preds = %57, %38
  %60 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @eth_mac_addr(%struct.net_device*, i8*) #1

declare dso_local i32 @rndis_filter_set_device_mac(%struct.hv_device*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
