; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_titan.c_titan_machine_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_titan.c_titan_machine_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_common = type { i64 }
%struct.el_TITAN_sysdata_mcheck = type { i32 }

@SCB_Q_SYSMCHK = common dso_local global i64 0, align 8
@SCB_Q_SYSERR = common dso_local global i64 0, align 8
@MCHK_DISPOSITION_DISMISS = common dso_local global i64 0, align 8
@err_print_prefix = common dso_local global i8* null, align 8
@KERN_CRIT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"%s*System %s Error (Vector 0x%x) reported on CPU %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Correctable\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Uncorrectable\00", align 1
@TITAN_MCHECK_INTERRUPT_MASK = common dso_local global i32 0, align 4
@alpha_verbose_mcheck = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @titan_machine_check(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.el_common*, align 8
  %6 = alloca %struct.el_TITAN_sysdata_mcheck*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.el_common*
  store %struct.el_common* %10, %struct.el_common** %5, align 8
  %11 = load %struct.el_common*, %struct.el_common** %5, align 8
  %12 = ptrtoint %struct.el_common* %11 to i64
  %13 = load %struct.el_common*, %struct.el_common** %5, align 8
  %14 = getelementptr inbounds %struct.el_common, %struct.el_common* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  %17 = inttoptr i64 %16 to %struct.el_TITAN_sysdata_mcheck*
  store %struct.el_TITAN_sysdata_mcheck* %17, %struct.el_TITAN_sysdata_mcheck** %6, align 8
  %18 = call i32 (...) @mb()
  %19 = call i32 (...) @draina()
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @SCB_Q_SYSMCHK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @SCB_Q_SYSERR, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @ev6_machine_check(i64 %28, i64 %29)
  br label %62

31:                                               ; preds = %23, %2
  %32 = load %struct.el_common*, %struct.el_common** %5, align 8
  %33 = call i64 @titan_process_logout_frame(%struct.el_common* %32, i64 0)
  %34 = load i64, i64* @MCHK_DISPOSITION_DISMISS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load i8*, i8** @err_print_prefix, align 8
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** @KERN_CRIT, align 8
  store i8* %38, i8** @err_print_prefix, align 8
  %39 = load i8*, i8** @err_print_prefix, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @SCB_Q_SYSERR, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %45 = load i64, i64* %3, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 (...) @smp_processor_id()
  %48 = trunc i64 %47 to i32
  %49 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %44, i32 %46, i32 %48)
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** @err_print_prefix, align 8
  %51 = load %struct.el_TITAN_sysdata_mcheck*, %struct.el_TITAN_sysdata_mcheck** %6, align 8
  %52 = getelementptr inbounds %struct.el_TITAN_sysdata_mcheck, %struct.el_TITAN_sysdata_mcheck* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = and i64 %54, -576460752303423488
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @titan_dispatch_irqs(i32 %57)
  br label %59

59:                                               ; preds = %36, %31
  %60 = call i32 @wrmces(i32 7)
  %61 = call i32 (...) @mb()
  br label %62

62:                                               ; preds = %59, %27
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @draina(...) #1

declare dso_local i32 @ev6_machine_check(i64, i64) #1

declare dso_local i64 @titan_process_logout_frame(%struct.el_common*, i64) #1

declare dso_local i32 @printk(i8*, i8*, i8*, i32, i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @titan_dispatch_irqs(i32) #1

declare dso_local i32 @wrmces(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
