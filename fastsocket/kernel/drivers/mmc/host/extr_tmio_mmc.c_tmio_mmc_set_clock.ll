; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CNF_SD_CLK_MODE = common dso_local global i32 0, align 4
@CTL_SD_CARD_CLK_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i32)* @tmio_mmc_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_set_clock(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  store i32 -2147483520, i32* %5, align 4
  br label %15

15:                                               ; preds = %23, %9
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 1
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 256
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %31 = load i32, i32* @CNF_SD_CLK_MODE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 22
  %34 = call i32 @sd_config_write8(%struct.tmio_mmc_host* %30, i32 %31, i32 %33)
  %35 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %36 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 511
  %39 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %35, i32 %36, i32 %38)
  ret void
}

declare dso_local i32 @sd_config_write8(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
