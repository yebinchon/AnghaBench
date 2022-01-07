; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_sdla_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_sdla_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32, i32 }
%struct.frad_local = type { i32, i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @sdla_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.frad_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @CAP_NET_ADMIN, align 4
  %10 = call i32 @capable(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %97

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.frad_local* @netdev_priv(%struct.net_device* %16)
  store %struct.frad_local* %17, %struct.frad_local** %8, align 8
  %18 = load %struct.frad_local*, %struct.frad_local** %8, align 8
  %19 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %97

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %93 [
    i32 137, label %27
    i32 136, label %27
    i32 133, label %36
    i32 134, label %42
    i32 132, label %46
    i32 135, label %68
    i32 128, label %71
    i32 131, label %71
    i32 130, label %87
    i32 129, label %90
  ]

27:                                               ; preds = %25, %25
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 137
  %34 = zext i1 %33 to i32
  %35 = call i32 @sdla_config(%struct.net_device* %28, i32 %31, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %97

36:                                               ; preds = %25
  %37 = load %struct.frad_local*, %struct.frad_local** %8, align 8
  %38 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %41 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %96

42:                                               ; preds = %25
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %45 = call i32 @sdla_cpuspeed(%struct.net_device* %43, %struct.ifreq* %44)
  store i32 %45, i32* %4, align 4
  br label %97

46:                                               ; preds = %25
  %47 = load %struct.frad_local*, %struct.frad_local** %8, align 8
  %48 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EALREADY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %97

54:                                               ; preds = %46
  %55 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %56 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %64 [
    i32 138, label %58
  ]

58:                                               ; preds = %54
  %59 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %60 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOPROTOOPT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %97

67:                                               ; preds = %58
  br label %96

68:                                               ; preds = %25
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = call i32 @sdla_clear(%struct.net_device* %69)
  br label %96

71:                                               ; preds = %25, %25
  %72 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %73 = call i32 @capable(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @EPERM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %97

78:                                               ; preds = %71
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %81 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 131
  %85 = zext i1 %84 to i32
  %86 = call i32 @sdla_xfer(%struct.net_device* %79, i32 %82, i32 %85)
  store i32 %86, i32* %4, align 4
  br label %97

87:                                               ; preds = %25
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = call i32 @sdla_start(%struct.net_device* %88)
  br label %96

90:                                               ; preds = %25
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call i32 @sdla_stop(%struct.net_device* %91)
  br label %96

93:                                               ; preds = %25
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %90, %87, %68, %67, %36
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %93, %78, %75, %64, %51, %42, %27, %22, %12
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.frad_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sdla_config(%struct.net_device*, i32, i32) #1

declare dso_local i32 @sdla_cpuspeed(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @sdla_clear(%struct.net_device*) #1

declare dso_local i32 @sdla_xfer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @sdla_start(%struct.net_device*) #1

declare dso_local i32 @sdla_stop(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
