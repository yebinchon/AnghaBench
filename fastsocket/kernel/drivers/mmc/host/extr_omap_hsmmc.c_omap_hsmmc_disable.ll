; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.omap_hsmmc_host = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"UNKNOWN state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @omap_hsmmc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_disable(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_hsmmc_host*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %9 = call %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.omap_hsmmc_host* %9, %struct.omap_hsmmc_host** %6, align 8
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %30 [
    i32 129, label %13
    i32 130, label %24
    i32 131, label %27
    i32 128, label %27
  ]

13:                                               ; preds = %2
  %14 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %15 = call i32 @omap_hsmmc_enabled_to_disabled(%struct.omap_hsmmc_host* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %26 = call i32 @omap_hsmmc_disabled_to_sleep(%struct.omap_hsmmc_host* %25)
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %2, %2
  %28 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %29 = call i32 @omap_hsmmc_sleep_to_off(%struct.omap_hsmmc_host* %28)
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mmc_dev(i32 %33)
  %35 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %27, %24, %23, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @omap_hsmmc_enabled_to_disabled(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @omap_hsmmc_disabled_to_sleep(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @omap_hsmmc_sleep_to_off(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
