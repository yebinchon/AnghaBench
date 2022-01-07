; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fcf_rr_read_fcf_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_fcf_rr_read_fcf_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.fcf_record = type { i32 }

@LPFC_LINK_UP = common dso_local global i64 0, align 8
@FCF_DISCOVERY = common dso_local global i32 0, align 4
@FCF_RR_INPROG = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"2766 Mailbox command READ_FCF_RECORD failed to retrieve a FCF record.\0A\00", align 1
@lpfc_fcf_record_fcf_index = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"2848 Remove ineligible FCF (x%x) from from roundrobin bmask\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"2760 Perform FLOGI roundrobin FCF failover: FCF (x%x) back to FCF (x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"2834 Update current FCF (x%x) with new FCF (x%x)\0A\00", align 1
@BOOT_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"2783 Perform FLOGI roundrobin FCF failover: FCF (x%x) to FCF (x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbx_cmpl_fcf_rr_read_fcf_rec(%struct.lpfc_hba* %0, i32* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fcf_record*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LPFC_LINK_UP, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load i32, i32* @FCF_DISCOVERY, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @FCF_RR_INPROG, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock_irq(i32* %36)
  br label %162

38:                                               ; preds = %2
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call %struct.fcf_record* @lpfc_sli4_fcf_rec_mbox_parse(%struct.lpfc_hba* %39, i32* %40, i64* %8)
  store %struct.fcf_record* %41, %struct.fcf_record** %5, align 8
  %42 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %43 = icmp ne %struct.fcf_record* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = load i32, i32* @LOG_FIP, align 4
  %48 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %159

49:                                               ; preds = %38
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %52 = call i32 @lpfc_match_fcf_conn_list(%struct.lpfc_hba* %50, %struct.fcf_record* %51, i64* %6, i64* %7, i64* %11)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @lpfc_sli4_log_fcf_record_info(%struct.lpfc_hba* %53, %struct.fcf_record* %54, i64 %55, i64 %56)
  %58 = load i32, i32* @lpfc_fcf_record_fcf_index, align 4
  %59 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %60 = call i64 @bf_get(i32 %58, %struct.fcf_record* %59)
  store i64 %60, i64* %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %49
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %65 = load i32, i32* @KERN_INFO, align 4
  %66 = load i32, i32* @LOG_FIP, align 4
  %67 = load i64, i64* %9, align 8
  %68 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @lpfc_sli4_fcf_rr_index_clear(%struct.lpfc_hba* %69, i64 %70)
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = call i64 @lpfc_sli4_fcf_rr_next_index_get(%struct.lpfc_hba* %72)
  store i64 %73, i64* %9, align 8
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @lpfc_sli4_fcf_rr_next_proc(i32 %76, i64 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  br label %162

82:                                               ; preds = %63
  br label %159

83:                                               ; preds = %49
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %84, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %83
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %93 = load i32, i32* @KERN_INFO, align 4
  %94 = load i32, i32* @LOG_FIP, align 4
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %92, i32 %93, i32 %94, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i64 %99, i64 %100)
  %102 = call i32 @msleep(i32 500)
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @lpfc_issue_init_vfi(i32 %105)
  br label %162

107:                                              ; preds = %83
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %109 = load i32, i32* @KERN_INFO, align 4
  %110 = load i32, i32* @LOG_FIP, align 4
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %115, i64 %116)
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 2
  %120 = call i32 @spin_lock_irq(i32* %119)
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.fcf_record*, %struct.fcf_record** %5, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %6, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %107
  %131 = load i32, i32* @BOOT_ENABLE, align 4
  br label %133

132:                                              ; preds = %107
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = call i32 @__lpfc_update_fcf_record(%struct.lpfc_hba* %121, %struct.TYPE_7__* %124, %struct.fcf_record* %125, i64 %126, i64 %127, i32 %134)
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 2
  %138 = call i32 @spin_unlock_irq(i32* %137)
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %10, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %145 = call i32 @lpfc_unregister_fcf(%struct.lpfc_hba* %144)
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = call i32 @memcpy(%struct.TYPE_6__* %148, %struct.TYPE_7__* %151, i32 4)
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %154 = load i32, i32* @KERN_INFO, align 4
  %155 = load i32, i32* @LOG_FIP, align 4
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* %9, align 8
  %158 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %156, i64 %157)
  br label %159

159:                                              ; preds = %133, %82, %44
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %161 = call i32 @lpfc_register_fcf(%struct.lpfc_hba* %160)
  br label %162

162:                                              ; preds = %159, %91, %81, %18
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %163, i32* %164)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.fcf_record* @lpfc_sli4_fcf_rec_mbox_parse(%struct.lpfc_hba*, i32*, i64*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_match_fcf_conn_list(%struct.lpfc_hba*, %struct.fcf_record*, i64*, i64*, i64*) #1

declare dso_local i32 @lpfc_sli4_log_fcf_record_info(%struct.lpfc_hba*, %struct.fcf_record*, i64, i64) #1

declare dso_local i64 @bf_get(i32, %struct.fcf_record*) #1

declare dso_local i32 @lpfc_sli4_fcf_rr_index_clear(%struct.lpfc_hba*, i64) #1

declare dso_local i64 @lpfc_sli4_fcf_rr_next_index_get(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_fcf_rr_next_proc(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_issue_init_vfi(i32) #1

declare dso_local i32 @__lpfc_update_fcf_record(%struct.lpfc_hba*, %struct.TYPE_7__*, %struct.fcf_record*, i64, i64, i32) #1

declare dso_local i32 @lpfc_unregister_fcf(%struct.lpfc_hba*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @lpfc_register_fcf(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
