; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_read_sparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_read_sparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32*, %struct.lpfc_sli }
%struct.lpfc_sli = type { i32 }
%struct.TYPE_20__ = type { %struct.lpfc_dmabuf*, %struct.TYPE_12__ }
%struct.lpfc_dmabuf = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@OWN_HOST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MBX_READ_SPARM64 = common dso_local global i8* null, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"0301 READ_SPARAM: no buffers\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_read_sparam(%struct.lpfc_hba* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.lpfc_sli*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 2
  store %struct.lpfc_sli* %12, %struct.lpfc_sli** %10, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %9, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = call i32 @memset(%struct.TYPE_20__* %16, i32 0, i32 40)
  %18 = load i32, i32* @OWN_HOST, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.lpfc_dmabuf* @kmalloc(i32 12, i32 %21)
  store %struct.lpfc_dmabuf* %22, %struct.lpfc_dmabuf** %8, align 8
  %23 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %24 = icmp ne %struct.lpfc_dmabuf* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %28 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %27, i32 0, i32 0
  %29 = call i32 @lpfc_mbuf_alloc(%struct.lpfc_hba* %26, i32 0, i32* %28)
  %30 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %31 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %34 = icmp ne %struct.lpfc_dmabuf* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %37 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %42 = call i32 @kfree(%struct.lpfc_dmabuf* %41)
  %43 = load i8*, i8** @MBX_READ_SPARM64, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %47 = load i32, i32* @KERN_WARNING, align 4
  %48 = load i32, i32* @LOG_MBOX, align 4
  %49 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %106

50:                                               ; preds = %35
  %51 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %52 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %51, i32 0, i32 1
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load i8*, i8** @MBX_READ_SPARM64, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store i32 4, i32* %64, align 4
  %65 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %66 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @putPaddrHigh(i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  store i32 %68, i32* %74, align 4
  %75 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %76 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @putPaddrLow(i32 %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 4
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LPFC_SLI_REV3, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %50
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  br label %102

102:                                              ; preds = %90, %50
  %103 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  store %struct.lpfc_dmabuf* %103, %struct.lpfc_dmabuf** %105, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %40
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
