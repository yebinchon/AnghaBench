; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.smc_private = type { %struct.TYPE_3__, i64, i32*, %struct.pcmcia_device* }
%struct.TYPE_3__ = type { i64, i64, i32* }
%struct.pcmcia_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"smc91c92_cs: Yikes!  Bad chip signature!\0A\00", align 1
@media_check = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@BANK_SELECT = common dso_local global i64 0, align 8
@pc_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.smc_private* @netdev_priv(%struct.net_device* %6)
  store %struct.smc_private* %7, %struct.smc_private** %4, align 8
  %8 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %9 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %8, i32 0, i32 3
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %5, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %12 = call i32 @pcmcia_dev_present(%struct.pcmcia_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %19 = call i64 @check_sig(%struct.pcmcia_device* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %58

25:                                               ; preds = %17
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @netif_start_queue(%struct.net_device* %30)
  %32 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %33 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %35 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @smc_reset(%struct.net_device* %36)
  %38 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %39 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %38, i32 0, i32 0
  %40 = call i32 @init_timer(%struct.TYPE_3__* %39)
  %41 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %42 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32* @media_check, i32** %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = ptrtoint %struct.net_device* %44 to i64
  %46 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %47 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* @jiffies, align 8
  %50 = load i64, i64* @HZ, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %53 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %56 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %55, i32 0, i32 0
  %57 = call i32 @add_timer(%struct.TYPE_3__* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %25, %21, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i64 @check_sig(%struct.pcmcia_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @smc_reset(%struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
