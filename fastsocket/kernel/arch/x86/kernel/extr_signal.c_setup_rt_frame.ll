; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_signal.c_setup_rt_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_signal.c_setup_rt_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_sigaction = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32 }

@is_ia32 = common dso_local global i64 0, align 8
@SA_SIGINFO = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.k_sigaction*, i32*, i32*, %struct.pt_regs*)* @setup_rt_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_rt_frame(i32 %0, %struct.k_sigaction* %1, i32* %2, i32* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.k_sigaction*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.k_sigaction* %1, %struct.k_sigaction** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @signr_convert(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i64, i64* @is_ia32, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %5
  %19 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %20 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SA_SIGINFO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %32 = call i32 @ia32_setup_rt_frame(i32 %27, %struct.k_sigaction* %28, i32* %29, i32* %30, %struct.pt_regs* %31)
  store i32 %32, i32* %13, align 4
  br label %39

33:                                               ; preds = %18
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %38 = call i32 @ia32_setup_frame(i32 %34, %struct.k_sigaction* %35, i32* %36, %struct.pt_regs* %37)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %33, %26
  br label %47

40:                                               ; preds = %5
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.k_sigaction*, %struct.k_sigaction** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %46 = call i32 @__setup_rt_frame(i32 %41, %struct.k_sigaction* %42, i32* %43, i32* %44, %struct.pt_regs* %45)
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %40, %39
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @current, align 4
  %53 = call i32 @force_sigsegv(i32 %51, i32 %52)
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @signr_convert(i32) #1

declare dso_local i32 @ia32_setup_rt_frame(i32, %struct.k_sigaction*, i32*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @ia32_setup_frame(i32, %struct.k_sigaction*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @__setup_rt_frame(i32, %struct.k_sigaction*, i32*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @force_sigsegv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
