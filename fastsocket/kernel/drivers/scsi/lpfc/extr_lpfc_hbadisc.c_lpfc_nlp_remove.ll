; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.lpfc_rport_data* }
%struct.lpfc_rport_data = type { i32* }
%struct.TYPE_8__ = type { %struct.lpfc_nodelist*, %struct.lpfc_vport*, i32, i32 }

@NLP_DEFER_RM = common dso_local global i32 0, align 4
@NLP_REG_LOGIN_SEND = common dso_local global i32 0, align 4
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_MBX_IMED_UNREG = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_dflt_rpi = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*)* @lpfc_nlp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nlp_remove(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_rport_data*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %4, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 2
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  store %struct.lpfc_hba* %11, %struct.lpfc_hba** %5, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %14 = call i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %12, %struct.lpfc_nodelist* %13)
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NLP_DEFER_RM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %96

21:                                               ; preds = %2
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NLP_REG_LOGIN_SEND, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %96, label %28

28:                                               ; preds = %21
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %96, label %35

35:                                               ; preds = %28
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.TYPE_8__* @mempool_alloc(i32 %38, i32 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %7, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %95

42:                                               ; preds = %35
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %54 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @lpfc_reg_rpi(%struct.lpfc_hba* %43, i32 %46, i32 %49, i32* %51, %struct.TYPE_8__* %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %42
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mempool_free(%struct.TYPE_8__* %60, i32 %63)
  br label %94

65:                                               ; preds = %42
  %66 = load i32, i32* @LPFC_MBX_IMED_UNREG, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @lpfc_mbx_cmpl_dflt_rpi, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store %struct.lpfc_vport* %74, %struct.lpfc_vport** %76, align 8
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store %struct.lpfc_nodelist* %77, %struct.lpfc_nodelist** %79, align 8
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = load i32, i32* @MBX_NOWAIT, align 4
  %83 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %80, %struct.TYPE_8__* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %65
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mempool_free(%struct.TYPE_8__* %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %65
  br label %94

94:                                               ; preds = %93, %59
  br label %95

95:                                               ; preds = %94, %35
  br label %96

96:                                               ; preds = %95, %28, %21, %2
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %98 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %99 = call i32 @lpfc_cleanup_node(%struct.lpfc_vport* %97, %struct.lpfc_nodelist* %98)
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = icmp ne %struct.TYPE_7__* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %96
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %106 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %108, align 8
  store %struct.lpfc_rport_data* %109, %struct.lpfc_rport_data** %6, align 8
  %110 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %111 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  %112 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %113 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %112, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %113, align 8
  br label %114

114:                                              ; preds = %104, %96
  ret void
}

declare dso_local i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local %struct.TYPE_8__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_reg_rpi(%struct.lpfc_hba*, i32, i32, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @lpfc_cleanup_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
