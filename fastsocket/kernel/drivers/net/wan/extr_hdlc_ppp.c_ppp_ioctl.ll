; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_ppp.c_ppp_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_ppp.c_ppp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32* }
%struct.ifreq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.net_device*, i32, i32)*, i32* }
%struct.ppp = type { i32, i32, i32, i32, i32, i32 }

@proto = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENCODING_NRZ = common dso_local global i32 0, align 4
@PARITY_CRC16_PR1_CCITT = common dso_local global i32 0, align 4
@ppp_header_ops = common dso_local global i32 0, align 4
@ARPHRD_PPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @ppp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_ioctl(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.ppp*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device* %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  %11 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %89 [
    i32 129, label %15
    i32 128, label %28
  ]

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, @proto
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %92

24:                                               ; preds = %15
  %25 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 128, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %92

28:                                               ; preds = %2
  %29 = load i32, i32* @CAP_NET_ADMIN, align 4
  %30 = call i32 @capable(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %92

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IFF_UP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %92

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load i32, i32* @ENCODING_NRZ, align 4
  %51 = load i32, i32* @PARITY_CRC16_PR1_CCITT, align 4
  %52 = call i32 %48(%struct.net_device* %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %92

57:                                               ; preds = %45
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @attach_hdlc_protocol(%struct.net_device* %58, i32* @proto, i32 24)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %92

64:                                               ; preds = %57
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call %struct.ppp* @get_ppp(%struct.net_device* %65)
  store %struct.ppp* %66, %struct.ppp** %7, align 8
  %67 = load %struct.ppp*, %struct.ppp** %7, align 8
  %68 = getelementptr inbounds %struct.ppp, %struct.ppp* %67, i32 0, i32 5
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.ppp*, %struct.ppp** %7, align 8
  %71 = getelementptr inbounds %struct.ppp, %struct.ppp* %70, i32 0, i32 0
  store i32 2, i32* %71, align 4
  %72 = load %struct.ppp*, %struct.ppp** %7, align 8
  %73 = getelementptr inbounds %struct.ppp, %struct.ppp* %72, i32 0, i32 1
  store i32 10, i32* %73, align 4
  %74 = load %struct.ppp*, %struct.ppp** %7, align 8
  %75 = getelementptr inbounds %struct.ppp, %struct.ppp* %74, i32 0, i32 2
  store i32 2, i32* %75, align 4
  %76 = load %struct.ppp*, %struct.ppp** %7, align 8
  %77 = getelementptr inbounds %struct.ppp, %struct.ppp* %76, i32 0, i32 3
  store i32 10, i32* %77, align 4
  %78 = load %struct.ppp*, %struct.ppp** %7, align 8
  %79 = getelementptr inbounds %struct.ppp, %struct.ppp* %78, i32 0, i32 4
  store i32 60, i32* %79, align 4
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 1
  store i32 4, i32* %81, align 4
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 3
  store i32* @ppp_header_ops, i32** %83, align 8
  %84 = load i32, i32* @ARPHRD_PPP, align 4
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = call i32 @netif_dormant_on(%struct.net_device* %87)
  store i32 0, i32* %3, align 4
  br label %92

89:                                               ; preds = %2
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %64, %62, %55, %42, %32, %24, %21
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @attach_hdlc_protocol(%struct.net_device*, i32*, i32) #1

declare dso_local %struct.ppp* @get_ppp(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @netif_dormant_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
