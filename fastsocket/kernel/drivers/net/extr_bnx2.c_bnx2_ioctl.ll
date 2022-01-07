; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.bnx2 = type { i32, i32, i32 }

@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @bnx2_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.bnx2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %12)
  store %struct.mii_ioctl_data* %13, %struct.mii_ioctl_data** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.bnx2* @netdev_priv(%struct.net_device* %14)
  store %struct.bnx2* %15, %struct.bnx2** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %91 [
    i32 130, label %17
    i32 129, label %23
    i32 128, label %57
  ]

17:                                               ; preds = %3
  %18 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %19 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %22 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %3, %17
  %24 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %95

33:                                               ; preds = %23
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @netif_running(%struct.net_device* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %95

40:                                               ; preds = %33
  %41 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %45 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %46 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 31
  %49 = call i32 @bnx2_read_phy(%struct.bnx2* %44, i32 %48, i32* %11)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %51 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %55 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %95

57:                                               ; preds = %3
  %58 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %59 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %95

67:                                               ; preds = %57
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @netif_running(%struct.net_device* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %95

74:                                               ; preds = %67
  %75 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %76 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %75, i32 0, i32 1
  %77 = call i32 @spin_lock_bh(i32* %76)
  %78 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %79 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %80 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 31
  %83 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %84 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bnx2_write_phy(%struct.bnx2* %78, i32 %82, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %88 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %87, i32 0, i32 1
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %95

91:                                               ; preds = %3
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %74, %71, %64, %40, %37, %30
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2_write_phy(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
