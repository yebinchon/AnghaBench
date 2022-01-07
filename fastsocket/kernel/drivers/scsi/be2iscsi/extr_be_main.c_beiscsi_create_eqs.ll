; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_eqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_create_eqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.hwi_context_memory = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.be_queue_info, %struct.beiscsi_hba* }
%struct.be_queue_info = type { %struct.be_dma_mem, i32 }
%struct.be_dma_mem = type { i32, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"BM_%d : be_fill_queue Failed for EQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"BM_%d : beiscsi_cmd_eq_createFailed for EQ\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"BM_%d : eqid = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.hwi_context_memory*)* @beiscsi_create_eqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_create_eqs(%struct.beiscsi_hba* %0, %struct.hwi_context_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.hwi_context_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.be_queue_info*, align 8
  %11 = alloca %struct.be_dma_mem*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.hwi_context_memory* %1, %struct.hwi_context_memory** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @PAGES_REQUIRED(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %26
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %115, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %32 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp ult i32 %30, %35
  br i1 %36, label %37, label %118

37:                                               ; preds = %29
  %38 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %39 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.be_queue_info* %44, %struct.be_queue_info** %10, align 8
  %45 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %46 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %45, i32 0, i32 0
  store %struct.be_dma_mem* %46, %struct.be_dma_mem** %11, align 8
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %48 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %49 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store %struct.beiscsi_hba* %47, %struct.beiscsi_hba** %54, align 8
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %56 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = mul i32 %58, %59
  %61 = call i8* @pci_alloc_consistent(i32 %57, i32 %60, i32* %13)
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %37
  br label %119

65:                                               ; preds = %37
  %66 = load i8*, i8** %12, align 8
  %67 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %68 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %71 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @be_fill_queue(%struct.be_queue_info* %69, i32 %73, i32 4, i8* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %80 = load i32, i32* @KERN_ERR, align 4
  %81 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %82 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %119

83:                                               ; preds = %65
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %86 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %88 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %87, i32 0, i32 2
  %89 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %90 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %91 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @beiscsi_cmd_eq_create(i32* %88, %struct.be_queue_info* %89, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %98 = load i32, i32* @KERN_ERR, align 4
  %99 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %100 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %119

101:                                              ; preds = %83
  %102 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %103 = load i32, i32* @KERN_INFO, align 4
  %104 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %105 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %106 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %6, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %29

118:                                              ; preds = %29
  store i32 0, i32* %3, align 4
  br label %162

119:                                              ; preds = %96, %78, %64
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %157, %119
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %123 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %124, %125
  %127 = icmp ult i32 %121, %126
  br i1 %127, label %128, label %160

128:                                              ; preds = %120
  %129 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %130 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store %struct.be_queue_info* %135, %struct.be_queue_info** %10, align 8
  %136 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %137 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %136, i32 0, i32 0
  store %struct.be_dma_mem* %137, %struct.be_dma_mem** %11, align 8
  %138 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %139 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %156

142:                                              ; preds = %128
  %143 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %144 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = mul i32 %146, %147
  %149 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %150 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.be_dma_mem*, %struct.be_dma_mem** %11, align 8
  %153 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @pci_free_consistent(i32 %145, i32 %148, i8* %151, i32 %154)
  br label %156

156:                                              ; preds = %142, %128
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %120

160:                                              ; preds = %120
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %118
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @PAGES_REQUIRED(i32) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @be_fill_queue(%struct.be_queue_info*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @beiscsi_cmd_eq_create(i32*, %struct.be_queue_info*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
