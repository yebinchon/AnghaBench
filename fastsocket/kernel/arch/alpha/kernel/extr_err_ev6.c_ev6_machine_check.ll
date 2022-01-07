; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev6.c_ev6_machine_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev6.c_ev6_machine_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_common = type { i32 }

@MCHK_DISPOSITION_DISMISS = common dso_local global i64 0, align 8
@err_print_prefix = common dso_local global i8* null, align 8
@KERN_CRIT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"%s*CPU %s Error (Vector 0x%x) reported on CPU %d:\0A\00", align 1
@SCB_Q_PROCERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Correctable\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Uncorrectable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ev6_machine_check(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.el_common*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.el_common*
  store %struct.el_common* %8, %struct.el_common** %5, align 8
  %9 = call i32 (...) @mb()
  %10 = call i32 (...) @draina()
  %11 = load %struct.el_common*, %struct.el_common** %5, align 8
  %12 = call i64 @ev6_process_logout_frame(%struct.el_common* %11, i32 0)
  %13 = load i64, i64* @MCHK_DISPOSITION_DISMISS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load i8*, i8** @err_print_prefix, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** @KERN_CRIT, align 8
  store i8* %17, i8** @err_print_prefix, align 8
  %18 = load i8*, i8** @err_print_prefix, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @SCB_Q_PROCERR, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i64, i64* %3, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 (...) @smp_processor_id()
  %27 = trunc i64 %26 to i32
  %28 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %23, i32 %25, i32 %27)
  %29 = load %struct.el_common*, %struct.el_common** %5, align 8
  %30 = call i64 @ev6_process_logout_frame(%struct.el_common* %29, i32 1)
  %31 = call i32 (...) @get_irq_regs()
  %32 = call i32 @dik_show_regs(i32 %31, i32* null)
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** @err_print_prefix, align 8
  br label %34

34:                                               ; preds = %15, %2
  %35 = call i32 @wrmces(i32 7)
  %36 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @draina(...) #1

declare dso_local i64 @ev6_process_logout_frame(%struct.el_common*, i32) #1

declare dso_local i32 @printk(i8*, i8*, i8*, i32, i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @dik_show_regs(i32, i32*) #1

declare dso_local i32 @get_irq_regs(...) #1

declare dso_local i32 @wrmces(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
