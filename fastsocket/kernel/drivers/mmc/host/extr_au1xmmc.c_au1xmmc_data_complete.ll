; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_data_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.mmc_request* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mmc_request = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i64, i32, i32, i32 }

@HOST_S_DATA = common dso_local global i64 0, align 8
@HOST_S_STOP = common dso_local global i64 0, align 8
@HOST_F_XMIT = common dso_local global i32 0, align 4
@SD_STATUS_DB = common dso_local global i32 0, align 4
@SD_STATUS_WC = common dso_local global i32 0, align 4
@SD_STATUS_RC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@HOST_F_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*, i32)* @au1xmmc_data_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_data_complete(%struct.au1xmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.au1xmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %8, i32 0, i32 5
  %10 = load %struct.mmc_request*, %struct.mmc_request** %9, align 8
  store %struct.mmc_request* %10, %struct.mmc_request** %5, align 8
  %11 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HOST_S_DATA, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HOST_S_STOP, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i1 [ false, %2 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %26, i32 0, i32 5
  %28 = load %struct.mmc_request*, %struct.mmc_request** %27, align 8
  %29 = icmp eq %struct.mmc_request* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %148

31:                                               ; preds = %22
  %32 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.mmc_data*, %struct.mmc_data** %35, align 8
  store %struct.mmc_data* %36, %struct.mmc_data** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %41 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %40)
  %42 = call i32 @au_readl(i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %58, %43
  %45 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %46 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @HOST_F_XMIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SD_STATUS_DB, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %51, %44
  %57 = phi i1 [ false, %44 ], [ %55, %51 ]
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %60 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %59)
  %61 = call i32 @au_readl(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %44

62:                                               ; preds = %56
  %63 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %64 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %63, i32 0, i32 3
  store i32 0, i32* %64, align 8
  %65 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %66 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mmc_dev(i32 %67)
  %69 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %70 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %76 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dma_unmap_sg(i32 %68, i32 %71, i32 %74, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @SD_STATUS_WC, align 4
  %82 = load i32, i32* @SD_STATUS_RC, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %86 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @HOST_F_XMIT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %62
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 7
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 0, i32 1
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %91, %62
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* @EILSEQ, align 4
  %104 = sub nsw i32 0, %103
  %105 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %106 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i32, i32* @SD_STATUS_WC, align 4
  %109 = load i32, i32* @SD_STATUS_RC, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %112 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %111)
  %113 = call i32 @au_writel(i32 %110, i32 %112)
  %114 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %115 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %117 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %145, label %120

120:                                              ; preds = %107
  %121 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %122 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @HOST_F_DMA, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %144

128:                                              ; preds = %120
  %129 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %130 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %133 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %131, %134
  %136 = sext i32 %135 to i64
  %137 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %138 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %136, %140
  %142 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %143 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %128, %127
  br label %145

145:                                              ; preds = %144, %107
  %146 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %147 = call i32 @au1xmmc_finish_request(%struct.au1xmmc_host* %146)
  br label %148

148:                                              ; preds = %145, %30
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @HOST_STATUS(%struct.au1xmmc_host*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au1xmmc_finish_request(%struct.au1xmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
