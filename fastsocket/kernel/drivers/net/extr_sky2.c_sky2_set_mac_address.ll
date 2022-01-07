; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i64 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@B2_MAC_1 = common dso_local global i64 0, align 8
@B2_MAC_2 = common dso_local global i64 0, align 8
@GM_SRC_ADDR_2L = common dso_local global i32 0, align 4
@GM_SRC_ADDR_1L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @sky2_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sky2_port*, align 8
  %7 = alloca %struct.sky2_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %10)
  store %struct.sky2_port* %11, %struct.sky2_port** %6, align 8
  %12 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %13 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %12, i32 0, i32 1
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %13, align 8
  store %struct.sky2_hw* %14, %struct.sky2_hw** %7, align 8
  %15 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %16 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %9, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @is_valid_ether_addr(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EADDRNOTAVAIL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %79

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32 %31, i32 %34, i32 %35)
  %37 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %38 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @B2_MAC_1, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = mul i32 %42, 8
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy_toio(i64 %45, i32 %48, i32 %49)
  %51 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %52 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @B2_MAC_2, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = mul i32 %56, 8
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @memcpy_toio(i64 %59, i32 %62, i32 %63)
  %65 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @GM_SRC_ADDR_2L, align 4
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @gma_set_addr(%struct.sky2_hw* %65, i32 %66, i32 %67, i32 %70)
  %72 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @GM_SRC_ADDR_1L, align 4
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @gma_set_addr(%struct.sky2_hw* %72, i32 %73, i32 %74, i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %28, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32, i32) #1

declare dso_local i32 @gma_set_addr(%struct.sky2_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
