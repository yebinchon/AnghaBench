; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_macaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.jme_adapter = type { i32 }
%struct.sockaddr = type { i32* }

@EBUSY = common dso_local global i32 0, align 4
@JME_RXUMA_LO = common dso_local global i32 0, align 4
@JME_RXUMA_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @jme_set_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_set_macaddr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jme_adapter*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.jme_adapter* %10, %struct.jme_adapter** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i64 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %88

19:                                               ; preds = %2
  %20 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %25, i32* %28, i32 %31)
  %33 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = shl i32 %38, 24
  %40 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = shl i32 %45, 16
  %47 = or i32 %39, %46
  %48 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %49 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 255
  %54 = shl i32 %53, 8
  %55 = or i32 %47, %54
  %56 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 255
  %62 = or i32 %55, %61
  store i32 %62, i32* %8, align 4
  %63 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %64 = load i32, i32* @JME_RXUMA_LO, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @jwrite32(%struct.jme_adapter* %63, i32 %64, i32 %65)
  %67 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %68 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 255
  %73 = shl i32 %72, 8
  %74 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %75 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 255
  %80 = or i32 %73, %79
  store i32 %80, i32* %8, align 4
  %81 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %82 = load i32, i32* @JME_RXUMA_HI, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @jwrite32(%struct.jme_adapter* %81, i32 %82, i32 %83)
  %85 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock_bh(i32* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %19, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
