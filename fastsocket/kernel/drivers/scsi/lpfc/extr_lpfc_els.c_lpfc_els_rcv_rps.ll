; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.lpfc_nodelist = type { i64 }
%struct.TYPE_20__ = type { i32, %struct.lpfc_vport*, i32, i8* }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ls_rjt = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32, i32, i64 }

@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Fix me....\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@lpfc_els_rsp_rps_acc = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_CANT_GIVE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_rps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_rps(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.ls_rjt, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 1
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  store %struct.lpfc_hba* %17, %struct.lpfc_hba** %8, align 8
  %18 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %19 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %126

30:                                               ; preds = %23, %3
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %34, %struct.lpfc_dmabuf** %12, align 8
  %35 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %36 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %9, align 8
  %41 = load i32, i32* %39, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = and i32 %42, 15
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = bitcast i32* %44 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %45, %struct.TYPE_19__** %13, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %30
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %125

61:                                               ; preds = %58
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %66 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %65, i32 0, i32 0
  %67 = call i64 @memcmp(i32* %64, i32* %66, i32 4)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %125

69:                                               ; preds = %61, %51, %30
  %70 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 (...) @dump_stack()
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call %struct.TYPE_20__* @mempool_alloc(i32 %74, i32 %75)
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %11, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %78 = icmp ne %struct.TYPE_20__* %77, null
  br i1 %78, label %79, label %124

79:                                               ; preds = %69
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %82 = call i32 @lpfc_read_lnk_stat(%struct.lpfc_hba* %80, %struct.TYPE_20__* %81)
  %83 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %84 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %91 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %89, %93
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %100 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %99)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  store %struct.lpfc_vport* %103, %struct.lpfc_vport** %105, align 8
  %106 = load i32, i32* @lpfc_els_rsp_rps_acc, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %111 = load i32, i32* @MBX_NOWAIT, align 4
  %112 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %109, %struct.TYPE_20__* %110, i32 %111)
  %113 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %148

116:                                              ; preds = %79
  %117 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %118 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %117)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mempool_free(%struct.TYPE_20__* %119, i32 %122)
  br label %124

124:                                              ; preds = %116, %69
  br label %125

125:                                              ; preds = %124, %61, %58
  br label %126

126:                                              ; preds = %125, %29
  %127 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %131 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @LSEXP_CANT_GIVE_DATA, align 4
  %135 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 8
  %138 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %142 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %14, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %146 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %147 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %141, i32 %144, %struct.lpfc_iocbq* %145, %struct.lpfc_nodelist* %146, i32* null)
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %126, %115
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local %struct.TYPE_20__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_read_lnk_stat(%struct.lpfc_hba*, %struct.TYPE_20__*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
