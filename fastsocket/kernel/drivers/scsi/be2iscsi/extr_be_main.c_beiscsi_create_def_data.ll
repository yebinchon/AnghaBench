; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_def_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_def_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_11__, i32, %struct.be_mem_descriptor* }
%struct.TYPE_11__ = type { i32 }
%struct.be_mem_descriptor = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.hwi_context_memory = type { %struct.be_queue_info, %struct.be_queue_info* }
%struct.be_queue_info = type { i32, %struct.be_dma_mem }
%struct.be_dma_mem = type { i64 }
%struct.hwi_controller = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@HWI_MEM_ASYNC_DATA_RING = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BM_%d : be_fill_queue Failed for DEF PDU DATA\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"BM_%d be_cmd_create_default_pdu_queue Failed for DEF PDU DATA\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"BM_%d : iscsi def data id is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"BM_%d : DEFAULT PDU DATA RING CREATED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.hwi_context_memory*, %struct.hwi_controller*, i32)* @beiscsi_create_def_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_create_def_data(%struct.beiscsi_hba* %0, %struct.hwi_context_memory* %1, %struct.hwi_controller* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.hwi_context_memory*, align 8
  %8 = alloca %struct.hwi_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_queue_info*, align 8
  %13 = alloca %struct.be_queue_info*, align 8
  %14 = alloca %struct.be_dma_mem*, align 8
  %15 = alloca %struct.be_mem_descriptor*, align 8
  %16 = alloca i8*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store %struct.hwi_context_memory* %1, %struct.hwi_context_memory** %7, align 8
  store %struct.hwi_controller* %2, %struct.hwi_controller** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %7, align 8
  %18 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %17, i32 0, i32 0
  store %struct.be_queue_info* %18, %struct.be_queue_info** %12, align 8
  %19 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %7, align 8
  %20 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %19, i32 0, i32 1
  %21 = load %struct.be_queue_info*, %struct.be_queue_info** %20, align 8
  %22 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %21, i64 0
  store %struct.be_queue_info* %22, %struct.be_queue_info** %13, align 8
  %23 = load %struct.be_queue_info*, %struct.be_queue_info** %12, align 8
  %24 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %23, i32 0, i32 1
  store %struct.be_dma_mem* %24, %struct.be_dma_mem** %14, align 8
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %26 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %25, i32 0, i32 2
  %27 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %26, align 8
  store %struct.be_mem_descriptor* %27, %struct.be_mem_descriptor** %15, align 8
  %28 = load i32, i32* @HWI_MEM_ASYNC_DATA_RING, align 4
  %29 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %15, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %29, i64 %30
  store %struct.be_mem_descriptor* %31, %struct.be_mem_descriptor** %15, align 8
  %32 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %15, align 8
  %33 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %16, align 8
  %40 = load %struct.be_queue_info*, %struct.be_queue_info** %12, align 8
  %41 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %15, align 8
  %42 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load i8*, i8** %16, align 8
  %51 = call i32 @be_fill_queue(%struct.be_queue_info* %40, i32 %49, i32 4, i8* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %4
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %58 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %114

60:                                               ; preds = %4
  %61 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %15, align 8
  %62 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.be_dma_mem*, %struct.be_dma_mem** %14, align 8
  %73 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %75 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %74, i32 0, i32 1
  %76 = load %struct.be_queue_info*, %struct.be_queue_info** %13, align 8
  %77 = load %struct.be_queue_info*, %struct.be_queue_info** %12, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %80 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @be_cmd_create_default_pdu_queue(i32* %75, %struct.be_queue_info* %76, %struct.be_queue_info* %77, i32 %78, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %60
  %87 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %90 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %5, align 4
  br label %114

92:                                               ; preds = %60
  %93 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %7, align 8
  %94 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.hwi_controller*, %struct.hwi_controller** %8, align 8
  %98 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %101 = load i32, i32* @KERN_INFO, align 4
  %102 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %103 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %7, align 8
  %104 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %109 = call i32 @hwi_post_async_buffers(%struct.beiscsi_hba* %108, i32 0)
  %110 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %111 = load i32, i32* @KERN_INFO, align 4
  %112 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %113 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %92, %86, %54
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @be_fill_queue(%struct.be_queue_info*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @be_cmd_create_default_pdu_queue(i32*, %struct.be_queue_info*, %struct.be_queue_info*, i32, i32) #1

declare dso_local i32 @hwi_post_async_buffers(%struct.beiscsi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
