; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.tg3 = type { i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENABLE_ASF = common dso_local global i32 0, align 4
@MAC_ADDR_0_HIGH = common dso_local global i32 0, align 4
@MAC_ADDR_0_LOW = common dso_local global i32 0, align 4
@MAC_ADDR_1_HIGH = common dso_local global i32 0, align 4
@MAC_ADDR_1_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @tg3_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_set_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.tg3* @netdev_priv(%struct.net_device* %14)
  store %struct.tg3* %15, %struct.tg3** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.sockaddr*
  store %struct.sockaddr* %17, %struct.sockaddr** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @is_valid_ether_addr(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EADDRNOTAVAIL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %81

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32 %29, i32 %32, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netif_running(%struct.net_device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %81

41:                                               ; preds = %26
  %42 = load %struct.tg3*, %struct.tg3** %6, align 8
  %43 = load i32, i32* @ENABLE_ASF, align 4
  %44 = call i64 @tg3_flag(%struct.tg3* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load i32, i32* @MAC_ADDR_0_HIGH, align 4
  %48 = call i64 @tr32(i32 %47)
  store i64 %48, i64* %10, align 8
  %49 = load i32, i32* @MAC_ADDR_0_LOW, align 4
  %50 = call i64 @tr32(i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i32, i32* @MAC_ADDR_1_HIGH, align 4
  %52 = call i64 @tr32(i32 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i32, i32* @MAC_ADDR_1_LOW, align 4
  %54 = call i64 @tr32(i32 %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %46
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %46
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %13, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65, %62
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %65, %58
  br label %70

70:                                               ; preds = %69, %41
  %71 = load %struct.tg3*, %struct.tg3** %6, align 8
  %72 = getelementptr inbounds %struct.tg3, %struct.tg3* %71, i32 0, i32 0
  %73 = call i32 @spin_lock_bh(i32* %72)
  %74 = load %struct.tg3*, %struct.tg3** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @__tg3_set_mac_addr(%struct.tg3* %74, i32 %75)
  %77 = load %struct.tg3*, %struct.tg3** %6, align 8
  %78 = getelementptr inbounds %struct.tg3, %struct.tg3* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %70, %40, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tr32(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__tg3_set_mac_addr(%struct.tg3*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
