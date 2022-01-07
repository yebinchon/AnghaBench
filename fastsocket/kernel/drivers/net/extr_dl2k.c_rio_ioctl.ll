; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_dl2k.c_rio_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_dl2k.c_rio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.netdev_private = type { i32 }
%struct.mii_data = type { i32, i32, i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @rio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netdev_private*, align 8
  %10 = alloca %struct.mii_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %11)
  store %struct.netdev_private* %12, %struct.netdev_private** %9, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.mii_data*
  store %struct.mii_data* %15, %struct.mii_data** %10, align 8
  %16 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %51 [
    i32 131, label %20
    i32 130, label %21
    i32 129, label %25
    i32 128, label %34
  ]

20:                                               ; preds = %3
  br label %54

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  %24 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %54

25:                                               ; preds = %3
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  %29 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mii_read(%struct.net_device* %26, i32 %27, i32 %30)
  %32 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  %33 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  br label %54

34:                                               ; preds = %3
  %35 = load i32, i32* @CAP_NET_ADMIN, align 4
  %36 = call i32 @capable(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %55

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  %45 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  %48 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mii_write(%struct.net_device* %42, i32 %43, i32 %46, i32 %49)
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %41, %25, %21, %20
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51, %38
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mii_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
