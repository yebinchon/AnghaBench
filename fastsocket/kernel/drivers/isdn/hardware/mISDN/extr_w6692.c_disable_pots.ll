; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_disable_pots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_disable_pots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_ch = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.w6692_hw* }
%struct.w6692_hw = type { i32 }

@pots = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W_B_MODE_EPCM = common dso_local global i32 0, align 4
@W_B_MODE_BSW0 = common dso_local global i32 0, align 4
@W_B_MODE = common dso_local global i32 0, align 4
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RRST = common dso_local global i32 0, align 4
@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@W_B_CMDR_XRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w6692_ch*)* @disable_pots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_pots(%struct.w6692_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w6692_ch*, align 8
  %4 = alloca %struct.w6692_hw*, align 8
  store %struct.w6692_ch* %0, %struct.w6692_ch** %3, align 8
  %5 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %6 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.w6692_hw*, %struct.w6692_hw** %7, align 8
  store %struct.w6692_hw* %8, %struct.w6692_hw** %4, align 8
  %9 = load %struct.w6692_hw*, %struct.w6692_hw** %4, align 8
  %10 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @pots, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load i32, i32* @W_B_MODE_EPCM, align 4
  %20 = load i32, i32* @W_B_MODE_BSW0, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %24 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %28 = load i32, i32* @W_B_MODE, align 4
  %29 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %30 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @WriteW6692B(%struct.w6692_ch* %27, i32 %28, i32 %31)
  %33 = load %struct.w6692_ch*, %struct.w6692_ch** %3, align 8
  %34 = load i32, i32* @W_B_CMDR, align 4
  %35 = load i32, i32* @W_B_CMDR_RRST, align 4
  %36 = load i32, i32* @W_B_CMDR_RACT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @W_B_CMDR_XRST, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @WriteW6692B(%struct.w6692_ch* %33, i32 %34, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %18, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @WriteW6692B(%struct.w6692_ch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
