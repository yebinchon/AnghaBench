; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_lun_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_lun_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.fc_fcp_pkt = type { i32, i64, i32, i32*, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.scsi_lun = type { i32 }

@FCP_TMF_LUN_RESET = common dso_local global i32 0, align 4
@FC_SCSI_TM_TOV = common dso_local global i32 0, align 4
@FC_SRB_COMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"lun reset failed\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@FCP_TMF_CMPL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"lun reset to lun %u completed\0A\00", align 1
@FC_CMD_ABORTED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.fc_fcp_pkt*, i32, i32)* @fc_lun_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_lun_reset(%struct.fc_lport* %0, %struct.fc_fcp_pkt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.fc_fcp_pkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %6, align 8
  store %struct.fc_fcp_pkt* %1, %struct.fc_fcp_pkt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %12 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @htonl(i32 %13)
  %15 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %16 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @FCP_TMF_LUN_RESET, align 4
  %19 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %20 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %24 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.scsi_lun*
  %28 = call i32 @int_to_scsilun(i32 %22, %struct.scsi_lun* %27)
  %29 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %30 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %32 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %31, i32 0, i32 6
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %35 = ptrtoint %struct.fc_fcp_pkt* %34 to i64
  %36 = call i32 @fc_lun_reset_send(i64 %35)
  %37 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %38 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %37, i32 0, i32 6
  %39 = load i32, i32* @FC_SCSI_TM_TOV, align 4
  %40 = call i32 @wait_for_completion_timeout(i32* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %42 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %41, i32 0, i32 2
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load i32, i32* @FC_SRB_COMPL, align 4
  %45 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %46 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %50 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %53 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %52, i32 0, i32 4
  %54 = call i32 @del_timer_sync(i32* %53)
  %55 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %56 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %55, i32 0, i32 2
  %57 = call i32 @spin_lock_bh(i32* %56)
  %58 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %59 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %4
  %63 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %64 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (i32*)*, i32 (i32*)** %65, align 8
  %67 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %68 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 %66(i32* %69)
  %71 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %72 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %62, %4
  %74 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %75 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %77 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %83 = call i32 (%struct.fc_lport*, i8*, ...) @FC_SCSI_DBG(%struct.fc_lport* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @FAILED, align 4
  store i32 %84, i32* %5, align 4
  br label %103

85:                                               ; preds = %73
  %86 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %87 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FCP_TMF_CMPL, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @FAILED, align 4
  store i32 %92, i32* %5, align 4
  br label %103

93:                                               ; preds = %85
  %94 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (%struct.fc_lport*, i8*, ...) @FC_SCSI_DBG(%struct.fc_lport* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @FC_CMD_ABORTED, align 4
  %101 = call i32 @fc_fcp_cleanup_each_cmd(%struct.fc_lport* %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* @SUCCESS, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %93, %91, %81
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @fc_lun_reset_send(i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @FC_SCSI_DBG(%struct.fc_lport*, i8*, ...) #1

declare dso_local i32 @fc_fcp_cleanup_each_cmd(%struct.fc_lport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
