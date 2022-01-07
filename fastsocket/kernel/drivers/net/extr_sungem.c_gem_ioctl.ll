; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.gem = type { i32, i32, i32, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @gem_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gem*, align 8
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.gem* @netdev_priv(%struct.net_device* %11)
  store %struct.gem* %12, %struct.gem** %7, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %8, align 8
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.gem*, %struct.gem** %7, align 8
  %18 = getelementptr inbounds %struct.gem, %struct.gem* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.gem*, %struct.gem** %7, align 8
  %21 = getelementptr inbounds %struct.gem, %struct.gem* %20, i32 0, i32 2
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.gem*, %struct.gem** %7, align 8
  %25 = call i32 @gem_get_cell(%struct.gem* %24)
  %26 = load %struct.gem*, %struct.gem** %7, align 8
  %27 = getelementptr inbounds %struct.gem, %struct.gem* %26, i32 0, i32 2
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %82 [
    i32 130, label %31
    i32 129, label %37
    i32 128, label %59
  ]

31:                                               ; preds = %3
  %32 = load %struct.gem*, %struct.gem** %7, align 8
  %33 = getelementptr inbounds %struct.gem, %struct.gem* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %36 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %3, %31
  %38 = load %struct.gem*, %struct.gem** %7, align 8
  %39 = getelementptr inbounds %struct.gem, %struct.gem* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %58

45:                                               ; preds = %37
  %46 = load %struct.gem*, %struct.gem** %7, align 8
  %47 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %48 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 31
  %51 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %52 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 31
  %55 = call i32 @__phy_read(%struct.gem* %46, i32 %50, i32 %54)
  %56 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %57 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %45, %42
  br label %82

59:                                               ; preds = %3
  %60 = load %struct.gem*, %struct.gem** %7, align 8
  %61 = getelementptr inbounds %struct.gem, %struct.gem* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %81

67:                                               ; preds = %59
  %68 = load %struct.gem*, %struct.gem** %7, align 8
  %69 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %70 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 31
  %73 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %74 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 31
  %77 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %78 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @__phy_write(%struct.gem* %68, i32 %72, i32 %76, i32 %79)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %67, %64
  br label %82

82:                                               ; preds = %3, %81, %58
  %83 = load %struct.gem*, %struct.gem** %7, align 8
  %84 = getelementptr inbounds %struct.gem, %struct.gem* %83, i32 0, i32 2
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.gem*, %struct.gem** %7, align 8
  %88 = call i32 @gem_put_cell(%struct.gem* %87)
  %89 = load %struct.gem*, %struct.gem** %7, align 8
  %90 = getelementptr inbounds %struct.gem, %struct.gem* %89, i32 0, i32 2
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.gem*, %struct.gem** %7, align 8
  %94 = getelementptr inbounds %struct.gem, %struct.gem* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gem_get_cell(%struct.gem*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__phy_read(%struct.gem*, i32, i32) #1

declare dso_local i32 @__phy_write(%struct.gem*, i32, i32, i32) #1

declare dso_local i32 @gem_put_cell(%struct.gem*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
