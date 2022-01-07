; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.pasemi_mac = type { i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAS_MAC_CFG_ADR1 = common dso_local global i32 0, align 4
@PAS_MAC_CFG_ADR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @pasemi_mac_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_mac_set_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pasemi_mac*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.pasemi_mac* @netdev_priv(%struct.net_device* %10)
  store %struct.pasemi_mac* %11, %struct.pasemi_mac** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sockaddr*
  store %struct.sockaddr* %13, %struct.sockaddr** %7, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @is_valid_ether_addr(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %90

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memcpy(i32* %25, i32 %28, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 24
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %38, %44
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %45, %51
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %52, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %60 = load i32, i32* @PAS_MAC_CFG_ADR1, align 4
  %61 = call i32 @read_mac_reg(%struct.pasemi_mac* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, -65536
  store i32 %63, i32* %9, align 4
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %69, %74
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %79 = call i32 @pasemi_mac_intf_disable(%struct.pasemi_mac* %78)
  %80 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %81 = load i32, i32* @PAS_MAC_CFG_ADR0, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @write_mac_reg(%struct.pasemi_mac* %80, i32 %81, i32 %82)
  %84 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %85 = load i32, i32* @PAS_MAC_CFG_ADR1, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @write_mac_reg(%struct.pasemi_mac* %84, i32 %85, i32 %86)
  %88 = load %struct.pasemi_mac*, %struct.pasemi_mac** %6, align 8
  %89 = call i32 @pasemi_mac_intf_enable(%struct.pasemi_mac* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %22, %19
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.pasemi_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @read_mac_reg(%struct.pasemi_mac*, i32) #1

declare dso_local i32 @pasemi_mac_intf_disable(%struct.pasemi_mac*) #1

declare dso_local i32 @write_mac_reg(%struct.pasemi_mac*, i32, i32) #1

declare dso_local i32 @pasemi_mac_intf_enable(%struct.pasemi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
