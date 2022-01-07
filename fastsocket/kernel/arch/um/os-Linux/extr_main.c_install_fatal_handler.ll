; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_main.c_install_fatal_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_main.c_install_fatal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32*, i32 }

@SA_RESETHAND = common dso_local global i32 0, align 4
@SA_NODEFER = common dso_local global i32 0, align 4
@last_ditch_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"failed to install handler for signal %d - errno = %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @install_fatal_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_fatal_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 3
  %5 = call i32 @sigemptyset(i32* %4)
  %6 = load i32, i32* @SA_RESETHAND, align 4
  %7 = load i32, i32* @SA_NODEFER, align 4
  %8 = or i32 %6, %7
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @last_ditch_exit, align 4
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @sigaction(i32 %13, %struct.sigaction* %3, i32* null)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %1
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
