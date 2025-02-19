; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-x86_64/extr_user-offsets.c_foo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-x86_64/extr_user-offsets.c_foo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_SC_CR2 = common dso_local global i32 0, align 4
@sigcontext = common dso_local global i32 0, align 4
@cr2 = common dso_local global i32 0, align 4
@HOST_SC_ERR = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@HOST_SC_TRAPNO = common dso_local global i32 0, align 4
@trapno = common dso_local global i32 0, align 4
@HOST_FP_SIZE = common dso_local global i32 0, align 4
@HOST_RBX = common dso_local global i32 0, align 4
@RBX = common dso_local global i32 0, align 4
@HOST_RCX = common dso_local global i32 0, align 4
@RCX = common dso_local global i32 0, align 4
@HOST_RDI = common dso_local global i32 0, align 4
@RDI = common dso_local global i32 0, align 4
@HOST_RSI = common dso_local global i32 0, align 4
@RSI = common dso_local global i32 0, align 4
@HOST_RDX = common dso_local global i32 0, align 4
@RDX = common dso_local global i32 0, align 4
@HOST_RBP = common dso_local global i32 0, align 4
@RBP = common dso_local global i32 0, align 4
@HOST_RAX = common dso_local global i32 0, align 4
@RAX = common dso_local global i32 0, align 4
@HOST_R8 = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@HOST_R9 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@HOST_R10 = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@HOST_R11 = common dso_local global i32 0, align 4
@R11 = common dso_local global i32 0, align 4
@HOST_R12 = common dso_local global i32 0, align 4
@R12 = common dso_local global i32 0, align 4
@HOST_R13 = common dso_local global i32 0, align 4
@R13 = common dso_local global i32 0, align 4
@HOST_R14 = common dso_local global i32 0, align 4
@R14 = common dso_local global i32 0, align 4
@HOST_R15 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@HOST_ORIG_RAX = common dso_local global i32 0, align 4
@ORIG_RAX = common dso_local global i32 0, align 4
@HOST_CS = common dso_local global i32 0, align 4
@CS = common dso_local global i32 0, align 4
@HOST_SS = common dso_local global i32 0, align 4
@SS = common dso_local global i32 0, align 4
@HOST_EFLAGS = common dso_local global i32 0, align 4
@EFLAGS = common dso_local global i32 0, align 4
@HOST_IP = common dso_local global i32 0, align 4
@RIP = common dso_local global i32 0, align 4
@HOST_SP = common dso_local global i32 0, align 4
@RSP = common dso_local global i32 0, align 4
@UM_FRAME_SIZE = common dso_local global i32 0, align 4
@UM_POLLIN = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@UM_POLLPRI = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@UM_POLLOUT = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@UM_PROT_READ = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@UM_PROT_WRITE = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@UM_PROT_EXEC = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@DS = common dso_local global i32 0, align 4
@ES = common dso_local global i32 0, align 4
@FS = common dso_local global i32 0, align 4
@GS = common dso_local global i32 0, align 4
@HOST_DS = common dso_local global i32 0, align 4
@HOST_ES = common dso_local global i32 0, align 4
@HOST_FS = common dso_local global i32 0, align 4
@HOST_GS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 {
  %1 = load i32, i32* @HOST_SC_CR2, align 4
  %2 = load i32, i32* @sigcontext, align 4
  %3 = load i32, i32* @cr2, align 4
  %4 = call i32 @OFFSET(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @HOST_SC_ERR, align 4
  %6 = load i32, i32* @sigcontext, align 4
  %7 = load i32, i32* @err, align 4
  %8 = call i32 @OFFSET(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @HOST_SC_TRAPNO, align 4
  %10 = load i32, i32* @sigcontext, align 4
  %11 = load i32, i32* @trapno, align 4
  %12 = call i32 @OFFSET(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @HOST_FP_SIZE, align 4
  %14 = call i32 @DEFINE(i32 %13, i32 0)
  %15 = load i32, i32* @HOST_RBX, align 4
  %16 = load i32, i32* @RBX, align 4
  %17 = call i32 @DEFINE_LONGS(i32 %15, i32 %16)
  %18 = load i32, i32* @HOST_RCX, align 4
  %19 = load i32, i32* @RCX, align 4
  %20 = call i32 @DEFINE_LONGS(i32 %18, i32 %19)
  %21 = load i32, i32* @HOST_RDI, align 4
  %22 = load i32, i32* @RDI, align 4
  %23 = call i32 @DEFINE_LONGS(i32 %21, i32 %22)
  %24 = load i32, i32* @HOST_RSI, align 4
  %25 = load i32, i32* @RSI, align 4
  %26 = call i32 @DEFINE_LONGS(i32 %24, i32 %25)
  %27 = load i32, i32* @HOST_RDX, align 4
  %28 = load i32, i32* @RDX, align 4
  %29 = call i32 @DEFINE_LONGS(i32 %27, i32 %28)
  %30 = load i32, i32* @HOST_RBP, align 4
  %31 = load i32, i32* @RBP, align 4
  %32 = call i32 @DEFINE_LONGS(i32 %30, i32 %31)
  %33 = load i32, i32* @HOST_RAX, align 4
  %34 = load i32, i32* @RAX, align 4
  %35 = call i32 @DEFINE_LONGS(i32 %33, i32 %34)
  %36 = load i32, i32* @HOST_R8, align 4
  %37 = load i32, i32* @R8, align 4
  %38 = call i32 @DEFINE_LONGS(i32 %36, i32 %37)
  %39 = load i32, i32* @HOST_R9, align 4
  %40 = load i32, i32* @R9, align 4
  %41 = call i32 @DEFINE_LONGS(i32 %39, i32 %40)
  %42 = load i32, i32* @HOST_R10, align 4
  %43 = load i32, i32* @R10, align 4
  %44 = call i32 @DEFINE_LONGS(i32 %42, i32 %43)
  %45 = load i32, i32* @HOST_R11, align 4
  %46 = load i32, i32* @R11, align 4
  %47 = call i32 @DEFINE_LONGS(i32 %45, i32 %46)
  %48 = load i32, i32* @HOST_R12, align 4
  %49 = load i32, i32* @R12, align 4
  %50 = call i32 @DEFINE_LONGS(i32 %48, i32 %49)
  %51 = load i32, i32* @HOST_R13, align 4
  %52 = load i32, i32* @R13, align 4
  %53 = call i32 @DEFINE_LONGS(i32 %51, i32 %52)
  %54 = load i32, i32* @HOST_R14, align 4
  %55 = load i32, i32* @R14, align 4
  %56 = call i32 @DEFINE_LONGS(i32 %54, i32 %55)
  %57 = load i32, i32* @HOST_R15, align 4
  %58 = load i32, i32* @R15, align 4
  %59 = call i32 @DEFINE_LONGS(i32 %57, i32 %58)
  %60 = load i32, i32* @HOST_ORIG_RAX, align 4
  %61 = load i32, i32* @ORIG_RAX, align 4
  %62 = call i32 @DEFINE_LONGS(i32 %60, i32 %61)
  %63 = load i32, i32* @HOST_CS, align 4
  %64 = load i32, i32* @CS, align 4
  %65 = call i32 @DEFINE_LONGS(i32 %63, i32 %64)
  %66 = load i32, i32* @HOST_SS, align 4
  %67 = load i32, i32* @SS, align 4
  %68 = call i32 @DEFINE_LONGS(i32 %66, i32 %67)
  %69 = load i32, i32* @HOST_EFLAGS, align 4
  %70 = load i32, i32* @EFLAGS, align 4
  %71 = call i32 @DEFINE_LONGS(i32 %69, i32 %70)
  %72 = load i32, i32* @HOST_IP, align 4
  %73 = load i32, i32* @RIP, align 4
  %74 = call i32 @DEFINE_LONGS(i32 %72, i32 %73)
  %75 = load i32, i32* @HOST_SP, align 4
  %76 = load i32, i32* @RSP, align 4
  %77 = call i32 @DEFINE_LONGS(i32 %75, i32 %76)
  %78 = load i32, i32* @UM_FRAME_SIZE, align 4
  %79 = call i32 @DEFINE(i32 %78, i32 4)
  %80 = load i32, i32* @UM_POLLIN, align 4
  %81 = load i32, i32* @POLLIN, align 4
  %82 = call i32 @DEFINE(i32 %80, i32 %81)
  %83 = load i32, i32* @UM_POLLPRI, align 4
  %84 = load i32, i32* @POLLPRI, align 4
  %85 = call i32 @DEFINE(i32 %83, i32 %84)
  %86 = load i32, i32* @UM_POLLOUT, align 4
  %87 = load i32, i32* @POLLOUT, align 4
  %88 = call i32 @DEFINE(i32 %86, i32 %87)
  %89 = load i32, i32* @UM_PROT_READ, align 4
  %90 = load i32, i32* @PROT_READ, align 4
  %91 = call i32 @DEFINE(i32 %89, i32 %90)
  %92 = load i32, i32* @UM_PROT_WRITE, align 4
  %93 = load i32, i32* @PROT_WRITE, align 4
  %94 = call i32 @DEFINE(i32 %92, i32 %93)
  %95 = load i32, i32* @UM_PROT_EXEC, align 4
  %96 = load i32, i32* @PROT_EXEC, align 4
  %97 = call i32 @DEFINE(i32 %95, i32 %96)
  ret void
}

declare dso_local i32 @OFFSET(i32, i32, i32) #1

declare dso_local i32 @DEFINE(i32, i32) #1

declare dso_local i32 @DEFINE_LONGS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
