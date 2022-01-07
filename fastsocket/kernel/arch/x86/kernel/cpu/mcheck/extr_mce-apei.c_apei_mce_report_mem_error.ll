; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce-apei.c_apei_mce_report_mem_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce-apei.c_apei_mce_report_mem_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cper_sec_mem_err = type { i32 }
%struct.mce = type { i32, i32, i32 }

@MCI_STATUS_VAL = common dso_local global i32 0, align 4
@MCI_STATUS_EN = common dso_local global i32 0, align 4
@MCI_STATUS_ADDRV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apei_mce_report_mem_error(i32 %0, %struct.cper_sec_mem_err* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cper_sec_mem_err*, align 8
  %5 = alloca %struct.mce, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cper_sec_mem_err* %1, %struct.cper_sec_mem_err** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %25

9:                                                ; preds = %2
  %10 = call i32 @mce_setup(%struct.mce* %5)
  %11 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @MCI_STATUS_VAL, align 4
  %13 = load i32, i32* @MCI_STATUS_EN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %16 = or i32 %14, %15
  %17 = or i32 %16, 159
  %18 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %4, align 8
  %20 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = call i32 @mce_log(%struct.mce* %5)
  %24 = call i32 (...) @mce_notify_irq()
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @mce_setup(%struct.mce*) #1

declare dso_local i32 @mce_log(%struct.mce*) #1

declare dso_local i32 @mce_notify_irq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
