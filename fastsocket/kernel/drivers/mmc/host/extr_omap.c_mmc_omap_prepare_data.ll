; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_prepare_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, i32, i32, i32, i64, i64, i32, i64, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }

@BLEN = common dso_local global i32 0, align 4
@NBLK = common dso_local global i32 0, align 4
@BUF = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_request*)* @mmc_omap_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_prepare_data(%struct.mmc_omap_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %11 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %11, i32 0, i32 0
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %5, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %15, i32 0, i32 8
  store %struct.mmc_data* %14, %struct.mmc_data** %16, align 8
  %17 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %18 = icmp eq %struct.mmc_data* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %21 = load i32, i32* @BLEN, align 4
  %22 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %20, i32 %21, i32 0)
  %23 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %24 = load i32, i32* @NBLK, align 4
  %25 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %23, i32 %24, i32 0)
  %26 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %27 = load i32, i32* @BUF, align 4
  %28 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %26, i32 %27, i32 0)
  %29 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %32 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %33 = call i32 @set_cmd_timeout(%struct.mmc_omap_host* %31, %struct.mmc_request* %32)
  br label %162

34:                                               ; preds = %2
  %35 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %39 = load i32, i32* @NBLK, align 4
  %40 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %38, i32 %39, i32 %43)
  %45 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %46 = load i32, i32* @BLEN, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %45, i32 %46, i32 %48)
  %50 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %51 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %52 = call i32 @set_data_timeout(%struct.mmc_omap_host* %50, %struct.mmc_request* %51)
  %53 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %34
  br label %62

58:                                               ; preds = %34
  %59 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %60 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i32 [ 1, %57 ], [ %61, %58 ]
  store i32 %63, i32* %9, align 4
  %64 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %76 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = srem i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %91

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %70

91:                                               ; preds = %86, %70
  br label %92

92:                                               ; preds = %91, %62
  %93 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %94 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %93, i32 0, i32 7
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %141

97:                                               ; preds = %92
  %98 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %99 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %100 = call i64 @mmc_omap_get_dma_channel(%struct.mmc_omap_host* %98, %struct.mmc_data* %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %97
  %103 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %104 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MMC_DATA_WRITE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %110, i32* %10, align 4
  br label %113

111:                                              ; preds = %102
  %112 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %115 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @mmc_dev(i32 %116)
  %118 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %119 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %118, i32 0, i32 4
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @dma_map_sg(i32 %117, %struct.TYPE_2__* %120, i32 %121, i32 %122)
  %124 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %125 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %127 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %126, i32 0, i32 3
  store i32 0, i32* %127, align 4
  %128 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %129 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %130 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %129, i32 0, i32 0
  %131 = load %struct.mmc_data*, %struct.mmc_data** %130, align 8
  %132 = call i32 @mmc_omap_prepare_dma(%struct.mmc_omap_host* %128, %struct.mmc_data* %131)
  %133 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %134 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %136 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %138 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  br label %140

139:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %113
  br label %141

141:                                              ; preds = %140, %92
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %141
  %145 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %146 = load i32, i32* @BUF, align 4
  %147 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %145, i32 %146, i32 7967)
  %148 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %149 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %8, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %154 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %157 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %159 = call i32 @mmc_omap_sg_to_buf(%struct.mmc_omap_host* %158)
  %160 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %161 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %19, %144, %141
  ret void
}

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

declare dso_local i32 @set_cmd_timeout(%struct.mmc_omap_host*, %struct.mmc_request*) #1

declare dso_local i32 @set_data_timeout(%struct.mmc_omap_host*, %struct.mmc_request*) #1

declare dso_local i64 @mmc_omap_get_dma_channel(%struct.mmc_omap_host*, %struct.mmc_data*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_omap_prepare_dma(%struct.mmc_omap_host*, %struct.mmc_data*) #1

declare dso_local i32 @mmc_omap_sg_to_buf(%struct.mmc_omap_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
