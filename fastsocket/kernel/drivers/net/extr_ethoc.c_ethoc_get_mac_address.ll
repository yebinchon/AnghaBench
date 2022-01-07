; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethoc = type { i32 }

@MAC_ADDR0 = common dso_local global i32 0, align 4
@MAC_ADDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ethoc_get_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_get_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ethoc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ethoc* @netdev_priv(%struct.net_device* %8)
  store %struct.ethoc* %9, %struct.ethoc** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %13 = load i32, i32* @MAC_ADDR0, align 4
  %14 = call i32 @ethoc_read(%struct.ethoc* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 0
  %32 = and i32 %31, 255
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %36 = load i32, i32* @MAC_ADDR1, align 4
  %37 = call i32 @ethoc_read(%struct.ethoc* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 0
  %45 = and i32 %44, 255
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  ret i32 0
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethoc_read(%struct.ethoc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
