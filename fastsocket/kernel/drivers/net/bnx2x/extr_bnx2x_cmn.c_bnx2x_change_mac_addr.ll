; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_change_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_change_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Requested MAC address is not valid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Can't configure non-zero address on iSCSI or FCoE functions in MF-SD mode\0A\00", align 1
@NET_ADDR_RANDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_change_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sockaddr*
  store %struct.sockaddr* %10, %struct.sockaddr** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %11)
  store %struct.bnx2x* %12, %struct.bnx2x** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bnx2x_is_valid_ether_addr(%struct.bnx2x* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %2
  %24 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %25 = call i64 @IS_MF_STORAGE_SD(%struct.bnx2x* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %29 = call i64 @IS_MF_FCOE_AFEX(%struct.bnx2x* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27, %23
  %32 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @is_zero_ether_addr(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %78

41:                                               ; preds = %31, %27
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i64 @netif_running(%struct.net_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %47 = call i32 @bnx2x_set_eth_mac(%struct.bnx2x* %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %78

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* @NET_ADDR_RANDOM, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %64 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32 %62, i32 %65, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i64 @netif_running(%struct.net_device* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %53
  %74 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %75 = call i32 @bnx2x_set_eth_mac(%struct.bnx2x* %74, i32 1)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %53
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %50, %37, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2x_is_valid_ether_addr(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i64 @IS_MF_STORAGE_SD(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_FCOE_AFEX(%struct.bnx2x*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_set_eth_mac(%struct.bnx2x*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
