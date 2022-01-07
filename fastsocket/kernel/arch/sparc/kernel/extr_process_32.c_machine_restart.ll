; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_32.c_machine_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_32.c_machine_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reboot_command = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Reboot failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_restart(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @local_irq_enable()
  %5 = call i32 @mdelay(i32 8)
  %6 = call i32 (...) @local_irq_disable()
  %7 = load i8*, i8** @reboot_command, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 10)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  store i8 0, i8* %12, align 1
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @prom_reboot(i8* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i8*, i8** @reboot_command, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** @reboot_command, align 8
  %25 = call i32 @prom_reboot(i8* %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = call i32 @prom_feval(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @prom_reboot(i8*) #1

declare dso_local i32 @prom_feval(i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
