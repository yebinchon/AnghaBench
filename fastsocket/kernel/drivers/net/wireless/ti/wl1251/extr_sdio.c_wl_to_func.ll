; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl_to_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl_to_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.wl1251 = type { %struct.wl1251_sdio* }
%struct.wl1251_sdio = type { %struct.sdio_func* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdio_func* (%struct.wl1251*)* @wl_to_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdio_func* @wl_to_func(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.wl1251_sdio*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %4 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %5 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %4, i32 0, i32 0
  %6 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %5, align 8
  store %struct.wl1251_sdio* %6, %struct.wl1251_sdio** %3, align 8
  %7 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %3, align 8
  %8 = getelementptr inbounds %struct.wl1251_sdio, %struct.wl1251_sdio* %7, i32 0, i32 0
  %9 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  ret %struct.sdio_func* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
