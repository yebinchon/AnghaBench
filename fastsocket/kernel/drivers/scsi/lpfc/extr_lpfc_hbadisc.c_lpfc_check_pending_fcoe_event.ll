; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_check_pending_fcoe_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_check_pending_fcoe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LPFC_LINK_UP = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [136 x i8] c"2768 Pending link or FCF event during current handling of the previous event: link_state:x%x, evt_tag_at_scan:x%x, evt_tag_current:x%x\0A\00", align 1
@FCF_AVAILABLE = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"2780 Restart FCF table scan due to pending FCF event:evt_tag_at_scan:x%x, evt_tag_current:x%x\0A\00", align 1
@LPFC_FCOE_FCF_GET_FIRST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"2833 Stop FCF discovery process due to link state change (x%x)\0A\00", align 1
@FCF_TS_INPROG = common dso_local global i32 0, align 4
@FCF_RR_INPROG = common dso_local global i32 0, align 4
@FCF_REDISC_FOV = common dso_local global i32 0, align 4
@FCF_DISCOVERY = common dso_local global i32 0, align 4
@FCF_REGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_check_pending_fcoe_event(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LPFC_LINK_UP, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %121

20:                                               ; preds = %11, %2
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load i32, i32* @LOG_FIP, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29, i64 %32)
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 4
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load i32, i32* @FCF_AVAILABLE, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %38
  store i32 %43, i32* %41, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 4
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LPFC_LINK_UP, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %20
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load i32, i32* @LOG_FIP, align 4
  %56 = load i32, i32* @LOG_DISCOVERY, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %53, i32 %54, i32 %57, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %63)
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %66 = load i32, i32* @LPFC_FCOE_FCF_GET_FIRST, align 4
  %67 = call i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %65, i32 %66)
  br label %101

68:                                               ; preds = %20
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %70 = load i32, i32* @KERN_INFO, align 4
  %71 = load i32, i32* @LOG_FIP, align 4
  %72 = load i32, i32* @LOG_DISCOVERY, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %69, i32 %70, i32 %73, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 4
  %80 = call i32 @spin_lock_irq(i32* %79)
  %81 = load i32, i32* @FCF_TS_INPROG, align 4
  %82 = load i32, i32* @FCF_RR_INPROG, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @FCF_REDISC_FOV, align 4
  %90 = load i32, i32* @FCF_DISCOVERY, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 4
  %100 = call i32 @spin_unlock_irq(i32* %99)
  br label %101

101:                                              ; preds = %68, %52
  %102 = load i64, i64* %5, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 4
  %107 = call i32 @spin_lock_irq(i32* %106)
  %108 = load i32, i32* @FCF_REGISTERED, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %109
  store i32 %114, i32* %112, align 8
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 4
  %117 = call i32 @spin_unlock_irq(i32* %116)
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %119 = call i32 @lpfc_sli4_unregister_fcf(%struct.lpfc_hba* %118)
  br label %120

120:                                              ; preds = %104, %101
  store i32 1, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %19
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_unregister_fcf(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
