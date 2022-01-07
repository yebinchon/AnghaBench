; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_kingsun-sir.c_kingsun_net_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_kingsun-sir.c_kingsun_net_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.if_irda_req = type { i32 }
%struct.kingsun_cb = type { i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @kingsun_net_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kingsun_net_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.if_irda_req*, align 8
  %9 = alloca %struct.kingsun_cb*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %12 = bitcast %struct.ifreq* %11 to %struct.if_irda_req*
  store %struct.if_irda_req* %12, %struct.if_irda_req** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.kingsun_cb* @netdev_priv(%struct.net_device* %13)
  store %struct.kingsun_cb* %14, %struct.kingsun_cb** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %59 [
    i32 129, label %16
    i32 128, label %33
    i32 130, label %53
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @CAP_NET_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %16
  %24 = load %struct.kingsun_cb*, %struct.kingsun_cb** %9, align 8
  %25 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netif_device_present(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %23
  br label %62

33:                                               ; preds = %3
  %34 = load i32, i32* @CAP_NET_ADMIN, align 4
  %35 = call i32 @capable(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %64

40:                                               ; preds = %33
  %41 = load %struct.kingsun_cb*, %struct.kingsun_cb** %9, align 8
  %42 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netif_running(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.kingsun_cb*, %struct.kingsun_cb** %9, align 8
  %48 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @irda_device_set_media_busy(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  br label %62

53:                                               ; preds = %3
  %54 = load %struct.kingsun_cb*, %struct.kingsun_cb** %9, align 8
  %55 = getelementptr inbounds %struct.kingsun_cb, %struct.kingsun_cb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.if_irda_req*, %struct.if_irda_req** %8, align 8
  %58 = getelementptr inbounds %struct.if_irda_req, %struct.if_irda_req* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %62

59:                                               ; preds = %3
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %53, %52, %32
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %37, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.kingsun_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @netif_device_present(i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @irda_device_set_media_busy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
