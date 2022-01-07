; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_apm_power_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_apm_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@__const.apm_power_off.po_bios_call = private unnamed_addr constant [19 x i8] c"\B8\00\10\8E\D0\BC\00\F0\B8\07S\BB\01\00\B9\03\00\CD\15", align 16
@apm_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@current = common dso_local global i32 0, align 4
@APM_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apm_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_power_off() #0 {
  %1 = alloca [19 x i8], align 16
  %2 = bitcast [19 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.apm_power_off.po_bios_call, i32 0, i32 0), i64 19, i1 false)
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @apm_info, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @cpumask_of(i32 0)
  %8 = call i32 @set_cpus_allowed_ptr(i32 %6, i32 %7)
  %9 = getelementptr inbounds [19 x i8], [19 x i8]* %1, i64 0, i64 0
  %10 = call i32 @machine_real_restart(i8* %9, i32 19)
  br label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @APM_STATE_OFF, align 4
  %13 = call i32 @set_system_power_state(i32 %12)
  br label %14

14:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @set_cpus_allowed_ptr(i32, i32) #2

declare dso_local i32 @cpumask_of(i32) #2

declare dso_local i32 @machine_real_restart(i8*, i32) #2

declare dso_local i32 @set_system_power_state(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
