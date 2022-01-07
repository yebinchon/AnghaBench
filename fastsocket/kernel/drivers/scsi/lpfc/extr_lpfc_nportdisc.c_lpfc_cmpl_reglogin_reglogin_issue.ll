; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_reglogin_reglogin_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_reglogin_reglogin_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.lpfc_nodelist = type { i32, i32, i8*, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"0246 RegLogin failed Data: x%x x%x x%x x%x x%x\0A\00", align 1
@MBXERR_RPI_FULL = common dso_local global i64 0, align 8
@NLP_STE_REG_LOGIN_ISSUE = common dso_local global i8* null, align 8
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@ELS_CMD_PLOGI = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_PRLI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_reglogin_reglogin_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_reglogin_reglogin_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %15 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %11, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %12, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %105

31:                                               ; preds = %4
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load i32, i32* @LOG_DISCOVERY, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %40 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %38, i32 %41, i32 %46, i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MBXERR_RPI_FULL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %31
  %59 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %61 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %63 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %64 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %65 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %62, %struct.lpfc_nodelist* %63, i32 %64)
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %67 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %157

69:                                               ; preds = %31
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %71 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %70, i32 0, i32 6
  %72 = load i64, i64* @jiffies, align 8
  %73 = call i64 @msecs_to_jiffies(i32 1000)
  %74 = add nsw i64 %72, %73
  %75 = call i32 @mod_timer(i32* %71, i64 %74)
  %76 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %77 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @spin_lock_irq(i32 %78)
  %80 = load i32, i32* @NLP_DELAY_TMO, align 4
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %82 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %86 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @spin_unlock_irq(i32 %87)
  %89 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %91 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %94 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %92, %struct.lpfc_nodelist* %93, i32 0)
  %95 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %96 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %97 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %100 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %101 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %98, %struct.lpfc_nodelist* %99, i32 %100)
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %103 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %5, align 4
  br label %157

105:                                              ; preds = %4
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %107 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @LPFC_SLI_REV4, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %121 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %113, %105
  %123 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %124 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %125 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %129 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NLP_FABRIC, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %122
  %135 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %136 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %137 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %139 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %140 = load i32, i32* @NLP_STE_PRLI_ISSUE, align 4
  %141 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %138, %struct.lpfc_nodelist* %139, i32 %140)
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %143 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %144 = call i32 @lpfc_issue_els_prli(%struct.lpfc_vport* %142, %struct.lpfc_nodelist* %143, i32 0)
  br label %153

145:                                              ; preds = %122
  %146 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %148 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %150 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %151 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %152 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %149, %struct.lpfc_nodelist* %150, i32 %151)
  br label %153

153:                                              ; preds = %145, %134
  %154 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %155 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %153, %69, %58
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_prli(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
