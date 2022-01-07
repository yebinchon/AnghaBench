; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_fdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_fdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba*, i64, i32 }
%struct.lpfc_hba = type { i64, %struct.TYPE_20__, %struct.TYPE_14__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.lpfc_iocbq = type { i32, i64, %struct.TYPE_11__ }
%struct.serv_parm = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.lpfc_dmabuf = type { i64 }

@LPFC_FDISC = common dso_local global i32 0, align 4
@ELS_CMD_FDISC = common dso_local global i32 0, align 4
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"0255 Issue FDISC: no IOCB\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@lpfc_cmpl_els_fdisc = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Issue FDISC:     did:x%x\00", align 1
@IOCB_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"0256 Issue FDISC: Cannot send IOCB\0A\00", align 1
@FC_VPORT_INITIALIZING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32)* @lpfc_issue_els_fdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_els_fdisc(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca %struct.serv_parm*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %8, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @LPFC_FDISC, align 4
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  store i32 44, i32* %13, align 4
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @ELS_CMD_FDISC, align 4
  %33 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %27, i32 1, i32 %28, i32 %29, %struct.lpfc_nodelist* %30, i32 %31, i32 %32)
  store %struct.lpfc_iocbq* %33, %struct.lpfc_iocbq** %10, align 8
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %35 = icmp ne %struct.lpfc_iocbq* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %3
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %38 = load i32, i32* @FC_VPORT_FAILED, align 4
  %39 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %37, i32 %38)
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %41 = load i32, i32* @KERN_ERR, align 4
  %42 = load i32, i32* @LOG_ELS, align 4
  %43 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %161

44:                                               ; preds = %3
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %46 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %45, i32 0, i32 2
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %9, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LPFC_SLI_REV3, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %44
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %44
  %66 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %67 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.lpfc_dmabuf*
  %70 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* @ELS_CMD_FDISC, align 4
  %74 = load i32*, i32** %12, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %79 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %78, i32 0, i32 2
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %79, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 2
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = call i32 @memcpy(i32* %77, i32* %83, i32 40)
  %85 = load i32*, i32** %12, align 8
  %86 = bitcast i32* %85 to %struct.serv_parm*
  store %struct.serv_parm* %86, %struct.serv_parm** %11, align 8
  %87 = load %struct.serv_parm*, %struct.serv_parm** %11, align 8
  %88 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.serv_parm*, %struct.serv_parm** %11, align 8
  %91 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.serv_parm*, %struct.serv_parm** %11, align 8
  %95 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.serv_parm*, %struct.serv_parm** %11, align 8
  %98 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.serv_parm*, %struct.serv_parm** %11, align 8
  %101 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  %103 = load %struct.serv_parm*, %struct.serv_parm** %11, align 8
  %104 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32* %107, i32** %12, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %12, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32* %111, i32** %12, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  store i32* %113, i32** %12, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %116 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %115, i32 0, i32 1
  %117 = call i32 @memcpy(i32* %114, i32* %116, i32 8)
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  store i32* %119, i32** %12, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32* %121, i32** %12, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %124 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %123, i32 0, i32 0
  %125 = call i32 @memcpy(i32* %122, i32* %124, i32 8)
  %126 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %127 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %126)
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* @lpfc_cmpl_els_fdisc, align 4
  %134 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %135 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %137 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %136, i32 %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 0, i32 0)
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %141 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %142 = call i32 @lpfc_issue_fabric_iocb(%struct.lpfc_hba* %140, %struct.lpfc_iocbq* %141)
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @IOCB_ERROR, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %65
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %148 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %149 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %147, %struct.lpfc_iocbq* %148)
  %150 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %151 = load i32, i32* @FC_VPORT_FAILED, align 4
  %152 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %150, i32 %151)
  %153 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %154 = load i32, i32* @KERN_ERR, align 4
  %155 = load i32, i32* @LOG_ELS, align 4
  %156 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %161

157:                                              ; preds = %65
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %159 = load i32, i32* @FC_VPORT_INITIALIZING, align 4
  %160 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %158, i32 %159)
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %157, %146, %36
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_issue_fabric_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
