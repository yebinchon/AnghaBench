; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_util.c_os_dump_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_util.c_os_dump_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGSEGV = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@__WALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_dump_core() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SIGSEGV, align 4
  %3 = load i32, i32* @SIG_DFL, align 4
  %4 = call i32 @signal(i32 %2, i32 %3)
  %5 = load i32, i32* @SIGTERM, align 4
  %6 = load i32, i32* @SIG_IGN, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  %8 = load i32, i32* @SIGTERM, align 4
  %9 = call i32 @kill(i32 0, i32 %8)
  %10 = load i32, i32* @SIGCONT, align 4
  %11 = call i32 @kill(i32 0, i32 %10)
  br label %12

12:                                               ; preds = %18, %0
  %13 = load i32, i32* @WNOHANG, align 4
  %14 = load i32, i32* @__WALL, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @waitpid(i32 -1, i32* null, i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @os_kill_ptraced_process(i32 %19, i32 0)
  br label %12

21:                                               ; preds = %12
  %22 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @os_kill_ptraced_process(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
