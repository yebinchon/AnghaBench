; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_pre_dma_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_pre_dma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91mci_host = type { i64, %struct.mmc_command* }
%struct.mmc_command = type { %struct.mmc_data* }
%struct.mmc_data = type { i64, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"pre dma read\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"no command\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"no data\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Nothing left to transfer (index = %d)\0A\00", align 1
@ATMEL_PDC_RCR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Transfer active in current\0A\00", align 1
@ATMEL_PDC_RNCR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Transfer active in next\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Using transfer index %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"sg = %p\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"dma address = %08X, length = %d\0A\00", align 1
@ATMEL_PDC_RPR = common dso_local global i32 0, align 4
@ATMEL_PDC_RNPR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"pre dma read done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91mci_host*)* @at91_mci_pre_dma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_mci_pre_dma_read(%struct.at91mci_host* %0) #0 {
  %2 = alloca %struct.at91mci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  store %struct.at91mci_host* %0, %struct.at91mci_host** %2, align 8
  %7 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %9 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %8, i32 0, i32 1
  %10 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  store %struct.mmc_command* %10, %struct.mmc_command** %5, align 8
  %11 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %12 = icmp ne %struct.mmc_command* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %153

15:                                               ; preds = %1
  %16 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %16, i32 0, i32 0
  %18 = load %struct.mmc_data*, %struct.mmc_data** %17, align 8
  store %struct.mmc_data* %18, %struct.mmc_data** %6, align 8
  %19 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %20 = icmp ne %struct.mmc_data* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %153

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %148, %23
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %151

27:                                               ; preds = %24
  %28 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %29 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %37 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  br label %151

40:                                               ; preds = %27
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %45 = load i32, i32* @ATMEL_PDC_RCR, align 4
  %46 = call i64 @at91_mci_read(%struct.at91mci_host* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %148

50:                                               ; preds = %43
  br label %59

51:                                               ; preds = %40
  %52 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %53 = load i32, i32* @ATMEL_PDC_RNCR, align 4
  %54 = call i64 @at91_mci_read(%struct.at91mci_host* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %148

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %50
  %60 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %61 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %62)
  %64 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 2
  %66 = load %struct.scatterlist*, %struct.scatterlist** %65, align 8
  %67 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %68 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %66, i64 %69
  store %struct.scatterlist* %71, %struct.scatterlist** %4, align 8
  %72 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %73 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.scatterlist* %72)
  %74 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %75 = call i32 @sg_page(%struct.scatterlist* %74)
  %76 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %77 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %80 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %83 = call i32 @dma_map_page(i32* null, i32 %75, i32 %78, i32 %81, i32 %82)
  %84 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %85 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %87 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %90 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load i32, i32* %3, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %59
  %96 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %97 = load i32, i32* @ATMEL_PDC_RPR, align 4
  %98 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %99 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @at91_mci_write(%struct.at91mci_host* %96, i32 %97, i32 %100)
  %102 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %103 = load i32, i32* @ATMEL_PDC_RCR, align 4
  %104 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %105 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 3
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %95
  %110 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %111 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  br label %118

113:                                              ; preds = %95
  %114 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %115 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, 4
  br label %118

118:                                              ; preds = %113, %109
  %119 = phi i32 [ %112, %109 ], [ %117, %113 ]
  %120 = call i32 @at91_mci_write(%struct.at91mci_host* %102, i32 %103, i32 %119)
  br label %147

121:                                              ; preds = %59
  %122 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %123 = load i32, i32* @ATMEL_PDC_RNPR, align 4
  %124 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %125 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @at91_mci_write(%struct.at91mci_host* %122, i32 %123, i32 %126)
  %128 = load %struct.at91mci_host*, %struct.at91mci_host** %2, align 8
  %129 = load i32, i32* @ATMEL_PDC_RNCR, align 4
  %130 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %131 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, 3
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %121
  %136 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %137 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  br label %144

139:                                              ; preds = %121
  %140 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %141 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %142, 4
  br label %144

144:                                              ; preds = %139, %135
  %145 = phi i32 [ %138, %135 ], [ %143, %139 ]
  %146 = call i32 @at91_mci_write(%struct.at91mci_host* %128, i32 %129, i32 %145)
  br label %147

147:                                              ; preds = %144, %118
  br label %148

148:                                              ; preds = %147, %56, %48
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %24

151:                                              ; preds = %35, %24
  %152 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %21, %13
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @at91_mci_read(%struct.at91mci_host*, i32) #1

declare dso_local i32 @dma_map_page(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @at91_mci_write(%struct.at91mci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
