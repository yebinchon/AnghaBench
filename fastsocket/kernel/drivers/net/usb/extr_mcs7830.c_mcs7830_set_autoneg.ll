; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_set_autoneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_set_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@MII_ADVERTISE = common dso_local global i32 0, align 4
@MCS7830_MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @mcs7830_set_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs7830_set_autoneg(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = load i32, i32* @MII_ADVERTISE, align 4
  %8 = load i32, i32* @MCS7830_MII_ADVERTISE, align 4
  %9 = call i32 @mcs7830_write_phy(%struct.usbnet* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = load i32, i32* @MII_BMCR, align 4
  %15 = call i32 @mcs7830_write_phy(%struct.usbnet* %13, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = load i32, i32* @MII_BMCR, align 4
  %22 = load i32, i32* @BMCR_ANENABLE, align 4
  %23 = call i32 @mcs7830_write_phy(%struct.usbnet* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = load i32, i32* @MII_BMCR, align 4
  %30 = load i32, i32* @BMCR_ANENABLE, align 4
  %31 = load i32, i32* @BMCR_ANRESTART, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @mcs7830_write_phy(%struct.usbnet* %28, i32 %29, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  br i1 %36, label %38, label %39

38:                                               ; preds = %34
  br label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi i32 [ %37, %38 ], [ 0, %39 ]
  ret i32 %41
}

declare dso_local i32 @mcs7830_write_phy(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
