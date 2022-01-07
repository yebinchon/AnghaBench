; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_set_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_slot = type { i32, i32, %struct.TYPE_2__*, %struct.mmc_omap_host* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32)* }
%struct.mmc_omap_host = type { i32 }

@CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_slot*, i32, i32)* @mmc_omap_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_set_power(%struct.mmc_omap_slot* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_omap_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_omap_host*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_omap_slot* %0, %struct.mmc_omap_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %9, i32 0, i32 3
  %11 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %10, align 8
  store %struct.mmc_omap_host* %11, %struct.mmc_omap_host** %7, align 8
  %12 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %15, align 8
  %17 = icmp ne i32 (i32, i32, i32, i32)* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %22, align 8
  %24 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mmc_dev(i32 %26)
  %28 = load %struct.mmc_omap_slot*, %struct.mmc_omap_slot** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_omap_slot, %struct.mmc_omap_slot* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 %23(i32 %27, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %18, %3
  %35 = call i64 (...) @cpu_is_omap24xx()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %42 = load i32, i32* @CON, align 4
  %43 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %45 = load i32, i32* @CON, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, 2048
  %48 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %44, i32 %45, i32 %47)
  br label %58

49:                                               ; preds = %37
  %50 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %51 = load i32, i32* @CON, align 4
  %52 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %7, align 8
  %54 = load i32, i32* @CON, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, -2049
  %57 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %53, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %49, %40
  br label %59

59:                                               ; preds = %58, %34
  ret void
}

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i32 @OMAP_MMC_READ(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
