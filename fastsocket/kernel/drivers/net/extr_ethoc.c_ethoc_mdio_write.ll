; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_mdio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.ethoc* }
%struct.ethoc = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ETHOC_MII_TIMEOUT = common dso_local global i64 0, align 8
@MIIADDRESS = common dso_local global i32 0, align 4
@MIITX_DATA = common dso_local global i32 0, align 4
@MIICOMMAND = common dso_local global i32 0, align 4
@MIICOMMAND_WRITE = common dso_local global i32 0, align 4
@MIISTATUS = common dso_local global i32 0, align 4
@MIISTATUS_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @ethoc_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ethoc*, align 8
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @ETHOC_MII_TIMEOUT, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %10, align 8
  %16 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %17 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %16, i32 0, i32 0
  %18 = load %struct.ethoc*, %struct.ethoc** %17, align 8
  store %struct.ethoc* %18, %struct.ethoc** %11, align 8
  %19 = load %struct.ethoc*, %struct.ethoc** %11, align 8
  %20 = load i32, i32* @MIIADDRESS, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @MIIADDRESS_ADDR(i32 %21, i32 %22)
  %24 = call i32 @ethoc_write(%struct.ethoc* %19, i32 %20, i32 %23)
  %25 = load %struct.ethoc*, %struct.ethoc** %11, align 8
  %26 = load i32, i32* @MIITX_DATA, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ethoc_write(%struct.ethoc* %25, i32 %26, i32 %27)
  %29 = load %struct.ethoc*, %struct.ethoc** %11, align 8
  %30 = load i32, i32* @MIICOMMAND, align 4
  %31 = load i32, i32* @MIICOMMAND_WRITE, align 4
  %32 = call i32 @ethoc_write(%struct.ethoc* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %47, %4
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @time_before(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.ethoc*, %struct.ethoc** %11, align 8
  %40 = load i32, i32* @MIISTATUS, align 4
  %41 = call i32 @ethoc_read(%struct.ethoc* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @MIISTATUS_BUSY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %52

47:                                               ; preds = %38
  %48 = call i32 (...) @schedule()
  br label %33

49:                                               ; preds = %33
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @ethoc_write(%struct.ethoc*, i32, i32) #1

declare dso_local i32 @MIIADDRESS_ADDR(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ethoc_read(%struct.ethoc*, i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
