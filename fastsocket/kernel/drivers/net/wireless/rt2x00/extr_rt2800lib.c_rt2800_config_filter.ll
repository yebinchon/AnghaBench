; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RX_FILTER_CFG = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CRC_ERROR = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_PHY_ERROR = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_NOT_TO_ME = common dso_local global i32 0, align 4
@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_NOT_MY_BSSD = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_VER_ERROR = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_MULTICAST = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_BROADCAST = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_DUPLICATE = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CF_END_ACK = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CF_END = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_ACK = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CTS = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_RTS = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_PSPOLL = common dso_local global i32 0, align 4
@FIF_PSPOLL = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_BA = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_BAR = common dso_local global i32 0, align 4
@RX_FILTER_CFG_DROP_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_config_filter(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = load i32, i32* @RX_FILTER_CFG, align 4
  %8 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %6, i32 %7, i32* %5)
  %9 = load i32, i32* @RX_FILTER_CFG_DROP_CRC_ERROR, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FIF_FCSFAIL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @rt2x00_set_field32(i32* %5, i32 %9, i32 %15)
  %17 = load i32, i32* @RX_FILTER_CFG_DROP_PHY_ERROR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIF_PLCPFAIL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @rt2x00_set_field32(i32* %5, i32 %17, i32 %23)
  %25 = load i32, i32* @RX_FILTER_CFG_DROP_NOT_TO_ME, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @rt2x00_set_field32(i32* %5, i32 %25, i32 %31)
  %33 = load i32, i32* @RX_FILTER_CFG_DROP_NOT_MY_BSSD, align 4
  %34 = call i32 @rt2x00_set_field32(i32* %5, i32 %33, i32 0)
  %35 = load i32, i32* @RX_FILTER_CFG_DROP_VER_ERROR, align 4
  %36 = call i32 @rt2x00_set_field32(i32* %5, i32 %35, i32 1)
  %37 = load i32, i32* @RX_FILTER_CFG_DROP_MULTICAST, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @FIF_ALLMULTI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @rt2x00_set_field32(i32* %5, i32 %37, i32 %43)
  %45 = load i32, i32* @RX_FILTER_CFG_DROP_BROADCAST, align 4
  %46 = call i32 @rt2x00_set_field32(i32* %5, i32 %45, i32 0)
  %47 = load i32, i32* @RX_FILTER_CFG_DROP_DUPLICATE, align 4
  %48 = call i32 @rt2x00_set_field32(i32* %5, i32 %47, i32 1)
  %49 = load i32, i32* @RX_FILTER_CFG_DROP_CF_END_ACK, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @FIF_CONTROL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @rt2x00_set_field32(i32* %5, i32 %49, i32 %55)
  %57 = load i32, i32* @RX_FILTER_CFG_DROP_CF_END, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @FIF_CONTROL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @rt2x00_set_field32(i32* %5, i32 %57, i32 %63)
  %65 = load i32, i32* @RX_FILTER_CFG_DROP_ACK, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @FIF_CONTROL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @rt2x00_set_field32(i32* %5, i32 %65, i32 %71)
  %73 = load i32, i32* @RX_FILTER_CFG_DROP_CTS, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @FIF_CONTROL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @rt2x00_set_field32(i32* %5, i32 %73, i32 %79)
  %81 = load i32, i32* @RX_FILTER_CFG_DROP_RTS, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @FIF_CONTROL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @rt2x00_set_field32(i32* %5, i32 %81, i32 %87)
  %89 = load i32, i32* @RX_FILTER_CFG_DROP_PSPOLL, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @FIF_PSPOLL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @rt2x00_set_field32(i32* %5, i32 %89, i32 %95)
  %97 = load i32, i32* @RX_FILTER_CFG_DROP_BA, align 4
  %98 = call i32 @rt2x00_set_field32(i32* %5, i32 %97, i32 0)
  %99 = load i32, i32* @RX_FILTER_CFG_DROP_BAR, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @FIF_CONTROL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @rt2x00_set_field32(i32* %5, i32 %99, i32 %105)
  %107 = load i32, i32* @RX_FILTER_CFG_DROP_CNTL, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @FIF_CONTROL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @rt2x00_set_field32(i32* %5, i32 %107, i32 %113)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %116 = load i32, i32* @RX_FILTER_CFG, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %115, i32 %116, i32 %117)
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
