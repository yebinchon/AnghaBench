; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gem = type { i64, i32, i32, i32, i64 }

@GEM_MIN_MTU = common dso_local global i32 0, align 4
@GEM_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@link_up = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @gem_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gem*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.gem* @netdev_priv(%struct.net_device* %7)
  store %struct.gem* %8, %struct.gem** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GEM_MIN_MTU, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GEM_MAX_MTU, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %70

19:                                               ; preds = %12
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @netif_device_present(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %70

31:                                               ; preds = %23
  %32 = load %struct.gem*, %struct.gem** %6, align 8
  %33 = getelementptr inbounds %struct.gem, %struct.gem* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.gem*, %struct.gem** %6, align 8
  %36 = getelementptr inbounds %struct.gem, %struct.gem* %35, i32 0, i32 2
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.gem*, %struct.gem** %6, align 8
  %39 = getelementptr inbounds %struct.gem, %struct.gem* %38, i32 0, i32 3
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.gem*, %struct.gem** %6, align 8
  %45 = getelementptr inbounds %struct.gem, %struct.gem* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %31
  %49 = load %struct.gem*, %struct.gem** %6, align 8
  %50 = call i32 @gem_reinit_chip(%struct.gem* %49)
  %51 = load %struct.gem*, %struct.gem** %6, align 8
  %52 = getelementptr inbounds %struct.gem, %struct.gem* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @link_up, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.gem*, %struct.gem** %6, align 8
  %58 = call i32 @gem_set_link_modes(%struct.gem* %57)
  br label %59

59:                                               ; preds = %56, %48
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.gem*, %struct.gem** %6, align 8
  %62 = getelementptr inbounds %struct.gem, %struct.gem* %61, i32 0, i32 3
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.gem*, %struct.gem** %6, align 8
  %65 = getelementptr inbounds %struct.gem, %struct.gem* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load %struct.gem*, %struct.gem** %6, align 8
  %68 = getelementptr inbounds %struct.gem, %struct.gem* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %60, %27, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gem_reinit_chip(%struct.gem*) #1

declare dso_local i32 @gem_set_link_modes(%struct.gem*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
