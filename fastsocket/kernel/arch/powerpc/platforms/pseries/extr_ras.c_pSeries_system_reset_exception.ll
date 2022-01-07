; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_ras.c_pSeries_system_reset_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_ras.c_pSeries_system_reset_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.rtas_error_log = type { i32 }

@fwnmi_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pSeries_system_reset_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.rtas_error_log*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load i64, i64* @fwnmi_active, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call %struct.rtas_error_log* @fwnmi_get_errinfo(%struct.pt_regs* %7)
  store %struct.rtas_error_log* %8, %struct.rtas_error_log** %3, align 8
  %9 = load %struct.rtas_error_log*, %struct.rtas_error_log** %3, align 8
  %10 = icmp ne %struct.rtas_error_log* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %6
  %13 = call i32 (...) @fwnmi_release_errinfo()
  br label %14

14:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local %struct.rtas_error_log* @fwnmi_get_errinfo(%struct.pt_regs*) #1

declare dso_local i32 @fwnmi_release_errinfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
