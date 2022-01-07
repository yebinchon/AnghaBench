; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.ethoc* }
%struct.ethoc = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ETHOC_MII_TIMEOUT = common dso_local global i64 0, align 8
@MIIADDRESS = common dso_local global i32 0, align 4
@MIICOMMAND = common dso_local global i32 0, align 4
@MIICOMMAND_READ = common dso_local global i32 0, align 4
@MIISTATUS = common dso_local global i32 0, align 4
@MIISTATUS_BUSY = common dso_local global i32 0, align 4
@MIIRX_DATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @ethoc_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ethoc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* @ETHOC_MII_TIMEOUT, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %16 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %15, i32 0, i32 0
  %17 = load %struct.ethoc*, %struct.ethoc** %16, align 8
  store %struct.ethoc* %17, %struct.ethoc** %9, align 8
  %18 = load %struct.ethoc*, %struct.ethoc** %9, align 8
  %19 = load i32, i32* @MIIADDRESS, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @MIIADDRESS_ADDR(i32 %20, i32 %21)
  %23 = call i32 @ethoc_write(%struct.ethoc* %18, i32 %19, i32 %22)
  %24 = load %struct.ethoc*, %struct.ethoc** %9, align 8
  %25 = load i32, i32* @MIICOMMAND, align 4
  %26 = load i32, i32* @MIICOMMAND_READ, align 4
  %27 = call i32 @ethoc_write(%struct.ethoc* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %49, %3
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @time_before(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.ethoc*, %struct.ethoc** %9, align 8
  %35 = load i32, i32* @MIISTATUS, align 4
  %36 = call i32 @ethoc_read(%struct.ethoc* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MIISTATUS_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.ethoc*, %struct.ethoc** %9, align 8
  %43 = load i32, i32* @MIIRX_DATA, align 4
  %44 = call i32 @ethoc_read(%struct.ethoc* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ethoc*, %struct.ethoc** %9, align 8
  %46 = load i32, i32* @MIICOMMAND, align 4
  %47 = call i32 @ethoc_write(%struct.ethoc* %45, i32 %46, i32 0)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %54

49:                                               ; preds = %33
  %50 = call i32 (...) @schedule()
  br label %28

51:                                               ; preds = %28
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i32, i32* %4, align 4
  ret i32 %55
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
