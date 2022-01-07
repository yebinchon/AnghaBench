; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_load_macaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_load_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i32 }

@JME_RXUMA_LO = common dso_local global i32 0, align 4
@JME_RXUMA_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @jme_load_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_load_macaddr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca [6 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.jme_adapter* %7, %struct.jme_adapter** %3, align 8
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %12 = load i32, i32* @JME_RXUMA_LO, align 4
  %13 = call i32 @jread32(%struct.jme_adapter* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 0
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %27, i8* %28, align 1
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  store i8 %32, i8* %33, align 1
  %34 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %35 = load i32, i32* @JME_RXUMA_HI, align 4
  %36 = call i32 @jread32(%struct.jme_adapter* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 0
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  store i8 %45, i8* %46, align 1
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %51 = call i32 @memcpy(i32 %49, i8* %50, i32 6)
  %52 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_bh(i32* %53)
  ret void
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
