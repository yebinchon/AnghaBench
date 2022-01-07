; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_adv_get_sglist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_adv_get_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asc_board = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.scsi_cmnd = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"no free adv_sgblk_t\0A\00", align 1
@adv_build_nosg = common dso_local global i32 0, align 4
@ASC_BUSY = common dso_local global i32 0, align 4
@NO_OF_SG_PER_BLOCK = common dso_local global i32 0, align 4
@xfer_sect = common dso_local global i32 0, align 4
@ADV_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asc_board*, %struct.TYPE_12__*, %struct.scsi_cmnd*, i32)* @adv_get_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv_get_sglist(%struct.asc_board* %0, %struct.TYPE_12__* %1, %struct.scsi_cmnd* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.asc_board*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.asc_board* %0, %struct.asc_board** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = call i64 @ADV_32BALIGN(i32* %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %11, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %23 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %22)
  store %struct.scatterlist* %23, %struct.scatterlist** %12, align 8
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %13, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %15, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %26, align 8
  br label %27

27:                                               ; preds = %158, %4
  %28 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %29 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %10, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  %33 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @adv_build_nosg, align 4
  %40 = call i32 @ASC_STATS(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %46, %32
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %10, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %51, align 8
  %52 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %53 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %59 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %58, i32 0, i32 0
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %59, align 8
  br label %41

60:                                               ; preds = %41
  %61 = load i32, i32* @ASC_BUSY, align 4
  store i32 %61, i32* %5, align 4
  br label %163

62:                                               ; preds = %27
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %67 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %66, i32 0, i32 0
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = call i64 @ADV_8BALIGN(i32* %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %14, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %75 = call i32 @virt_to_bus(%struct.TYPE_13__* %74)
  store i32 %75, i32* %16, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = icmp eq %struct.TYPE_11__* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %62
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %86, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %105

91:                                               ; preds = %62
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %99, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %91, %80
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %155, %105
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* @NO_OF_SG_PER_BLOCK, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %158

110:                                              ; preds = %106
  %111 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %112 = call i32 @sg_dma_address(%struct.scatterlist* %111)
  %113 = call i8* @cpu_to_le32(i32 %112)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  store i8* %113, i8** %120, align 8
  %121 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %122 = call i32 @sg_dma_len(%struct.scatterlist* %121)
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i8* %123, i8** %130, align 8
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @xfer_sect, align 4
  %137 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %138 = call i32 @sg_dma_len(%struct.scatterlist* %137)
  %139 = call i32 @DIV_ROUND_UP(i32 %138, i32 512)
  %140 = call i32 @ASC_STATS_ADD(i32 %135, i32 %136, i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %13, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %110
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %145, 1
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  %151 = load i32, i32* @ADV_SUCCESS, align 4
  store i32 %151, i32* %5, align 4
  br label %163

152:                                              ; preds = %110
  %153 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %154 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %153, i32 1
  store %struct.scatterlist* %154, %struct.scatterlist** %12, align 8
  br label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %17, align 4
  br label %106

158:                                              ; preds = %106
  %159 = load i32, i32* @NO_OF_SG_PER_BLOCK, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %162, %struct.TYPE_13__** %15, align 8
  br label %27

163:                                              ; preds = %144, %60
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i64 @ADV_32BALIGN(i32*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @ASC_DBG(i32, i8*) #1

declare dso_local i32 @ASC_STATS(i32, i32) #1

declare dso_local i64 @ADV_8BALIGN(i32*) #1

declare dso_local i32 @virt_to_bus(%struct.TYPE_13__*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @ASC_STATS_ADD(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
