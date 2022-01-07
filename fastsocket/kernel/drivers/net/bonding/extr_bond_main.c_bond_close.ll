; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bonding = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bond_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bonding*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.bonding* @netdev_priv(%struct.net_device* %4)
  store %struct.bonding* %5, %struct.bonding** %3, align 8
  %6 = load %struct.bonding*, %struct.bonding** %3, align 8
  %7 = getelementptr inbounds %struct.bonding, %struct.bonding* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 130
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.bonding*, %struct.bonding** %3, align 8
  %13 = call i32 @bond_unregister_lacpdu(%struct.bonding* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.bonding*, %struct.bonding** %3, align 8
  %16 = getelementptr inbounds %struct.bonding, %struct.bonding* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.bonding*, %struct.bonding** %3, align 8
  %22 = getelementptr inbounds %struct.bonding, %struct.bonding* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.bonding*, %struct.bonding** %3, align 8
  %28 = call i32 @bond_unregister_arp(%struct.bonding* %27)
  br label %29

29:                                               ; preds = %26, %20, %14
  %30 = load %struct.bonding*, %struct.bonding** %3, align 8
  %31 = getelementptr inbounds %struct.bonding, %struct.bonding* %30, i32 0, i32 7
  %32 = call i32 @write_lock_bh(i32* %31)
  %33 = load %struct.bonding*, %struct.bonding** %3, align 8
  %34 = getelementptr inbounds %struct.bonding, %struct.bonding* %33, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = load %struct.bonding*, %struct.bonding** %3, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 8
  store i64 0, i64* %36, align 8
  %37 = load %struct.bonding*, %struct.bonding** %3, align 8
  %38 = getelementptr inbounds %struct.bonding, %struct.bonding* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.bonding*, %struct.bonding** %3, align 8
  %40 = getelementptr inbounds %struct.bonding, %struct.bonding* %39, i32 0, i32 7
  %41 = call i32 @write_unlock_bh(i32* %40)
  %42 = load %struct.bonding*, %struct.bonding** %3, align 8
  %43 = getelementptr inbounds %struct.bonding, %struct.bonding* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %29
  %48 = load %struct.bonding*, %struct.bonding** %3, align 8
  %49 = getelementptr inbounds %struct.bonding, %struct.bonding* %48, i32 0, i32 6
  %50 = call i32 @cancel_delayed_work(i32* %49)
  br label %51

51:                                               ; preds = %47, %29
  %52 = load %struct.bonding*, %struct.bonding** %3, align 8
  %53 = getelementptr inbounds %struct.bonding, %struct.bonding* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.bonding*, %struct.bonding** %3, align 8
  %59 = getelementptr inbounds %struct.bonding, %struct.bonding* %58, i32 0, i32 5
  %60 = call i32 @cancel_delayed_work(i32* %59)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.bonding*, %struct.bonding** %3, align 8
  %63 = getelementptr inbounds %struct.bonding, %struct.bonding* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %74 [
    i32 130, label %66
    i32 128, label %70
    i32 129, label %70
  ]

66:                                               ; preds = %61
  %67 = load %struct.bonding*, %struct.bonding** %3, align 8
  %68 = getelementptr inbounds %struct.bonding, %struct.bonding* %67, i32 0, i32 3
  %69 = call i32 @cancel_delayed_work(i32* %68)
  br label %75

70:                                               ; preds = %61, %61
  %71 = load %struct.bonding*, %struct.bonding** %3, align 8
  %72 = getelementptr inbounds %struct.bonding, %struct.bonding* %71, i32 0, i32 2
  %73 = call i32 @cancel_delayed_work(i32* %72)
  br label %75

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %70, %66
  %76 = load %struct.bonding*, %struct.bonding** %3, align 8
  %77 = getelementptr inbounds %struct.bonding, %struct.bonding* %76, i32 0, i32 1
  %78 = call i64 @delayed_work_pending(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.bonding*, %struct.bonding** %3, align 8
  %82 = getelementptr inbounds %struct.bonding, %struct.bonding* %81, i32 0, i32 1
  %83 = call i32 @cancel_delayed_work(i32* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.bonding*, %struct.bonding** %3, align 8
  %86 = call i64 @bond_is_lb(%struct.bonding* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.bonding*, %struct.bonding** %3, align 8
  %90 = call i32 @bond_alb_deinitialize(%struct.bonding* %89)
  br label %91

91:                                               ; preds = %88, %84
  ret i32 0
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bond_unregister_lacpdu(%struct.bonding*) #1

declare dso_local i32 @bond_unregister_arp(%struct.bonding*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i64 @delayed_work_pending(i32*) #1

declare dso_local i64 @bond_is_lb(%struct.bonding*) #1

declare dso_local i32 @bond_alb_deinitialize(%struct.bonding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
