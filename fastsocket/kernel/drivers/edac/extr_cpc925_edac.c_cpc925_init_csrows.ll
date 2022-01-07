; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cpc925_edac.c_cpc925_init_csrows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cpc925_edac.c_cpc925_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info*, %struct.cpc925_mc_pdata* }
%struct.csrow_info = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.cpc925_mc_pdata = type { i64 }

@REG_MBMR_OFFSET = common dso_local global i64 0, align 8
@REG_MBBAR_OFFSET = common dso_local global i64 0, align 8
@MBMR_BBA_MASK = common dso_local global i32 0, align 4
@MBMR_BBA_SHIFT = common dso_local global i32 0, align 4
@MBBAR_BBA_MASK = common dso_local global i32 0, align 4
@MBBAR_BBA_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MEM_RDDR = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@MBMR_MODE_MASK = common dso_local global i32 0, align 4
@MBMR_MODE_SHIFT = common dso_local global i32 0, align 4
@DEV_X16 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @cpc925_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.cpc925_mc_pdata*, align 8
  %4 = alloca %struct.csrow_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 2
  %13 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %12, align 8
  store %struct.cpc925_mc_pdata* %13, %struct.cpc925_mc_pdata** %3, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %15 = call i32 @get_total_mem(%struct.cpc925_mc_pdata* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %127, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %130

22:                                               ; preds = %16
  %23 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %24 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REG_MBMR_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 32, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @__raw_readl(i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %34 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_MBBAR_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = add nsw i64 %37, 32
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @__raw_readl(i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MBMR_BBA_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @MBMR_BBA_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MBBAR_BBA_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @MBBAR_BBA_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = or i32 %48, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %22
  br label %127

58:                                               ; preds = %22
  %59 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %60 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %59, i32 0, i32 1
  %61 = load %struct.csrow_info*, %struct.csrow_info** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %61, i64 %63
  store %struct.csrow_info* %64, %struct.csrow_info** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 268435456
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %70 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @PAGE_SHIFT, align 8
  %73 = lshr i64 %71, %72
  %74 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %75 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %77 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %80 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %78, %81
  %83 = sub i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %86 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %88 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %10, align 8
  %92 = load i32, i32* @MEM_RDDR, align 4
  %93 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %94 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @EDAC_SECDED, align 4
  %96 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %97 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %99 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %105 [
    i32 1, label %101
    i32 2, label %104
  ]

101:                                              ; preds = %58
  %102 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %103 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %102, i32 0, i32 4
  store i32 32, i32* %103, align 8
  br label %108

104:                                              ; preds = %58
  br label %105

105:                                              ; preds = %58, %104
  %106 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %107 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %106, i32 0, i32 4
  store i32 64, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @MBMR_MODE_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @MBMR_MODE_SHIFT, align 4
  %113 = ashr i32 %111, %112
  switch i32 %113, label %122 [
    i32 6, label %114
    i32 5, label %114
    i32 8, label %114
    i32 7, label %118
    i32 9, label %118
  ]

114:                                              ; preds = %108, %108, %108
  %115 = load i32, i32* @DEV_X16, align 4
  %116 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %117 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  br label %126

118:                                              ; preds = %108, %108
  %119 = load i32, i32* @DEV_X8, align 4
  %120 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %121 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  br label %126

122:                                              ; preds = %108
  %123 = load i32, i32* @DEV_UNKNOWN, align 4
  %124 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %125 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %118, %114
  br label %127

127:                                              ; preds = %126, %57
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %16

130:                                              ; preds = %16
  ret void
}

declare dso_local i32 @get_total_mem(%struct.cpc925_mc_pdata*) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
