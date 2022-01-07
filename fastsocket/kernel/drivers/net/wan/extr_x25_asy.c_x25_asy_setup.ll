; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_x25_asy.c_x25_asy_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_x25_asy.c_x25_asy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i64, i64, i32*, i32 }
%struct.x25_asy = type { i32, i32, %struct.net_device*, i32 }

@X25_ASY_MAGIC = common dso_local global i32 0, align 4
@SLF_INUSE = common dso_local global i32 0, align 4
@SL_MTU = common dso_local global i32 0, align 4
@x25_asy_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ARPHRD_X25 = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @x25_asy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_asy_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.x25_asy*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.x25_asy* @netdev_priv(%struct.net_device* %4)
  store %struct.x25_asy* %5, %struct.x25_asy** %3, align 8
  %6 = load i32, i32* @X25_ASY_MAGIC, align 4
  %7 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %8 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %11 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %10, i32 0, i32 2
  store %struct.net_device* %9, %struct.net_device** %11, align 8
  %12 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %13 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load i32, i32* @SLF_INUSE, align 4
  %16 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %17 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %16, i32 0, i32 0
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load i32, i32* @SL_MTU, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 6
  store i32* @x25_asy_netdev_ops, i32** %23, align 8
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 %24, 20
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @ARPHRD_X25, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  store i32 10, i32* %36, align 4
  %37 = load i32, i32* @IFF_NOARP, align 4
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  ret void
}

declare dso_local %struct.x25_asy* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
