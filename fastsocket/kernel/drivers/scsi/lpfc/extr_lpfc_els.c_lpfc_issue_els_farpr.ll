; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_farpr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_farpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_4__, i32, %struct.lpfc_sli }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@ELS_CMD_RNID = common dso_local global i32 0, align 4
@ELS_CMD_FARPR = common dso_local global i32 0, align 4
@FARP_MATCH_PORT = common dso_local global i32 0, align 4
@FARP_MATCH_NODE = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue FARPR:     did:x%x\00", align 1
@lpfc_cmpl_els_cmd = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32, i32)* @lpfc_issue_els_farpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_els_farpr(%struct.lpfc_vport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca %struct.lpfc_sli*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.lpfc_nodelist*, align 8
  %17 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 3
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %8, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 2
  store %struct.lpfc_sli* %22, %struct.lpfc_sli** %11, align 8
  store i32 36, i32* %15, align 4
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %23, i32 %24)
  store %struct.lpfc_nodelist* %25, %struct.lpfc_nodelist** %17, align 8
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %27 = icmp ne %struct.lpfc_nodelist* %26, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %3
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %31, i32 %32)
  store %struct.lpfc_nodelist* %33, %struct.lpfc_nodelist** %17, align 8
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %35 = icmp ne %struct.lpfc_nodelist* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %172

37:                                               ; preds = %28
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %38, %struct.lpfc_nodelist* %39, i32 %40)
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %44 = call i32 @lpfc_enqueue_node(%struct.lpfc_vport* %42, %struct.lpfc_nodelist* %43)
  br label %59

45:                                               ; preds = %3
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %47 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %52 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %53 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %50, %struct.lpfc_nodelist* %51, i32 %52)
  store %struct.lpfc_nodelist* %53, %struct.lpfc_nodelist** %17, align 8
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %55 = icmp ne %struct.lpfc_nodelist* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %172

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %65 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ELS_CMD_RNID, align 4
  %68 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %60, i32 1, i32 %61, i32 %62, %struct.lpfc_nodelist* %63, i32 %66, i32 %67)
  store %struct.lpfc_iocbq* %68, %struct.lpfc_iocbq** %10, align 8
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %70 = icmp ne %struct.lpfc_iocbq* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %73 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %72)
  store i32 1, i32* %4, align 4
  br label %172

74:                                               ; preds = %59
  %75 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %76 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %75, i32 0, i32 2
  store i32* %76, i32** %9, align 8
  %77 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %78 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.lpfc_dmabuf*
  %81 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %13, align 8
  %84 = load i32, i32* @ELS_CMD_FARPR, align 4
  %85 = load i32*, i32** %13, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32* %87, i32** %13, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = bitcast i32* %88 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %12, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %91 = call i32 @memset(%struct.TYPE_5__* %90, i32 0, i32 32)
  %92 = load i32*, i32** %13, align 8
  store i32* %92, i32** %14, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i8* @be32_to_cpu(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load i32*, i32** %14, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %14, align 8
  store i32 %95, i32* %96, align 4
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %99 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @be32_to_cpu(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %14, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %14, align 8
  store i32 %102, i32* %103, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* @FARP_MATCH_PORT, align 4
  %108 = load i32, i32* @FARP_MATCH_NODE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %115 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %114, i32 0, i32 1
  %116 = call i32 @memcpy(i32* %113, i32* %115, i32 4)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %120 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %119, i32 0, i32 0
  %121 = call i32 @memcpy(i32* %118, i32* %120, i32 4)
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %122, i32 %123)
  store %struct.lpfc_nodelist* %124, %struct.lpfc_nodelist** %16, align 8
  %125 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %126 = icmp ne %struct.lpfc_nodelist* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %74
  %128 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %129 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %135 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %134, i32 0, i32 2
  %136 = call i32 @memcpy(i32* %133, i32* %135, i32 4)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %140 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %139, i32 0, i32 1
  %141 = call i32 @memcpy(i32* %138, i32* %140, i32 4)
  br label %142

142:                                              ; preds = %131, %127, %74
  %143 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %144 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %145 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %146 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %143, i32 %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %147, i32 0, i32 0)
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* @lpfc_cmpl_els_cmd, align 4
  %155 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %156 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %158 = load i32, i32* @LPFC_ELS_RING, align 4
  %159 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %160 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %157, i32 %158, %struct.lpfc_iocbq* %159, i32 0)
  %161 = load i64, i64* @IOCB_ERROR, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %142
  %164 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %165 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %164)
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %167 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %168 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %166, %struct.lpfc_iocbq* %167)
  store i32 1, i32* %4, align 4
  br label %172

169:                                              ; preds = %142
  %170 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %171 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %170)
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %169, %163, %71, %56, %36
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_enqueue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
