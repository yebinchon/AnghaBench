; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_transfer_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i64, i64, i32, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }
%struct.page = type { i32 }

@TIFM_MMCSD_FIFO_SIZE = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DATA_CARRY = common dso_local global i32 0, align 4
@SOCK_MMCSD_DATA = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_sd*)* @tifm_sd_transfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_transfer_data(%struct.tifm_sd* %0) #0 {
  %2 = alloca %struct.tifm_sd*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  store %struct.tifm_sd* %0, %struct.tifm_sd** %2, align 8
  %11 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %12 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %11, i32 0, i32 6
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  store %struct.mmc_data* %17, %struct.mmc_data** %3, align 8
  %18 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 1
  %20 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  store %struct.scatterlist* %20, %struct.scatterlist** %4, align 8
  %21 = load i32, i32* @TIFM_MMCSD_FIFO_SIZE, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %24 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %27 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %168

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %159, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %168

35:                                               ; preds = %32
  %36 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %37 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %38 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %36, i64 %39
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %44 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sub i32 %42, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %100, label %49

49:                                               ; preds = %35
  %50 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %51 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %53 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %57 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %60 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %49
  %64 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MMC_DATA_WRITE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %63
  %71 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %72 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DATA_CARRY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %70
  %78 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %79 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %84 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %83, i32 0, i32 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SOCK_MMCSD_DATA, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 %82, i64 %89)
  br label %91

91:                                               ; preds = %77, %70, %63
  br label %168

92:                                               ; preds = %49
  %93 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %94 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %95 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %93, i64 %96
  %98 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %92, %35
  %101 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %102 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %103 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %101, i64 %104
  %106 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %109 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add i32 %107, %110
  store i32 %111, i32* %5, align 4
  %112 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %113 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %114 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %112, i64 %115
  %117 = call i32 @sg_page(%struct.scatterlist* %116)
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @PAGE_SHIFT, align 4
  %120 = lshr i32 %118, %119
  %121 = call %struct.page* @nth_page(i32 %117, i32 %120)
  store %struct.page* %121, %struct.page** %10, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @offset_in_page(i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* @PAGE_SIZE, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sub i32 %124, %125
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @min(i32 %127, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @min(i32 %130, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %134 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MMC_DATA_READ, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %100
  %140 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %141 = load %struct.page*, %struct.page** %10, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @tifm_sd_read_fifo(%struct.tifm_sd* %140, %struct.page* %141, i32 %142, i32 %143)
  br label %159

145:                                              ; preds = %100
  %146 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %147 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @MMC_DATA_WRITE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %154 = load %struct.page*, %struct.page** %10, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @tifm_sd_write_fifo(%struct.tifm_sd* %153, %struct.page* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %152, %145
  br label %159

159:                                              ; preds = %158, %139
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %7, align 4
  %162 = sub i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %165 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = add i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %32

168:                                              ; preds = %30, %91, %32
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.page* @nth_page(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tifm_sd_read_fifo(%struct.tifm_sd*, %struct.page*, i32, i32) #1

declare dso_local i32 @tifm_sd_write_fifo(%struct.tifm_sd*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
