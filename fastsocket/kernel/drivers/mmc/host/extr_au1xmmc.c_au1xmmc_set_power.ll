; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_set_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*, i32)* @au1xmmc_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_set_power(%struct.au1xmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.au1xmmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = icmp ne i32 (i32, i32)* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %21(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
