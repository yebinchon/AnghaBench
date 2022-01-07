; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_dev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i32, i64, i32, i32, i64, %struct.net_device*, i64 }

@LBS_DEB_NET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LBS_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lbs_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_dev_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  store %struct.lbs_private* %7, %struct.lbs_private** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @LBS_DEB_NET, align 4
  %9 = call i32 @lbs_deb_enter(i32 %8)
  %10 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 3
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 6
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = icmp eq %struct.net_device* %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i64, i64* @LBS_CONNECTED, align 8
  %30 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 5
  store i64 %29, i64* %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @netif_carrier_on(%struct.net_device* %32)
  br label %49

34:                                               ; preds = %20
  %35 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %38 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LBS_CONNECTED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @netif_carrier_on(%struct.net_device* %43)
  br label %48

45:                                               ; preds = %34
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @netif_carrier_off(%struct.net_device* %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %51 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @netif_wake_queue(%struct.net_device* %55)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %17
  %59 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 3
  %61 = call i32 @spin_unlock_irq(i32* %60)
  %62 = load i32, i32* @LBS_DEB_NET, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @lbs_deb_leave_args(i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
