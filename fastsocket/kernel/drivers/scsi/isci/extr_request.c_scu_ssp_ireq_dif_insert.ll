; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_scu_ssp_ireq_dif_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_scu_ssp_ireq_dif_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.TYPE_6__, %struct.scu_task_context* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.scu_task_context = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_7__, i64, i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@SCSI_PROT_DIF_TYPE1 = common dso_local global i32 0, align 4
@SCSI_PROT_DIF_TYPE2 = common dso_local global i32 0, align 4
@SCSI_PROT_DIF_TYPE3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*, i32, i32)* @scu_ssp_ireq_dif_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scu_ssp_ireq_dif_insert(%struct.isci_request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.isci_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scu_task_context*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  store %struct.isci_request* %0, %struct.isci_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %11 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %10, i32 0, i32 1
  %12 = load %struct.scu_task_context*, %struct.scu_task_context** %11, align 8
  store %struct.scu_task_context* %12, %struct.scu_task_context** %7, align 8
  %13 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %14 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %17, align 8
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %8, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = call i32 @scu_bg_blk_size(%struct.TYPE_8__* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %24 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %26 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %29 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %31 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %30, i32 0, i32 3
  store i32 2, i32* %31, align 4
  %32 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %33 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %32, i32 0, i32 22
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @scu_dif_bytes(i32 %34, i32 %39)
  %41 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %42 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %41, i32 0, i32 22
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %48 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %47, i32 0, i32 21
  store i64 0, i64* %48, align 8
  %49 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %50 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %49, i32 0, i32 20
  store i64 0, i64* %50, align 8
  %51 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %52 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %51, i32 0, i32 19
  store i64 0, i64* %52, align 8
  %53 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %54 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %53, i32 0, i32 18
  store i64 0, i64* %54, align 8
  %55 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %56 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %55, i32 0, i32 17
  store i64 0, i64* %56, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %63 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %62, i32 0, i32 16
  store i32 %61, i32* %63, align 8
  %64 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %65 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %64, i32 0, i32 15
  store i64 0, i64* %65, align 8
  %66 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %67 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %66, i32 0, i32 4
  store i32 8, i32* %67, align 8
  %68 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %69 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %68, i32 0, i32 14
  store i64 0, i64* %69, align 8
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %76 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %75, i32 0, i32 13
  store i32 %74, i32* %76, align 8
  %77 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %78 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %77, i32 0, i32 12
  store i64 0, i64* %78, align 8
  %79 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %80 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %79, i32 0, i32 11
  store i64 0, i64* %80, align 8
  %81 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %82 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %81, i32 0, i32 10
  store i64 0, i64* %82, align 8
  %83 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %84 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 2, i32* %85, align 8
  %86 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %87 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %86, i32 0, i32 8
  store i64 0, i64* %87, align 8
  %88 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %89 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %88, i32 0, i32 7
  store i64 0, i64* %89, align 8
  %90 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %91 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %90, i32 0, i32 6
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @SCSI_PROT_DIF_TYPE1, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %3
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SCSI_PROT_DIF_TYPE2, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96, %3
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %103 = call i32 @scsi_get_lba(%struct.scsi_cmnd* %102)
  %104 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %105 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  br label %115

106:                                              ; preds = %96
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @SCSI_PROT_DIF_TYPE3, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %113 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %112, i32 0, i32 5
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %101
  ret void
}

declare dso_local i32 @scu_bg_blk_size(%struct.TYPE_8__*) #1

declare dso_local i64 @scu_dif_bytes(i32, i32) #1

declare dso_local i32 @scsi_get_lba(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
