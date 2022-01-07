; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_check_dev_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_check_dev_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i32, %struct.TYPE_4__*, %struct.net_device_ops* }
%struct.TYPE_4__ = type { i64 (%struct.net_device*)* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, %struct.ifreq*, i32)* }
%struct.net_device.0 = type opaque
%struct.ifreq = type opaque
%struct.ifreq.1 = type { i32 }
%struct.mii_ioctl_data = type { i32, i32 }

@BMSR_LSTATUS = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCGMIIPHY = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@SIOCGMIIREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.net_device*, i32)* @bond_check_dev_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_check_dev_link(%struct.bonding* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bonding*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device_ops*, align 8
  %9 = alloca i32 (%struct.net_device*, %struct.ifreq.1*, i32)*, align 8
  %10 = alloca %struct.ifreq.1, align 4
  %11 = alloca %struct.mii_ioctl_data*, align 8
  %12 = alloca i64, align 8
  store %struct.bonding* %0, %struct.bonding** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 2
  %15 = load %struct.net_device_ops*, %struct.net_device_ops** %14, align 8
  store %struct.net_device_ops* %15, %struct.net_device_ops** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call i32 @netif_running(%struct.net_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %110

23:                                               ; preds = %18, %3
  %24 = load %struct.bonding*, %struct.bonding** %5, align 8
  %25 = getelementptr inbounds %struct.bonding, %struct.bonding* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i64 @netif_carrier_ok(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @BMSR_LSTATUS, align 4
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  store i32 %37, i32* %4, align 4
  br label %110

38:                                               ; preds = %23
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %47, align 8
  %49 = icmp ne i64 (%struct.net_device*)* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call i64 %55(%struct.net_device* %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @BMSR_LSTATUS, align 4
  br label %63

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  store i32 %64, i32* %4, align 4
  br label %110

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %68 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %67, i32 0, i32 0
  %69 = load i32 (%struct.net_device.0*, %struct.ifreq*, i32)*, i32 (%struct.net_device.0*, %struct.ifreq*, i32)** %68, align 8
  %70 = bitcast i32 (%struct.net_device.0*, %struct.ifreq*, i32)* %69 to i32 (%struct.net_device*, %struct.ifreq.1*, i32)*
  store i32 (%struct.net_device*, %struct.ifreq.1*, i32)* %70, i32 (%struct.net_device*, %struct.ifreq.1*, i32)** %9, align 8
  %71 = load i32 (%struct.net_device*, %struct.ifreq.1*, i32)*, i32 (%struct.net_device*, %struct.ifreq.1*, i32)** %9, align 8
  %72 = icmp ne i32 (%struct.net_device*, %struct.ifreq.1*, i32)* %71, null
  br i1 %72, label %73, label %102

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IFNAMSIZ, align 4
  %80 = call i32 @strncpy(i32 %75, i32 %78, i32 %79)
  %81 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq.1* %10)
  store %struct.mii_ioctl_data* %81, %struct.mii_ioctl_data** %11, align 8
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = load i32, i32* @SIOCGMIIPHY, align 4
  %84 = call i64 @IOCTL(%struct.net_device* %82, %struct.ifreq.1* %10, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %73
  %87 = load i32, i32* @MII_BMSR, align 4
  %88 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %11, align 8
  %89 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = load i32, i32* @SIOCGMIIREG, align 4
  %92 = call i64 @IOCTL(%struct.net_device* %90, %struct.ifreq.1* %10, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %11, align 8
  %96 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BMSR_LSTATUS, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %4, align 4
  br label %110

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101, %66
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @BMSR_LSTATUS, align 4
  br label %108

108:                                              ; preds = %106, %105
  %109 = phi i32 [ -1, %105 ], [ %107, %106 ]
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %94, %63, %36, %22
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq.1*) #1

declare dso_local i64 @IOCTL(%struct.net_device*, %struct.ifreq.1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
