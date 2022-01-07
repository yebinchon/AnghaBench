; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_kexec.c_pseries_kexec_cpu_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_kexec.c_pseries_kexec_cpu_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@FW_FEATURE_SPLPAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"WARNING: DTL deregistration for cpu %d (hw %d) failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"SLB shadow buffer deregistration of cpu %u (hw_cpu_id %d) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"VPA deregistration of cpu %u (hw_cpu_id %d) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pseries_kexec_cpu_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseries_kexec_cpu_down(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @FW_FEATURE_SPLPAR, align 4
  %8 = call i64 @firmware_has_feature(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %10
  %14 = call %struct.TYPE_4__* (...) @get_lppaca()
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = call i32 (...) @hard_smp_processor_id()
  %20 = call i32 @unregister_dtl(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = call i32 (...) @smp_processor_id()
  %25 = call i32 (...) @hard_smp_processor_id()
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28, %13
  %30 = call %struct.TYPE_4__* (...) @get_slb_shadow()
  %31 = call i64 @__pa(%struct.TYPE_4__* %30)
  store i64 %31, i64* %5, align 8
  %32 = call i32 (...) @hard_smp_processor_id()
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @unregister_slb_shadow(i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = call i32 (...) @smp_processor_id()
  %38 = call i32 (...) @hard_smp_processor_id()
  %39 = call i32 @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = call %struct.TYPE_4__* (...) @get_lppaca()
  %42 = call i64 @__pa(%struct.TYPE_4__* %41)
  store i64 %42, i64* %5, align 8
  %43 = call i32 (...) @hard_smp_processor_id()
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @unregister_vpa(i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call i32 (...) @smp_processor_id()
  %49 = call i32 (...) @hard_smp_processor_id()
  %50 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %40
  br label %52

52:                                               ; preds = %51, %10, %2
  ret void
}

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local %struct.TYPE_4__* @get_lppaca(...) #1

declare dso_local i32 @unregister_dtl(i32) #1

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @__pa(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @get_slb_shadow(...) #1

declare dso_local i64 @unregister_slb_shadow(i32, i64) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i64 @unregister_vpa(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
