; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_sdio.c_ssb_sdio_scan_switch_coreidx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_sdio.c_ssb_sdio_scan_switch_coreidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@SSB_CORE_SIZE = common dso_local global i32 0, align 4
@SSB_ENUM_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"failed to switch to core %u, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_sdio_scan_switch_coreidx(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SSB_CORE_SIZE, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @SSB_ENUM_BASE, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sdio_claim_host(i32 %15)
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @ssb_sdio_set_sbaddr_window(%struct.ssb_bus* %17, i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %21 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sdio_release_host(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %28 = call i32 @ssb_sdio_dev(%struct.ssb_bus* %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @ssb_sdio_set_sbaddr_window(%struct.ssb_bus*, i64) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ssb_sdio_dev(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
