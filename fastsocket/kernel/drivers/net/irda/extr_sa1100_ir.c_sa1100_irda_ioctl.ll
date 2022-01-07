; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.if_irda_req = type { i32, i32 }
%struct.sa1100_irda = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"sa1100_irda_ioctl: SIOCSBANDWIDTH: !netif_running\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OUTSIDE_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @sa1100_irda_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_irda_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_irda_req*, align 8
  %8 = alloca %struct.sa1100_irda*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %11 = bitcast %struct.ifreq* %10 to %struct.if_irda_req*
  store %struct.if_irda_req* %11, %struct.if_irda_req** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.sa1100_irda* @netdev_priv(%struct.net_device* %12)
  store %struct.sa1100_irda* %13, %struct.sa1100_irda** %8, align 8
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %64 [
    i32 129, label %17
    i32 128, label %36
    i32 130, label %47
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @CAP_NET_ADMIN, align 4
  %19 = call i32 @capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.sa1100_irda*, %struct.sa1100_irda** %8, align 8
  %23 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.sa1100_irda*, %struct.sa1100_irda** %8, align 8
  %28 = load %struct.if_irda_req*, %struct.if_irda_req** %7, align 8
  %29 = getelementptr inbounds %struct.if_irda_req, %struct.if_irda_req* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sa1100_irda_set_speed(%struct.sa1100_irda* %27, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %34

32:                                               ; preds = %21
  %33 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %26
  br label %35

35:                                               ; preds = %34, %17
  br label %65

36:                                               ; preds = %3
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @CAP_NET_ADMIN, align 4
  %40 = call i32 @capable(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @irda_device_set_media_busy(%struct.net_device* %43, i32 %44)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %36
  br label %65

47:                                               ; preds = %3
  %48 = load %struct.sa1100_irda*, %struct.sa1100_irda** %8, align 8
  %49 = call i32 @IS_FIR(%struct.sa1100_irda* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %60

52:                                               ; preds = %47
  %53 = load %struct.sa1100_irda*, %struct.sa1100_irda** %8, align 8
  %54 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OUTSIDE_FRAME, align 4
  %58 = icmp ne i32 %56, %57
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %52, %51
  %61 = phi i32 [ 0, %51 ], [ %59, %52 ]
  %62 = load %struct.if_irda_req*, %struct.if_irda_req** %7, align 8
  %63 = getelementptr inbounds %struct.if_irda_req, %struct.if_irda_req* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %65

64:                                               ; preds = %3
  br label %65

65:                                               ; preds = %64, %60, %46, %35
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.sa1100_irda* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sa1100_irda_set_speed(%struct.sa1100_irda*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @irda_device_set_media_busy(%struct.net_device*, i32) #1

declare dso_local i32 @IS_FIR(%struct.sa1100_irda*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
