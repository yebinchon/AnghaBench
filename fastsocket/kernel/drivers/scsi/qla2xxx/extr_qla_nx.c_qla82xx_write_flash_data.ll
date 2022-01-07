; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_write_flash_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_write_flash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OPTROM_BURST_DWORDS = common dso_local global i32 0, align 4
@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate memory for optrom burst write (%x KB).\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to unprotect flash for update.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to erase sector: address=%x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Unable to burst-write optrom segment (%x/%x/%llx).\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Reverting to slow-write.\0A\00", align 1
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Unable to program flash address=%x data=%x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unable to protect flash after update.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32*, i32, i32)* @qla82xx_write_flash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_write_flash_data(%struct.scsi_qla_host* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 0
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %16, align 8
  store i32 -1, i32* %9, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 4095
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @dma_alloc_coherent(i32* %34, i32 %35, i64* %13, i32 %36)
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ql_log_warn, align 4
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %43 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %44 = sdiv i32 %43, 1024
  %45 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %41, %struct.scsi_qla_host* %42, i32 45083, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %30
  br label %47

47:                                               ; preds = %46, %26, %22, %4
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = xor i32 %52, -1
  store i32 %53, i32* %11, align 4
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %55 = call i32 @qla82xx_unprotect_flash(%struct.qla_hw_data* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @ql_log_warn, align 4
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %61 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %59, %struct.scsi_qla_host* %60, i32 45084, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %181

62:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %164, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %171

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @qla82xx_erase_sector(%struct.qla_hw_data* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* @ql_log_warn, align 4
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %79, %struct.scsi_qla_host* %80, i32 45085, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %171

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %67
  %85 = load i8*, i8** %14, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %147

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %147

93:                                               ; preds = %87
  %94 = load i8*, i8** %14, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %97 = call i32 @memcpy(i8* %94, i32* %95, i32 %96)
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %106 = call i32 @qla2x00_load_ram(%struct.scsi_qla_host* %98, i64 %99, i32 %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @QLA_SUCCESS, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %93
  %111 = load i32, i32* @ql_log_warn, align 4
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %116, %117
  %119 = load i64, i64* %13, align 8
  %120 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %111, %struct.scsi_qla_host* %112, i32 45086, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %118, i64 %119)
  %121 = load i32, i32* @ql_log_warn, align 4
  %122 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %123 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %121, %struct.scsi_qla_host* %122, i32 45087, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %124 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %125 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %129 = load i8*, i8** %14, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @dma_free_coherent(i32* %127, i32 %128, i8* %129, i64 %130)
  store i8* null, i8** %14, align 8
  br label %146

132:                                              ; preds = %93
  %133 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %138 = sub nsw i32 %137, 1
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %142 = sub nsw i32 %141, 1
  %143 = load i32*, i32** %6, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %6, align 8
  br label %164

146:                                              ; preds = %110
  br label %147

147:                                              ; preds = %146, %87, %84
  %148 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @cpu_to_le32(i32 %151)
  %153 = call i32 @qla82xx_write_flash_dword(%struct.qla_hw_data* %148, i32 %149, i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load i32, i32* @ql_dbg_p3p, align 4
  %158 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ql_dbg(i32 %157, %struct.scsi_qla_host* %158, i32 45088, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %159, i32 %161)
  br label %171

163:                                              ; preds = %147
  br label %164

164:                                              ; preds = %163, %132
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 4
  store i32 %168, i32* %7, align 4
  %169 = load i32*, i32** %6, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %6, align 8
  br label %63

171:                                              ; preds = %156, %78, %63
  %172 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %173 = call i32 @qla82xx_protect_flash(%struct.qla_hw_data* %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @ql_log_warn, align 4
  %178 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %179 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %177, %struct.scsi_qla_host* %178, i32 45089, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %180

180:                                              ; preds = %176, %171
  br label %181

181:                                              ; preds = %180, %58
  %182 = load i8*, i8** %14, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %186 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %185, i32 0, i32 2
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %190 = load i8*, i8** %14, align 8
  %191 = load i64, i64* %13, align 8
  %192 = call i32 @dma_free_coherent(i32* %188, i32 %189, i8* %190, i64 %191)
  br label %193

193:                                              ; preds = %184, %181
  %194 = load i32, i32* %9, align 4
  ret i32 %194
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @qla82xx_unprotect_flash(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_erase_sector(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @qla2x00_load_ram(%struct.scsi_qla_host*, i64, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

declare dso_local i32 @qla82xx_write_flash_dword(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32) #1

declare dso_local i32 @qla82xx_protect_flash(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
