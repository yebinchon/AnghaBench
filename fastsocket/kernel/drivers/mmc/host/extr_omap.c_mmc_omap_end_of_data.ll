; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_end_of_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_end_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, i32, i64, i32 }
%struct.mmc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_data*)* @mmc_omap_end_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_end_of_data(%struct.mmc_omap_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %7 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %13 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %14 = call i32 @mmc_omap_xfer_done(%struct.mmc_omap_host* %12, %struct.mmc_data* %13)
  br label %39

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %16 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %16, i32 0, i32 1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %28

25:                                               ; preds = %15
  %26 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %24
  %29 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %29, i32 0, i32 1
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %37 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %38 = call i32 @mmc_omap_xfer_done(%struct.mmc_omap_host* %36, %struct.mmc_data* %37)
  br label %39

39:                                               ; preds = %11, %35, %28
  ret void
}

declare dso_local i32 @mmc_omap_xfer_done(%struct.mmc_omap_host*, %struct.mmc_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
