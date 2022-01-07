; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_my3126.c_my3126_phy_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_my3126.c_my3126_phy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.mdio_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@my3126_ops = common dso_local global i32 0, align 4
@my3216_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cphy* (%struct.net_device*, i32, %struct.mdio_ops*)* @my3126_phy_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cphy* @my3126_phy_create(%struct.net_device* %0, i32 %1, %struct.mdio_ops* %2) #0 {
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdio_ops*, align 8
  %8 = alloca %struct.cphy*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mdio_ops* %2, %struct.mdio_ops** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cphy* @kzalloc(i32 16, i32 %9)
  store %struct.cphy* %10, %struct.cphy** %8, align 8
  %11 = load %struct.cphy*, %struct.cphy** %8, align 8
  %12 = icmp ne %struct.cphy* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.cphy* null, %struct.cphy** %4, align 8
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.cphy*, %struct.cphy** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.mdio_ops*, %struct.mdio_ops** %7, align 8
  %19 = call i32 @cphy_init(%struct.cphy* %15, %struct.net_device* %16, i32 %17, i32* @my3126_ops, %struct.mdio_ops* %18)
  %20 = load %struct.cphy*, %struct.cphy** %8, align 8
  %21 = getelementptr inbounds %struct.cphy, %struct.cphy* %20, i32 0, i32 1
  %22 = load i32, i32* @my3216_poll, align 4
  %23 = call i32 @INIT_DELAYED_WORK(i32* %21, i32 %22)
  %24 = load %struct.cphy*, %struct.cphy** %8, align 8
  %25 = getelementptr inbounds %struct.cphy, %struct.cphy* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.cphy*, %struct.cphy** %8, align 8
  store %struct.cphy* %26, %struct.cphy** %4, align 8
  br label %27

27:                                               ; preds = %14, %13
  %28 = load %struct.cphy*, %struct.cphy** %4, align 8
  ret %struct.cphy* %28
}

declare dso_local %struct.cphy* @kzalloc(i32, i32) #1

declare dso_local i32 @cphy_init(%struct.cphy*, %struct.net_device*, i32, i32*, %struct.mdio_ops*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
