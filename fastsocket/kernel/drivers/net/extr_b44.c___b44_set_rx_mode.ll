; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.b44 = type { i32 }

@B44_RXCONFIG = common dso_local global i32 0, align 4
@RXCONFIG_PROMISC = common dso_local global i32 0, align 4
@RXCONFIG_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RXCONFIG_CAM_ABSENT = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@B44_MCAST_TABLE_SIZE = common dso_local global i64 0, align 8
@B44_CAM_CTRL = common dso_local global i32 0, align 4
@CAM_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__b44_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__b44_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.b44*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.b44* @netdev_priv(%struct.net_device* %7)
  store %struct.b44* %8, %struct.b44** %3, align 8
  %9 = load %struct.b44*, %struct.b44** %3, align 8
  %10 = load i32, i32* @B44_RXCONFIG, align 4
  %11 = call i32 @br32(%struct.b44* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @RXCONFIG_PROMISC, align 4
  %13 = load i32, i32* @RXCONFIG_ALLMULTI, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @RXCONFIG_CAM_ABSENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24, %1
  %30 = load i32, i32* @RXCONFIG_PROMISC, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.b44*, %struct.b44** %3, align 8
  %34 = load i32, i32* @B44_RXCONFIG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @bw32(%struct.b44* %33, i32 %34, i32 %35)
  br label %87

37:                                               ; preds = %24
  %38 = bitcast [6 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %38, i8 0, i64 6, i1 false)
  store i32 1, i32* %6, align 4
  %39 = load %struct.b44*, %struct.b44** %3, align 8
  %40 = call i32 @__b44_set_mac_addr(%struct.b44* %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IFF_ALLMULTI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @B44_MCAST_TABLE_SIZE, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47, %37
  %54 = load i32, i32* @RXCONFIG_ALLMULTI, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %47
  %58 = load %struct.b44*, %struct.b44** %3, align 8
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @__b44_load_mcast(%struct.b44* %58, %struct.net_device* %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %70, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 64
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.b44*, %struct.b44** %3, align 8
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @__b44_cam_write(%struct.b44* %66, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %62

73:                                               ; preds = %62
  %74 = load %struct.b44*, %struct.b44** %3, align 8
  %75 = load i32, i32* @B44_RXCONFIG, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @bw32(%struct.b44* %74, i32 %75, i32 %76)
  %78 = load %struct.b44*, %struct.b44** %3, align 8
  %79 = load i32, i32* @B44_CAM_CTRL, align 4
  %80 = call i32 @br32(%struct.b44* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load %struct.b44*, %struct.b44** %3, align 8
  %82 = load i32, i32* @B44_CAM_CTRL, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @CAM_CTRL_ENABLE, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @bw32(%struct.b44* %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %73, %29
  ret void
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @__b44_set_mac_addr(%struct.b44*) #1

declare dso_local i32 @__b44_load_mcast(%struct.b44*, %struct.net_device*) #1

declare dso_local i32 @__b44_cam_write(%struct.b44*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
