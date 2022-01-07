; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unreg_rpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unreg_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }
%struct.lpfc_nodelist = type { i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.lpfc_nodelist*, %struct.lpfc_vport* }

@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_ISSUE_LOGO = common dso_local global i32 0, align 4
@lpfc_nlp_logo_unreg = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@NLP_NPR_ADISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %10, i32 0, i32 1
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  store %struct.lpfc_hba* %12, %struct.lpfc_hba** %6, align 8
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %114

19:                                               ; preds = %2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.TYPE_8__* @mempool_alloc(i32 %22, i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %89

27:                                               ; preds = %19
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LPFC_SLI_REV4, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %36, %27
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %48 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = call i32 @lpfc_unreg_login(%struct.lpfc_hba* %47, i32 %50, i64 %51, %struct.TYPE_8__* %52)
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store %struct.lpfc_vport* %54, %struct.lpfc_vport** %56, align 8
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NLP_ISSUE_LOGO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %46
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store %struct.lpfc_nodelist* %64, %struct.lpfc_nodelist** %66, align 8
  %67 = load i32, i32* @lpfc_nlp_logo_unreg, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %74

70:                                               ; preds = %46
  %71 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = load i32, i32* @MBX_NOWAIT, align 4
  %78 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %75, %struct.TYPE_8__* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @mempool_free(%struct.TYPE_8__* %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %74
  br label %89

89:                                               ; preds = %88, %19
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %91 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %92 = call i32 @lpfc_no_rpi(%struct.lpfc_hba* %90, %struct.lpfc_nodelist* %91)
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @LPFC_SLI_REV4, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %100 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %89
  %102 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %105 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @NLP_NPR_ADISC, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %111 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  store i32 1, i32* %3, align 4
  br label %115

114:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %101
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_8__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_unreg_login(%struct.lpfc_hba*, i32, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lpfc_no_rpi(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
