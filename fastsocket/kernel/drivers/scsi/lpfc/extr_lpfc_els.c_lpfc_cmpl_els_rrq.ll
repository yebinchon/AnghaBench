; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_rrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_els_rrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_10__, %struct.TYPE_6__, %struct.lpfc_vport* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.lpfc_iocbq*, %struct.lpfc_node_rrq* }
%struct.lpfc_node_rrq = type { i32, i32, %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_vport = type { i32 }

@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RRQ cmpl:      status:x%x/x%x did:x%x\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"2882 RRQ completes to NPort x%x with no ndlp. Data: x%x x%x x%x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"2880 RRQ completes to NPort x%x Data: x%x x%x x%x x%x x%x\0A\00", align 1
@IOSTAT_LS_RJT = common dso_local global i64 0, align 8
@LSRJT_INVALID_CMD = common dso_local global i32 0, align 4
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"2881 RRQ failure DID:%06X Status:x%x/x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_els_rrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_els_rrq(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.lpfc_node_rrq*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %11 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %11, i32 0, i32 2
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  store %struct.lpfc_vport* %13, %struct.lpfc_vport** %7, align 8
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %16, align 8
  store %struct.lpfc_node_rrq* %17, %struct.lpfc_node_rrq** %10, align 8
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.lpfc_iocbq* %18, %struct.lpfc_iocbq** %21, align 8
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 0
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %8, align 8
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %25 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %24, i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %34, i32 %39)
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %41, i32 %46)
  store %struct.lpfc_nodelist* %47, %struct.lpfc_nodelist** %9, align 8
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %49 = icmp ne %struct.lpfc_nodelist* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %3
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %52 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %56 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %10, align 8
  %57 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %56, i32 0, i32 2
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %57, align 8
  %59 = icmp ne %struct.lpfc_nodelist* %55, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %54, %50, %3
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %62 = load i32, i32* @KERN_ERR, align 4
  %63 = load i32, i32* @LOG_ELS, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %68, i64 %71, i32 %77, i32 %80)
  br label %166

82:                                               ; preds = %54
  %83 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load i32, i32* @LOG_ELS, align 4
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %87 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %10, align 8
  %102 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %10, align 8
  %105 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %88, i64 %91, i32 %97, i32 %100, i32 %103, i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %165

112:                                              ; preds = %82
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IOSTAT_LS_RJT, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %147, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 16
  %126 = load i32, i32* @LSRJT_INVALID_CMD, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %118
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 16
  %136 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %147, label %138

138:                                              ; preds = %128, %118
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @LOG_ELS, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %138, %128, %112
  %148 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %149 = load i32, i32* @KERN_ERR, align 4
  %150 = load i32, i32* @LOG_ELS, align 4
  %151 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %152 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %153, i64 %156, i32 %162)
  br label %164

164:                                              ; preds = %147, %138
  br label %165

165:                                              ; preds = %164, %82
  br label %166

166:                                              ; preds = %165, %60
  %167 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %10, align 8
  %168 = icmp ne %struct.lpfc_node_rrq* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %171 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %10, align 8
  %172 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %10, align 8
  %175 = call i32 @lpfc_clr_rrq_active(%struct.lpfc_hba* %170, i32 %173, %struct.lpfc_node_rrq* %174)
  br label %176

176:                                              ; preds = %169, %166
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %178 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %179 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %177, %struct.lpfc_iocbq* %178)
  ret void
}

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @lpfc_clr_rrq_active(%struct.lpfc_hba*, i32, %struct.lpfc_node_rrq*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
