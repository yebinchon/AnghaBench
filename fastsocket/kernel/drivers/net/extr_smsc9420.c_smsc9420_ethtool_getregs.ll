; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_ethtool_getregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_ethtool_getregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i8* }
%struct.smsc9420_pdata = type { %struct.phy_device* }
%struct.phy_device = type { i32, i32 }

@ID_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @smsc9420_ethtool_getregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_ethtool_getregs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.smsc9420_pdata*, align 8
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %12)
  store %struct.smsc9420_pdata* %13, %struct.smsc9420_pdata** %7, align 8
  %14 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %7, align 8
  %15 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %14, i32 0, i32 0
  %16 = load %struct.phy_device*, %struct.phy_device** %15, align 8
  store %struct.phy_device* %16, %struct.phy_device** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i8**
  store i8** %18, i8*** %11, align 8
  %19 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %7, align 8
  %20 = load i32, i32* @ID_REV, align 4
  %21 = call i8* @smsc9420_reg_read(%struct.smsc9420_pdata* %19, i32 %20)
  %22 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %36, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ult i32 %25, 256
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i8* @smsc9420_reg_read(%struct.smsc9420_pdata* %28, i32 %29)
  %31 = load i8**, i8*** %11, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  store i8* %30, i8** %35, align 8
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = add i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %43 = icmp ne %struct.phy_device* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %66

45:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %9, align 4
  %48 = icmp ule i32 %47, 31
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @smsc9420_mii_read(i32 %52, i32 %55, i32 %56)
  %58 = load i8**, i8*** %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  store i8* %57, i8** %62, align 8
  br label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %46

66:                                               ; preds = %44, %46
  ret void
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i8* @smsc9420_mii_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
