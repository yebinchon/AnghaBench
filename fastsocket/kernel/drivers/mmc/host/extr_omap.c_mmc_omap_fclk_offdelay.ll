; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_fclk_offdelay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_fclk_offdelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_slot = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_slot*)* @mmc_omap_fclk_offdelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_fclk_offdelay(%struct.mmc_omap_slot* %0) #0 {
  %2 = alloca %struct.mmc_omap_slot*, align 8
  %3 = alloca i64, align 8
  store %struct.mmc_omap_slot* %0, %struct.mmc_omap_slot** %2, align 8
  %4 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %5 = icmp ne %struct.mmc_omap_slot* %4, null
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %6
  %14 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %20 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 1000000000, %21
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %2, align 8
  %25 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %23, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ndelay(i32 %31)
  br label %33

33:                                               ; preds = %18, %13, %6, %1
  ret void
}

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
