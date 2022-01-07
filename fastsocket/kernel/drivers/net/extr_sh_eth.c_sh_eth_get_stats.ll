; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32 }
%struct.net_device = type { i64 }
%struct.sh_eth_private = type { %struct.net_device_stats }

@TROCR = common dso_local global i64 0, align 8
@CDCR = common dso_local global i64 0, align 8
@LCCR = common dso_local global i64 0, align 8
@CNDCR = common dso_local global i64 0, align 8
@CEECR = common dso_local global i64 0, align 8
@CERCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @sh_eth_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @sh_eth_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %5)
  store %struct.sh_eth_private* %6, %struct.sh_eth_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @TROCR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @ctrl_inl(i64 %12)
  %14 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %15 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %13
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @TROCR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @ctrl_outl(i32 0, i64 %23)
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @CDCR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i64 @ctrl_inl(i64 %27)
  %29 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %30 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %28
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @CDCR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @ctrl_outl(i32 0, i64 %38)
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @LCCR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @ctrl_inl(i64 %42)
  %44 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %45 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %43
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @LCCR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @ctrl_outl(i32 0, i64 %53)
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @CNDCR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i64 @ctrl_inl(i64 %57)
  %59 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %60 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %58
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @CNDCR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @ctrl_outl(i32 0, i64 %68)
  %70 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %71 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %70, i32 0, i32 0
  ret %struct.net_device_stats* %71
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
