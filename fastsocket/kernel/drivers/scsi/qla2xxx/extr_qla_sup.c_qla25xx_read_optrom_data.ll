; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla25xx_read_optrom_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla25xx_read_optrom_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Unable to allocate memory for optrom burst read (%x KB).\0A\00", align 1
@OPTROM_BURST_DWORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unable to burst-read optrom segment (%x/%x/%llx).\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Reverting to slow-read.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @qla25xx_read_optrom_data(%struct.scsi_qla_host* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 0
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  store %struct.qla_hw_data* %20, %struct.qla_hw_data** %17, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %22 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %26 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %4
  br label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 4095
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %129

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %129

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @dma_alloc_coherent(i32* %44, i32 %45, i64* %11, i32 %46)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @ql_log_warn, align 4
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %53 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %54 = sdiv i32 %53, 1024
  %55 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %51, %struct.scsi_qla_host* %52, i32 204, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %129

56:                                               ; preds = %40
  %57 = load i32*, i32** %7, align 8
  store i32* %57, i32** %13, align 8
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, 2
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %9, align 4
  %61 = ashr i32 %60, 2
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %102, %56
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %119

66:                                               ; preds = %63
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @flash_data_addr(%struct.qla_hw_data* %75, i32 %76)
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @qla2x00_dump_ram(%struct.scsi_qla_host* %73, i64 %74, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %72
  %83 = load i32, i32* @ql_log_warn, align 4
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @flash_data_addr(%struct.qla_hw_data* %86, i32 %87)
  %89 = load i64, i64* %11, align 8
  %90 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %83, %struct.scsi_qla_host* %84, i32 245, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %88, i64 %89)
  %91 = load i32, i32* @ql_log_warn, align 4
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %93 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %91, %struct.scsi_qla_host* %92, i32 246, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %99 = load i8*, i8** %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @dma_free_coherent(i32* %97, i32 %98, i8* %99, i64 %100)
  br label %129

102:                                              ; preds = %72
  %103 = load i32*, i32** %13, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* %16, align 4
  %106 = mul nsw i32 %105, 4
  %107 = call i32 @memcpy(i32* %103, i8* %104, i32 %106)
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %16, align 4
  %115 = mul nsw i32 %114, 4
  %116 = load i32*, i32** %13, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %13, align 8
  br label %63

119:                                              ; preds = %63
  %120 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %121 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %125 = load i8*, i8** %12, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @dma_free_coherent(i32* %123, i32 %124, i8* %125, i64 %126)
  %128 = load i32*, i32** %7, align 8
  store i32* %128, i32** %5, align 8
  br label %135

129:                                              ; preds = %82, %50, %38, %33
  %130 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32* @qla24xx_read_optrom_data(%struct.scsi_qla_host* %130, i32* %131, i32 %132, i32 %133)
  store i32* %134, i32** %5, align 8
  br label %135

135:                                              ; preds = %129, %119
  %136 = load i32*, i32** %5, align 8
  ret i32* %136
}

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_dump_ram(%struct.scsi_qla_host*, i64, i32, i32) #1

declare dso_local i32 @flash_data_addr(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32* @qla24xx_read_optrom_data(%struct.scsi_qla_host*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
