; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mv64x60_edac.c_mv64x60_mc_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mv64x60_edac.c_mv64x60_mc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.mv64x60_mc_pdata* }
%struct.mv64x60_mc_pdata = type { i64 }

@MV64X60_SDRAM_ERR_ADDR = common dso_local global i64 0, align 8
@MV64X60_SDRAM_ERR_ECC_RCVD = common dso_local global i64 0, align 8
@MV64X60_SDRAM_ERR_ECC_CALC = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @mv64x60_mc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64x60_mc_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.mv64x60_mc_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %9 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %10 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %9, i32 0, i32 1
  %11 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %10, align 8
  store %struct.mv64x60_mc_pdata* %11, %struct.mv64x60_mc_pdata** %3, align 8
  %12 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %3, align 8
  %13 = getelementptr inbounds %struct.mv64x60_mc_pdata, %struct.mv64x60_mc_pdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MV64X60_SDRAM_ERR_ADDR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @in_le32(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %74

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, -4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %3, align 8
  %25 = getelementptr inbounds %struct.mv64x60_mc_pdata, %struct.mv64x60_mc_pdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MV64X60_SDRAM_ERR_ECC_RCVD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @in_le32(i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %3, align 8
  %31 = getelementptr inbounds %struct.mv64x60_mc_pdata, %struct.mv64x60_mc_pdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MV64X60_SDRAM_ERR_ECC_CALC, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @in_le32(i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %21
  %43 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PAGE_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PAGE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %52 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %43, i32 %46, i32 %49, i32 %50, i32 0, i32 0, i32 %53)
  br label %67

55:                                               ; preds = %21
  %56 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @PAGE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %64 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %56, i32 %59, i32 %62, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %55, %42
  %68 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %3, align 8
  %69 = getelementptr inbounds %struct.mv64x60_mc_pdata, %struct.mv64x60_mc_pdata* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MV64X60_SDRAM_ERR_ADDR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @out_le32(i64 %72, i32 0)
  br label %74

74:                                               ; preds = %67, %20
  ret void
}

declare dso_local i32 @in_le32(i64) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i32) #1

declare dso_local i32 @out_le32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
