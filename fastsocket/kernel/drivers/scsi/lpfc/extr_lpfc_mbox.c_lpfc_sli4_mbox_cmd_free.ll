; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbox_cmd_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbox_cmd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.lpfcMboxq = type { %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.lpfc_mbx_sli4_config }
%struct.lpfc_mbx_sli4_config = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_mbx_sge = type { i32, i32 }

@lpfc_mbox_hdr_emb = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_sge_cnt = common dso_local global i32 0, align 4
@SLI4_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %0, %struct.lpfcMboxq* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfcMboxq*, align 8
  %5 = alloca %struct.lpfc_mbx_sli4_config*, align 8
  %6 = alloca %struct.lpfc_mbx_sge, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfcMboxq* %1, %struct.lpfcMboxq** %4, align 8
  %10 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %4, align 8
  %11 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.lpfc_mbx_sli4_config* %14, %struct.lpfc_mbx_sli4_config** %5, align 8
  %15 = load i32, i32* @lpfc_mbox_hdr_emb, align 4
  %16 = load %struct.lpfc_mbx_sli4_config*, %struct.lpfc_mbx_sli4_config** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_mbx_sli4_config, %struct.lpfc_mbx_sli4_config* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = call i64 @bf_get(i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %4, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mempool_free(%struct.lpfcMboxq* %22, i32 %25)
  br label %89

27:                                               ; preds = %2
  %28 = load i32, i32* @lpfc_mbox_hdr_sge_cnt, align 4
  %29 = load %struct.lpfc_mbx_sli4_config*, %struct.lpfc_mbx_sli4_config** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_mbx_sli4_config, %struct.lpfc_mbx_sli4_config* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = call i64 @bf_get(i32 %28, i32* %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %4, align 8
  %34 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %4, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @mempool_free(%struct.lpfcMboxq* %42, i32 %45)
  br label %89

47:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %76, %47
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %4, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @lpfc_sli4_mbx_sge_get(%struct.lpfcMboxq* %53, i64 %54, %struct.lpfc_mbx_sge* %6)
  %56 = getelementptr inbounds %struct.lpfc_mbx_sge, %struct.lpfc_mbx_sge* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.lpfc_mbx_sge, %struct.lpfc_mbx_sge* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @getPaddr(i32 %57, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* @SLI4_PAGE_SIZE, align 4
  %66 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %4, align 8
  %67 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dma_free_coherent(i32* %64, i32 %65, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %52
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %48

79:                                               ; preds = %48
  %80 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %4, align 8
  %81 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %80, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = call i32 @kfree(%struct.TYPE_12__* %82)
  %84 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %4, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @mempool_free(%struct.lpfcMboxq* %84, i32 %87)
  br label %89

89:                                               ; preds = %79, %41, %21
  ret void
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @mempool_free(%struct.lpfcMboxq*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli4_mbx_sge_get(%struct.lpfcMboxq*, i64, %struct.lpfc_mbx_sge*) #1

declare dso_local i32 @getPaddr(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
