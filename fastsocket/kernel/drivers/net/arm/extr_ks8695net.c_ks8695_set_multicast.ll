; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.ks8695_priv = type { i32 }

@KS8695_DRXC = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@DRXC_RA = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@DRXC_RM = common dso_local global i32 0, align 4
@KS8695_NR_ADDRESSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ks8695_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ks8695_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ks8695_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ks8695_priv* %6, %struct.ks8695_priv** %3, align 8
  %7 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %8 = load i32, i32* @KS8695_DRXC, align 4
  %9 = call i32 @ks8695_readreg(%struct.ks8695_priv* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @DRXC_RA, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_PROMISC, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @DRXC_RA, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_ALLMULTI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @DRXC_RM, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %69

45:                                               ; preds = %34
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @KS8695_NR_ADDRESSES, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @DRXC_RM, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %68

55:                                               ; preds = %45
  %56 = load i32, i32* @DRXC_RM, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ks8695_init_partial_multicast(%struct.ks8695_priv* %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %55, %51
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %71 = load i32, i32* @KS8695_DRXC, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @ks8695_writereg(%struct.ks8695_priv* %70, i32 %71, i32 %72)
  ret void
}

declare dso_local %struct.ks8695_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ks8695_readreg(%struct.ks8695_priv*, i32) #1

declare dso_local i32 @ks8695_init_partial_multicast(%struct.ks8695_priv*, i32, i32) #1

declare dso_local i32 @ks8695_writereg(%struct.ks8695_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
