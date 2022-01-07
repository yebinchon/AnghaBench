; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_mdio_ctrl_phy_mii_emulated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_mdio_ctrl_phy_mii_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32 }

@mdi_read = common dso_local global i64 0, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@BMSR_ANEGCAPABLE = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s:addr=%d, reg=%d, data=0x%04X: unimplemented emulation!\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, i64, i64, i64, i32)* @mdio_ctrl_phy_mii_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_ctrl_phy_mii_emulated(%struct.nic* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nic*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @mdi_read, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %5
  %16 = load i64, i64* %10, align 8
  switch i64 %16, label %31 [
    i64 129, label %17
    i64 128, label %21
    i64 130, label %27
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @BMCR_ANENABLE, align 4
  %19 = load i32, i32* @BMCR_FULLDPLX, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  br label %65

21:                                               ; preds = %15
  %22 = load i32, i32* @BMSR_LSTATUS, align 4
  %23 = load i32, i32* @BMSR_ANEGCAPABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BMSR_10FULL, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %65

27:                                               ; preds = %15
  %28 = load i32, i32* @ADVERTISE_10HALF, align 4
  %29 = load i32, i32* @ADVERTISE_10FULL, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %6, align 4
  br label %65

31:                                               ; preds = %15
  %32 = load %struct.nic*, %struct.nic** %7, align 8
  %33 = load i32, i32* @hw, align 4
  %34 = load i32, i32* @KERN_DEBUG, align 4
  %35 = load %struct.nic*, %struct.nic** %7, align 8
  %36 = getelementptr inbounds %struct.nic, %struct.nic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @mdi_read, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @netif_printk(%struct.nic* %32, i32 %33, i32 %34, i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %42, i64 %43, i64 %44, i32 %45)
  store i32 65535, i32* %6, align 4
  br label %65

47:                                               ; preds = %5
  %48 = load i64, i64* %10, align 8
  switch i64 %48, label %49 [
  ]

49:                                               ; preds = %47
  %50 = load %struct.nic*, %struct.nic** %7, align 8
  %51 = load i32, i32* @hw, align 4
  %52 = load i32, i32* @KERN_DEBUG, align 4
  %53 = load %struct.nic*, %struct.nic** %7, align 8
  %54 = getelementptr inbounds %struct.nic, %struct.nic* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @mdi_read, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @netif_printk(%struct.nic* %50, i32 %51, i32 %52, i32 %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %60, i64 %61, i64 %62, i32 %63)
  store i32 65535, i32* %6, align 4
  br label %65

65:                                               ; preds = %49, %31, %27, %21, %17
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, i32, i8*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
