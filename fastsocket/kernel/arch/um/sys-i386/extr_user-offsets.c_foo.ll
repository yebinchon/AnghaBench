; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_user-offsets.c_foo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_user-offsets.c_foo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_SC_TRAPNO = common dso_local global i32 0, align 4
@sigcontext = common dso_local global i32 0, align 4
@trapno = common dso_local global i32 0, align 4
@HOST_SC_ERR = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@HOST_SC_CR2 = common dso_local global i32 0, align 4
@cr2 = common dso_local global i32 0, align 4
@HOST_FP_SIZE = common dso_local global i32 0, align 4
@HOST_FPX_SIZE = common dso_local global i32 0, align 4
@HOST_IP = common dso_local global i32 0, align 4
@EIP = common dso_local global i32 0, align 4
@HOST_SP = common dso_local global i32 0, align 4
@UESP = common dso_local global i32 0, align 4
@HOST_EFLAGS = common dso_local global i32 0, align 4
@EFL = common dso_local global i32 0, align 4
@HOST_EAX = common dso_local global i32 0, align 4
@EAX = common dso_local global i32 0, align 4
@HOST_EBX = common dso_local global i32 0, align 4
@EBX = common dso_local global i32 0, align 4
@HOST_ECX = common dso_local global i32 0, align 4
@ECX = common dso_local global i32 0, align 4
@HOST_EDX = common dso_local global i32 0, align 4
@EDX = common dso_local global i32 0, align 4
@HOST_ESI = common dso_local global i32 0, align 4
@ESI = common dso_local global i32 0, align 4
@HOST_EDI = common dso_local global i32 0, align 4
@EDI = common dso_local global i32 0, align 4
@HOST_EBP = common dso_local global i32 0, align 4
@EBP = common dso_local global i32 0, align 4
@HOST_CS = common dso_local global i32 0, align 4
@CS = common dso_local global i32 0, align 4
@HOST_SS = common dso_local global i32 0, align 4
@SS = common dso_local global i32 0, align 4
@HOST_DS = common dso_local global i32 0, align 4
@DS = common dso_local global i32 0, align 4
@HOST_FS = common dso_local global i32 0, align 4
@FS = common dso_local global i32 0, align 4
@HOST_ES = common dso_local global i32 0, align 4
@ES = common dso_local global i32 0, align 4
@HOST_GS = common dso_local global i32 0, align 4
@GS = common dso_local global i32 0, align 4
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 {
  %1 = load i32, i32* @HOST_SC_TRAPNO, align 4
  %2 = load i32, i32* @sigcontext, align 4
  %3 = load i32, i32* @trapno, align 4
  %4 = call i32 @OFFSET(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @HOST_SC_ERR, align 4
  %6 = load i32, i32* @sigcontext, align 4
  %7 = load i32, i32* @err, align 4
  %8 = call i32 @OFFSET(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @HOST_SC_CR2, align 4
  %10 = load i32, i32* @sigcontext, align 4
  %11 = load i32, i32* @cr2, align 4
  %12 = call i32 @OFFSET(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @HOST_FP_SIZE, align 4
  %14 = call i32 @DEFINE_LONGS(i32 %13, i32 4)
  %15 = load i32, i32* @HOST_FPX_SIZE, align 4
  %16 = call i32 @DEFINE_LONGS(i32 %15, i32 4)
  %17 = load i32, i32* @HOST_IP, align 4
  %18 = load i32, i32* @EIP, align 4
  %19 = call i32 @DEFINE(i32 %17, i32 %18)
  %20 = load i32, i32* @HOST_SP, align 4
  %21 = load i32, i32* @UESP, align 4
  %22 = call i32 @DEFINE(i32 %20, i32 %21)
  %23 = load i32, i32* @HOST_EFLAGS, align 4
  %24 = load i32, i32* @EFL, align 4
  %25 = call i32 @DEFINE(i32 %23, i32 %24)
  %26 = load i32, i32* @HOST_EAX, align 4
  %27 = load i32, i32* @EAX, align 4
  %28 = call i32 @DEFINE(i32 %26, i32 %27)
  %29 = load i32, i32* @HOST_EBX, align 4
  %30 = load i32, i32* @EBX, align 4
  %31 = call i32 @DEFINE(i32 %29, i32 %30)
  %32 = load i32, i32* @HOST_ECX, align 4
  %33 = load i32, i32* @ECX, align 4
  %34 = call i32 @DEFINE(i32 %32, i32 %33)
  %35 = load i32, i32* @HOST_EDX, align 4
  %36 = load i32, i32* @EDX, align 4
  %37 = call i32 @DEFINE(i32 %35, i32 %36)
  %38 = load i32, i32* @HOST_ESI, align 4
  %39 = load i32, i32* @ESI, align 4
  %40 = call i32 @DEFINE(i32 %38, i32 %39)
  %41 = load i32, i32* @HOST_EDI, align 4
  %42 = load i32, i32* @EDI, align 4
  %43 = call i32 @DEFINE(i32 %41, i32 %42)
  %44 = load i32, i32* @HOST_EBP, align 4
  %45 = load i32, i32* @EBP, align 4
  %46 = call i32 @DEFINE(i32 %44, i32 %45)
  %47 = load i32, i32* @HOST_CS, align 4
  %48 = load i32, i32* @CS, align 4
  %49 = call i32 @DEFINE(i32 %47, i32 %48)
  %50 = load i32, i32* @HOST_SS, align 4
  %51 = load i32, i32* @SS, align 4
  %52 = call i32 @DEFINE(i32 %50, i32 %51)
  %53 = load i32, i32* @HOST_DS, align 4
  %54 = load i32, i32* @DS, align 4
  %55 = call i32 @DEFINE(i32 %53, i32 %54)
  %56 = load i32, i32* @HOST_FS, align 4
  %57 = load i32, i32* @FS, align 4
  %58 = call i32 @DEFINE(i32 %56, i32 %57)
  %59 = load i32, i32* @HOST_ES, align 4
  %60 = load i32, i32* @ES, align 4
  %61 = call i32 @DEFINE(i32 %59, i32 %60)
  %62 = load i32, i32* @HOST_GS, align 4
  %63 = load i32, i32* @GS, align 4
  %64 = call i32 @DEFINE(i32 %62, i32 %63)
  %65 = load i32, i32* @UM_FRAME_SIZE, align 4
  %66 = call i32 @DEFINE(i32 %65, i32 4)
  %67 = load i32, i32* @UM_POLLIN, align 4
  %68 = load i32, i32* @POLLIN, align 4
  %69 = call i32 @DEFINE(i32 %67, i32 %68)
  %70 = load i32, i32* @UM_POLLPRI, align 4
  %71 = load i32, i32* @POLLPRI, align 4
  %72 = call i32 @DEFINE(i32 %70, i32 %71)
  %73 = load i32, i32* @UM_POLLOUT, align 4
  %74 = load i32, i32* @POLLOUT, align 4
  %75 = call i32 @DEFINE(i32 %73, i32 %74)
  %76 = load i32, i32* @UM_PROT_READ, align 4
  %77 = load i32, i32* @PROT_READ, align 4
  %78 = call i32 @DEFINE(i32 %76, i32 %77)
  %79 = load i32, i32* @UM_PROT_WRITE, align 4
  %80 = load i32, i32* @PROT_WRITE, align 4
  %81 = call i32 @DEFINE(i32 %79, i32 %80)
  %82 = load i32, i32* @UM_PROT_EXEC, align 4
  %83 = load i32, i32* @PROT_EXEC, align 4
  %84 = call i32 @DEFINE(i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @OFFSET(i32, i32, i32) #1

declare dso_local i32 @DEFINE_LONGS(i32, i32) #1

declare dso_local i32 @DEFINE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
