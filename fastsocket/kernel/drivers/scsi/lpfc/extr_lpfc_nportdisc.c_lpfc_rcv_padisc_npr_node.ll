; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_padisc_npr_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_padisc_npr_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i8* }
%struct.lpfc_iocbq = type { i32 }

@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@NLP_NPR_ADISC = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i8* null, align 8
@NLP_STE_ADISC_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_rcv_padisc_npr_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_padisc_npr_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %11, %struct.lpfc_iocbq** %9, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %15 = call i32 @lpfc_rcv_padisc(%struct.lpfc_vport* %12, %struct.lpfc_nodelist* %13, %struct.lpfc_iocbq* %14)
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %17 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NLP_DELAY_TMO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %67, label %22

22:                                               ; preds = %4
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %22
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NLP_NPR_ADISC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load i32, i32* @NLP_NPR_ADISC, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %40 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i8*, i8** @NLP_STE_NPR_NODE, align 8
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %48 = load i32, i32* @NLP_STE_ADISC_ISSUE, align 4
  %49 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %46, %struct.lpfc_nodelist* %47, i32 %48)
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %52 = call i32 @lpfc_issue_els_adisc(%struct.lpfc_vport* %50, %struct.lpfc_nodelist* %51, i32 0)
  br label %66

53:                                               ; preds = %29
  %54 = load i8*, i8** @NLP_STE_NPR_NODE, align 8
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %59 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %60 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %57, %struct.lpfc_nodelist* %58, i32 %59)
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %63 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %61, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %53, %36
  br label %67

67:                                               ; preds = %66, %22, %4
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %69 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  ret i32 %70
}

declare dso_local i32 @lpfc_rcv_padisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_adisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
