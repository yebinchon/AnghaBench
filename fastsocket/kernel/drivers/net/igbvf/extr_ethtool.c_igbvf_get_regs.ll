; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.igbvf_adapter = type { %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i32, i32 }
%struct.e1000_hw = type { i32 }

@IGBVF_REGS_LEN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @igbvf_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.igbvf_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.igbvf_adapter* %11, %struct.igbvf_adapter** %7, align 8
  %12 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %12, i32 0, i32 1
  store %struct.e1000_hw* %13, %struct.e1000_hw** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @IGBVF_REGS_LEN, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i8* %16, i32 0, i32 %20)
  %22 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = or i32 16777216, %27
  %29 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %28, %33
  %35 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @CTRL, align 4
  %38 = call i32 @er32(i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @STATUS, align 4
  %42 = call i32 @er32(i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %42, i32* %44, align 4
  %45 = call i32 @RDLEN(i32 0)
  %46 = call i32 @er32(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %46, i32* %48, align 4
  %49 = call i32 @RDH(i32 0)
  %50 = call i32 @er32(i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 %50, i32* %52, align 4
  %53 = call i32 @RDT(i32 0)
  %54 = call i32 @er32(i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 %54, i32* %56, align 4
  %57 = call i32 @TDLEN(i32 0)
  %58 = call i32 @er32(i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  store i32 %58, i32* %60, align 4
  %61 = call i32 @TDH(i32 0)
  %62 = call i32 @er32(i32 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  store i32 %62, i32* %64, align 4
  %65 = call i32 @TDT(i32 0)
  %66 = call i32 @er32(i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 7
  store i32 %66, i32* %68, align 4
  ret void
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @RDLEN(i32) #1

declare dso_local i32 @RDH(i32) #1

declare dso_local i32 @RDT(i32) #1

declare dso_local i32 @TDLEN(i32) #1

declare dso_local i32 @TDH(i32) #1

declare dso_local i32 @TDT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
