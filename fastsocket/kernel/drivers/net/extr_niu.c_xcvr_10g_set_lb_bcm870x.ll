; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_xcvr_10g_set_lb_bcm870x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_xcvr_10g_set_lb_bcm870x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_link_config }
%struct.niu_link_config = type { i64 }

@BCM8704_PCS_DEV_ADDR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@LOOPBACK_MAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @xcvr_10g_set_lb_bcm870x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcvr_10g_set_lb_bcm870x(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_link_config*, align 8
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %6 = load %struct.niu*, %struct.niu** %3, align 8
  %7 = getelementptr inbounds %struct.niu, %struct.niu* %6, i32 0, i32 1
  store %struct.niu_link_config* %7, %struct.niu_link_config** %4, align 8
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = load %struct.niu*, %struct.niu** %3, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BCM8704_PCS_DEV_ADDR, align 4
  %13 = load i32, i32* @MII_BMCR, align 4
  %14 = call i32 @mdio_read(%struct.niu* %8, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  %20 = load i32, i32* @BMCR_LOOPBACK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %25 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LOOPBACK_MAC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @BMCR_LOOPBACK, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %19
  %34 = load %struct.niu*, %struct.niu** %3, align 8
  %35 = load %struct.niu*, %struct.niu** %3, align 8
  %36 = getelementptr inbounds %struct.niu, %struct.niu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BCM8704_PCS_DEV_ADDR, align 4
  %39 = load i32, i32* @MII_BMCR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mdio_write(%struct.niu* %34, i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.niu*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
