; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.smsc9420_pdata = type { i32 }

@ADDRH = common dso_local global i32 0, align 4
@ADDRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smsc9420_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_set_mac_address(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.smsc9420_pdata* %8, %struct.smsc9420_pdata** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 5
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 24
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = or i32 %23, %27
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = or i32 %28, %32
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %39 = load i32, i32* @ADDRH, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %38, i32 %39, i32 %40)
  %42 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %43 = load i32, i32* @ADDRL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
