; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_chk_tgt_mapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_chk_tgt_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lpfc_rport_data* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"0797 Tgt Map rport failure: rdata x%p\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.scsi_cmnd*)* @lpfc_chk_tgt_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_chk_tgt_mapped(%struct.lpfc_vport* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.lpfc_rport_data*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %12, align 8
  store %struct.lpfc_rport_data* %13, %struct.lpfc_rport_data** %6, align 8
  %14 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %15 = icmp ne %struct.lpfc_rport_data* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load i32, i32* @LOG_FCP, align 4
  %20 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %21 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.lpfc_rport_data* %20)
  %22 = load i32, i32* @FAILED, align 4
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %24, i32 0, i32 0
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %25, align 8
  store %struct.lpfc_nodelist* %26, %struct.lpfc_nodelist** %7, align 8
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 2, %29
  %31 = mul nsw i32 %30, 1000
  %32 = call i64 @msecs_to_jiffies(i32 %31)
  %33 = load i64, i64* @jiffies, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %69, %23
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @jiffies, align 8
  %38 = call i64 @time_after(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %35
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %42 = icmp ne %struct.lpfc_nodelist* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %45 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %90

49:                                               ; preds = %43
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %90

57:                                               ; preds = %49
  %58 = call i64 @msecs_to_jiffies(i32 500)
  %59 = call i32 @schedule_timeout_uninterruptible(i64 %58)
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %63, align 8
  store %struct.lpfc_rport_data* %64, %struct.lpfc_rport_data** %6, align 8
  %65 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %66 = icmp ne %struct.lpfc_rport_data* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @FAILED, align 4
  store i32 %68, i32* %3, align 4
  br label %90

69:                                               ; preds = %57
  %70 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %71 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %70, i32 0, i32 0
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %71, align 8
  store %struct.lpfc_nodelist* %72, %struct.lpfc_nodelist** %7, align 8
  br label %35

73:                                               ; preds = %35
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %75 = icmp ne %struct.lpfc_nodelist* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %78 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %82 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80, %76, %73
  %87 = load i32, i32* @FAILED, align 4
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @SUCCESS, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %86, %67, %55, %47, %16
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, %struct.lpfc_rport_data*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
