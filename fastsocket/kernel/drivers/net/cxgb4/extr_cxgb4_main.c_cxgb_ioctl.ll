; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_cxgb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.port_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @cxgb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.port_info*, align 8
  %13 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.port_info* @netdev_priv(%struct.net_device* %14)
  store %struct.port_info* %15, %struct.port_info** %12, align 8
  %16 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to %struct.mii_ioctl_data*
  store %struct.mii_ioctl_data* %18, %struct.mii_ioctl_data** %13, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %102 [
    i32 130, label %20
    i32 129, label %34
    i32 128, label %34
  ]

20:                                               ; preds = %3
  %21 = load %struct.port_info*, %struct.port_info** %12, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %107

28:                                               ; preds = %20
  %29 = load %struct.port_info*, %struct.port_info** %12, align 8
  %30 = getelementptr inbounds %struct.port_info, %struct.port_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %33 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %105

34:                                               ; preds = %3, %3
  %35 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %36 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mdio_phy_id_is_c45(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %42 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mdio_phy_id_prtad(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %46 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mdio_phy_id_devad(i32 %47)
  store i32 %48, i32* %11, align 4
  br label %66

49:                                               ; preds = %34
  %50 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %51 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 32
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %56 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %58 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %59 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 31
  store i32 %61, i32* %59, align 4
  br label %65

62:                                               ; preds = %49
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %107

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.port_info*, %struct.port_info** %12, align 8
  %68 = getelementptr inbounds %struct.port_info, %struct.port_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 129
  br i1 %73, label %74, label %87

74:                                               ; preds = %66
  %75 = load %struct.port_info*, %struct.port_info** %12, align 8
  %76 = getelementptr inbounds %struct.port_info, %struct.port_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %82 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %85 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %84, i32 0, i32 3
  %86 = call i32 @t4_mdio_rd(%struct.TYPE_3__* %77, i32 %78, i32 %79, i32 %80, i32 %83, i32* %85)
  store i32 %86, i32* %9, align 4
  br label %101

87:                                               ; preds = %66
  %88 = load %struct.port_info*, %struct.port_info** %12, align 8
  %89 = getelementptr inbounds %struct.port_info, %struct.port_info* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %95 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %98 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @t4_mdio_wr(%struct.TYPE_3__* %90, i32 %91, i32 %92, i32 %93, i32 %96, i32 %99)
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %87, %74
  br label %105

102:                                              ; preds = %3
  %103 = load i32, i32* @EOPNOTSUPP, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %107

105:                                              ; preds = %101, %28
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %102, %62, %25
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdio_phy_id_is_c45(i32) #1

declare dso_local i32 @mdio_phy_id_prtad(i32) #1

declare dso_local i32 @mdio_phy_id_devad(i32) #1

declare dso_local i32 @t4_mdio_rd(%struct.TYPE_3__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @t4_mdio_wr(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
