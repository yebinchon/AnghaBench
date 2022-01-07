; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_plogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_4__, %struct.lpfc_sli }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.serv_parm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_PLOGI = common dso_local global i32 0, align 4
@FC_FABRIC = common dso_local global i32 0, align 4
@FC_PUBLIC_LOOP = common dso_local global i32 0, align 4
@FC_PH_4_3 = common dso_local global i64 0, align 8
@FC_PH3 = common dso_local global i64 0, align 8
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue PLOGI:     did:x%x\00", align 1
@lpfc_cmpl_els_plogi = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.serv_parm*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.lpfc_nodelist*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca %struct.lpfc_sli*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 2
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %8, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 1
  store %struct.lpfc_sli* %21, %struct.lpfc_sli** %13, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %22, i32 %23)
  store %struct.lpfc_nodelist* %24, %struct.lpfc_nodelist** %11, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %26 = icmp ne %struct.lpfc_nodelist* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %29 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %11, align 8
  br label %32

32:                                               ; preds = %31, %27, %3
  store i32 28, i32* %15, align 4
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %39 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %33, i32 1, i32 %34, i32 %35, %struct.lpfc_nodelist* %36, i32 %37, i32 %38)
  store %struct.lpfc_iocbq* %39, %struct.lpfc_iocbq** %12, align 8
  %40 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %41 = icmp ne %struct.lpfc_iocbq* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %129

43:                                               ; preds = %32
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %45 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %44, i32 0, i32 2
  store i32* %45, i32** %10, align 8
  %46 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %47 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.lpfc_dmabuf*
  %50 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %14, align 8
  %53 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %54 = load i32*, i32** %14, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 1
  %60 = call i32 @memcpy(i32* %57, i32* %59, i32 24)
  %61 = load i32*, i32** %14, align 8
  %62 = bitcast i32* %61 to %struct.serv_parm*
  store %struct.serv_parm* %62, %struct.serv_parm** %9, align 8
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FC_FABRIC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %43
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %71 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FC_PUBLIC_LOOP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %78 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %69, %43
  %81 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %82 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @FC_PH_4_3, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i64, i64* @FC_PH_4_3, align 8
  %89 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %90 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i64 %88, i64* %91, align 8
  br label %92

92:                                               ; preds = %87, %80
  %93 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %94 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FC_PH3, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i64, i64* @FC_PH3, align 8
  %101 = load %struct.serv_parm*, %struct.serv_parm** %9, align 8
  %102 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i64 %100, i64* %103, align 8
  br label %104

104:                                              ; preds = %99, %92
  %105 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %106 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %105, i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %107, i32 0, i32 0)
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @lpfc_cmpl_els_plogi, align 4
  %115 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %116 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %118 = load i32, i32* @LPFC_ELS_RING, align 4
  %119 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %120 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %117, i32 %118, %struct.lpfc_iocbq* %119, i32 0)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @IOCB_ERROR, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %104
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %126 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %127 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %125, %struct.lpfc_iocbq* %126)
  store i32 1, i32* %4, align 4
  br label %129

128:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %124, %42
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
