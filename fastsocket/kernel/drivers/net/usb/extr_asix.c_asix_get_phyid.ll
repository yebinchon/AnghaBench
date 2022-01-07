; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_get_phyid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_asix.c_asix_get_phyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @asix_get_phyid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asix_get_phyid(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MII_PHYSID1, align 4
  %14 = call i32 @asix_mdio_read(i32 %8, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 65535
  %21 = shl i32 %20, 16
  store i32 %21, i32* %5, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MII_PHYSID2, align 4
  %30 = call i32 @asix_mdio_read(i32 %24, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %40

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 65535
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %33, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @asix_mdio_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
