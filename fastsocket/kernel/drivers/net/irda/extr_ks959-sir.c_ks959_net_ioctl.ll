; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_net_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_ks959-sir.c_ks959_net_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.if_irda_req = type { i32, i32 }
%struct.ks959_cb = type { i32, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ks959_net_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks959_net_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.if_irda_req*, align 8
  %9 = alloca %struct.ks959_cb*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %12 = bitcast %struct.ifreq* %11 to %struct.if_irda_req*
  store %struct.if_irda_req* %12, %struct.if_irda_req** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ks959_cb* @netdev_priv(%struct.net_device* %13)
  store %struct.ks959_cb* %14, %struct.ks959_cb** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %62 [
    i32 129, label %16
    i32 128, label %36
    i32 130, label %56
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
  br label %67

23:                                               ; preds = %16
  %24 = load %struct.ks959_cb*, %struct.ks959_cb** %9, align 8
  %25 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netif_device_present(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.ks959_cb*, %struct.ks959_cb** %9, align 8
  %31 = load %struct.if_irda_req*, %struct.if_irda_req** %8, align 8
  %32 = getelementptr inbounds %struct.if_irda_req, %struct.if_irda_req* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ks959_change_speed(%struct.ks959_cb* %30, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %23
  br label %65

36:                                               ; preds = %3
  %37 = load i32, i32* @CAP_NET_ADMIN, align 4
  %38 = call i32 @capable(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %67

43:                                               ; preds = %36
  %44 = load %struct.ks959_cb*, %struct.ks959_cb** %9, align 8
  %45 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netif_running(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.ks959_cb*, %struct.ks959_cb** %9, align 8
  %51 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @irda_device_set_media_busy(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  br label %65

56:                                               ; preds = %3
  %57 = load %struct.ks959_cb*, %struct.ks959_cb** %9, align 8
  %58 = getelementptr inbounds %struct.ks959_cb, %struct.ks959_cb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.if_irda_req*, %struct.if_irda_req** %8, align 8
  %61 = getelementptr inbounds %struct.if_irda_req, %struct.if_irda_req* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %65

62:                                               ; preds = %3
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62, %56, %55, %35
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %40, %29, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.ks959_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @netif_device_present(i32) #1

declare dso_local i32 @ks959_change_speed(%struct.ks959_cb*, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @irda_device_set_media_busy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
