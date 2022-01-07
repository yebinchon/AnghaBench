; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_issue_lip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_issue_lip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32 }

@MBXERR_ERROR = common dso_local global i32 0, align 4
@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@LPFC_BLOCK_MGMT_IO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MBX_DOWN_LINK = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBXERR_LINK_DOWN = common dso_local global i64 0, align 8
@MBXERR_SEC_NO_PERMISSION = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"2859 SLI authentication is required for INIT_LINK but has not done yet\0A\00", align 1
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @lpfc_issue_lip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_lip(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %4, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 1
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  store %struct.lpfc_hba* %14, %struct.lpfc_hba** %5, align 8
  %15 = load i32, i32* @MBXERR_ERROR, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LPFC_BLOCK_MGMT_IO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %1
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %140

33:                                               ; preds = %22
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.TYPE_12__* @mempool_alloc(i32 %36, i32 %37)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %6, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %140

44:                                               ; preds = %33
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = bitcast %struct.TYPE_12__* %45 to i8*
  %47 = call i32 @memset(i8* %46, i32 0, i32 16)
  %48 = load i32, i32* @MBX_DOWN_LINK, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @OWN_HOST, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 8
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %61 = mul nsw i32 %60, 2
  %62 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %58, %struct.TYPE_12__* %59, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MBX_SUCCESS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %120

66:                                               ; preds = %44
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MBXERR_LINK_DOWN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %73, %66
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = bitcast %struct.TYPE_12__* %82 to i8*
  %84 = call i32 @memset(i8* %83, i32 0, i32 16)
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @lpfc_init_link(%struct.lpfc_hba* %85, %struct.TYPE_12__* %86, i32 %89, i32 %92)
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 2
  %100 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %94, %struct.TYPE_12__* %95, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @MBX_SUCCESS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %81
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MBXERR_SEC_NO_PERMISSION, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = load i32, i32* @LOG_MBOX, align 4
  %116 = load i32, i32* @LOG_SLI, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %113, i32 %114, i32 %117, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %112, %104, %81
  br label %120

120:                                              ; preds = %119, %73, %44
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %122 = call i32 @lpfc_set_loopback_flag(%struct.lpfc_hba* %121)
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @MBX_TIMEOUT, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @mempool_free(%struct.TYPE_12__* %127, i32 %130)
  br label %132

132:                                              ; preds = %126, %120
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @MBXERR_ERROR, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %136, %41, %30
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_12__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lpfc_init_link(%struct.lpfc_hba*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_set_loopback_flag(%struct.lpfc_hba*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
