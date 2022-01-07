; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_phy_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*)* @phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_reset(%struct.mv643xx_eth_private* %0) #0 {
  %2 = alloca %struct.mv643xx_eth_private*, align 8
  %3 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %2, align 8
  %4 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %5 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MII_BMCR, align 4
  %8 = call i32 @phy_read(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %41

12:                                               ; preds = %1
  %13 = load i32, i32* @BMCR_RESET, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %17 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MII_BMCR, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @phy_write(i32 %18, i32 %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %41

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %39, %24
  %26 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %27 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MII_BMCR, align 4
  %30 = call i32 @phy_read(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @BMCR_RESET, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  br i1 %40, label %25, label %41

41:                                               ; preds = %11, %23, %39
  ret void
}

declare dso_local i32 @phy_read(i32, i32) #1

declare dso_local i64 @phy_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
