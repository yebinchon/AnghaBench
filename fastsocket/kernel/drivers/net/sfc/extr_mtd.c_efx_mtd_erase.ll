; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_efx_mtd_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mtd.c_efx_mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.efx_mtd* }
%struct.efx_mtd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mtd_info*, i32, i32)* }
%struct.erase_info = type { i32, i32, i32, i32 }

@MTD_ERASE_DONE = common dso_local global i32 0, align 4
@MTD_ERASE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @efx_mtd_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mtd_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.erase_info*, align 8
  %5 = alloca %struct.efx_mtd*, align 8
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.erase_info* %1, %struct.erase_info** %4, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.efx_mtd*, %struct.efx_mtd** %8, align 8
  store %struct.efx_mtd* %9, %struct.efx_mtd** %5, align 8
  %10 = load %struct.efx_mtd*, %struct.efx_mtd** %5, align 8
  %11 = getelementptr inbounds %struct.efx_mtd, %struct.efx_mtd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mtd_info*, i32, i32)*, i32 (%struct.mtd_info*, i32, i32)** %13, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %16 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %17 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %20 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %14(%struct.mtd_info* %15, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @MTD_ERASE_DONE, align 4
  %27 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %28 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @MTD_ERASE_FAILED, align 4
  %31 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %32 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %34 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %25
  %36 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %37 = call i32 @mtd_erase_callback(%struct.erase_info* %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @mtd_erase_callback(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
