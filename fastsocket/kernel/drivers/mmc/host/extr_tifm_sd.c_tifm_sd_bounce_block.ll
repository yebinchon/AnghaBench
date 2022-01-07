; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_bounce_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_bounce_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i64, i32, i64, %struct.scatterlist, %struct.TYPE_2__* }
%struct.scatterlist = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32, %struct.scatterlist* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"bouncing block\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_sd*, %struct.mmc_data*)* @tifm_sd_bounce_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_bounce_block(%struct.tifm_sd* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.tifm_sd*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.tifm_sd* %0, %struct.tifm_sd** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %12 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 2
  %14 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  store %struct.scatterlist* %14, %struct.scatterlist** %5, align 8
  %15 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %19 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %136, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %145

26:                                               ; preds = %23
  %27 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %28 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %29 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %27, i64 %30
  %32 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %35 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub i32 %33, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %26
  %41 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %42 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  %43 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %44 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %48 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %51 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %145

55:                                               ; preds = %40
  %56 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %57 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %58 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i64 %59
  %61 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %55, %26
  %64 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %65 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %66 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %64, i64 %67
  %69 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %72 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add i32 %70, %73
  store i32 %74, i32* %7, align 4
  %75 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %76 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %77 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %75, i64 %78
  %80 = call %struct.page* @sg_page(%struct.scatterlist* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PAGE_SHIFT, align 4
  %83 = lshr i32 %81, %82
  %84 = call %struct.page* @nth_page(%struct.page* %80, i32 %83)
  store %struct.page* %84, %struct.page** %11, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @offset_in_page(i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub i32 %87, %88
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @min(i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @min(i32 %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %97 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MMC_DATA_WRITE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %63
  %103 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %104 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %103, i32 0, i32 3
  %105 = call %struct.page* @sg_page(%struct.scatterlist* %104)
  %106 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %107 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sub i32 %108, %109
  %111 = load %struct.page*, %struct.page** %11, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @tifm_sd_copy_page(%struct.page* %105, i32 %110, %struct.page* %111, i32 %112, i32 %113)
  br label %136

115:                                              ; preds = %63
  %116 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %117 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MMC_DATA_READ, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %115
  %123 = load %struct.page*, %struct.page** %11, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %126 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %125, i32 0, i32 3
  %127 = call %struct.page* @sg_page(%struct.scatterlist* %126)
  %128 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %129 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sub i32 %130, %131
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @tifm_sd_copy_page(%struct.page* %123, i32 %124, %struct.page* %127, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %122, %115
  br label %136

136:                                              ; preds = %135, %102
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %6, align 4
  %139 = sub i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %142 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = add i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %23

145:                                              ; preds = %54, %23
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.page* @nth_page(%struct.page*, i32) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tifm_sd_copy_page(%struct.page*, i32, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
