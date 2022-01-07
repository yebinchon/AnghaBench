; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_remove_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_remove_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net = type { %struct.net_device**, i64* }
%struct.net_device = type { i32 }
%struct.dvb_net_priv = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dvb_net: removed network interface %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_net*, i64)* @dvb_net_remove_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_remove_if(%struct.dvb_net* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_net*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.dvb_net_priv*, align 8
  store %struct.dvb_net* %0, %struct.dvb_net** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.dvb_net*, %struct.dvb_net** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %8, i32 0, i32 0
  %10 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.net_device*, %struct.net_device** %10, i64 %11
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.dvb_net*, %struct.dvb_net** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call %struct.dvb_net_priv* @netdev_priv(%struct.net_device* %25)
  store %struct.dvb_net_priv* %26, %struct.dvb_net_priv** %7, align 8
  %27 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %7, align 8
  %28 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %24
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i32 @dvb_net_stop(%struct.net_device* %35)
  %37 = call i32 (...) @flush_scheduled_work()
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i32 @unregister_netdev(%struct.net_device* %42)
  %44 = load %struct.dvb_net*, %struct.dvb_net** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 0, i64* %48, align 8
  %49 = load %struct.dvb_net*, %struct.dvb_net** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %49, i32 0, i32 0
  %51 = load %struct.net_device**, %struct.net_device*** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.net_device*, %struct.net_device** %51, i64 %52
  store %struct.net_device* null, %struct.net_device** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = call i32 @free_netdev(%struct.net_device* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %34, %31, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.dvb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dvb_net_stop(%struct.net_device*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
