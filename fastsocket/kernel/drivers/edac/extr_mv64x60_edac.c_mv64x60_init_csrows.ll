; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mv64x60_edac.c_mv64x60_init_csrows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mv64x60_edac.c_mv64x60_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.csrow_info* }
%struct.csrow_info = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.mv64x60_mc_pdata = type { i32, i64 }

@MV64X60_SDRAM_CONFIG = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MV64X60_SDRAM_REGISTERED = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@MEM_DDR = common dso_local global i32 0, align 4
@DEV_X32 = common dso_local global i32 0, align 4
@DEV_X16 = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.mv64x60_mc_pdata*)* @mv64x60_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64x60_init_csrows(%struct.mem_ctl_info* %0, %struct.mv64x60_mc_pdata* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.mv64x60_mc_pdata*, align 8
  %5 = alloca %struct.csrow_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.mv64x60_mc_pdata* %1, %struct.mv64x60_mc_pdata** %4, align 8
  %8 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %4, align 8
  %9 = call i32 @get_total_mem(%struct.mv64x60_mc_pdata* %8)
  %10 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %4, align 8
  %11 = getelementptr inbounds %struct.mv64x60_mc_pdata, %struct.mv64x60_mc_pdata* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MV64X60_SDRAM_CONFIG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @in_le32(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %17 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %16, i32 0, i32 0
  %18 = load %struct.csrow_info*, %struct.csrow_info** %17, align 8
  %19 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %18, i64 0
  store %struct.csrow_info* %19, %struct.csrow_info** %5, align 8
  %20 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %21 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.mv64x60_mc_pdata, %struct.mv64x60_mc_pdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %28 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %30 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %33 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = sub nsw i64 %36, 1
  %38 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %39 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %38, i32 0, i32 6
  store i64 %37, i64* %39, align 8
  %40 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %41 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %40, i32 0, i32 1
  store i32 8, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MV64X60_SDRAM_REGISTERED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* @MEM_RDDR, align 4
  br label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @MEM_DDR, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %53 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 20
  %56 = and i32 %55, 3
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %70 [
    i32 0, label %58
    i32 2, label %62
    i32 3, label %66
  ]

58:                                               ; preds = %50
  %59 = load i32, i32* @DEV_X32, align 4
  %60 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %61 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %74

62:                                               ; preds = %50
  %63 = load i32, i32* @DEV_X16, align 4
  %64 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %65 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %74

66:                                               ; preds = %50
  %67 = load i32, i32* @DEV_X4, align 4
  %68 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %69 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %74

70:                                               ; preds = %50
  %71 = load i32, i32* @DEV_UNKNOWN, align 4
  %72 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %73 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66, %62, %58
  %75 = load i32, i32* @EDAC_SECDED, align 4
  %76 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %77 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  ret void
}

declare dso_local i32 @get_total_mem(%struct.mv64x60_mc_pdata*) #1

declare dso_local i32 @in_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
