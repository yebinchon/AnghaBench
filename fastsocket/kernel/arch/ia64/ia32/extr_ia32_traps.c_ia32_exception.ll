; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_traps.c_ia32_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_ia32_traps.c_ia32_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.siginfo = type { i64, i8*, i8*, i64, i64, i64 }

@SIGTRAP = common dso_local global i8* null, align 8
@TRAP_TRACE = common dso_local global i8* null, align 8
@TRAP_BRANCH = common dso_local global i8* null, align 8
@TRAP_BRKPT = common dso_local global i8* null, align 8
@SIGFPE = common dso_local global i8* null, align 8
@FPE_INTDIV = common dso_local global i8* null, align 8
@SIGILL = common dso_local global i8* null, align 8
@ILL_ILLOPN = common dso_local global i8* null, align 8
@SIGSEGV = common dso_local global i8* null, align 8
@_IA64_REG_AR_FSR = common dso_local global i32 0, align 4
@_IA64_REG_AR_FCR = common dso_local global i32 0, align 4
@__ISR_VALID = common dso_local global i64 0, align 8
@FPE_FLTINV = common dso_local global i8* null, align 8
@FPE_FLTUND = common dso_local global i8* null, align 8
@FPE_FLTDIV = common dso_local global i8* null, align 8
@FPE_FLTOVF = common dso_local global i8* null, align 8
@FPE_FLTRES = common dso_local global i8* null, align 8
@BUS_ADRALN = common dso_local global i8* null, align 8
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia32_exception(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.siginfo, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = lshr i64 %13, 16
  %15 = and i64 %14, 255
  switch i64 %15, label %106 [
    i64 1, label %16
    i64 2, label %16
    i64 3, label %36
    i64 0, label %41
    i64 4, label %46
    i64 5, label %46
    i64 6, label %50
    i64 7, label %55
    i64 8, label %55
    i64 9, label %55
    i64 11, label %55
    i64 12, label %55
    i64 13, label %55
    i64 16, label %59
    i64 17, label %97
    i64 19, label %102
  ]

16:                                               ; preds = %2, %2
  %17 = load i8*, i8** @SIGTRAP, align 8
  %18 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** @TRAP_TRACE, align 8
  %23 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  br label %35

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %25, 4
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** @TRAP_BRANCH, align 8
  %30 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  br label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** @TRAP_BRKPT, align 8
  %33 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %21
  br label %107

36:                                               ; preds = %2
  %37 = load i8*, i8** @SIGTRAP, align 8
  %38 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** @TRAP_BRKPT, align 8
  %40 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  br label %107

41:                                               ; preds = %2
  %42 = load i8*, i8** @SIGFPE, align 8
  %43 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** @FPE_INTDIV, align 8
  %45 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  br label %107

46:                                               ; preds = %2, %2
  %47 = load i8*, i8** @SIGFPE, align 8
  %48 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* null, i8** %49, align 8
  br label %107

50:                                               ; preds = %2
  %51 = load i8*, i8** @SIGILL, align 8
  %52 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** @ILL_ILLOPN, align 8
  %54 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  br label %107

55:                                               ; preds = %2, %2, %2, %2, %2, %2
  %56 = load i8*, i8** @SIGSEGV, align 8
  %57 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* null, i8** %58, align 8
  br label %107

59:                                               ; preds = %2
  %60 = load i32, i32* @_IA64_REG_AR_FSR, align 4
  %61 = call i64 @ia64_getreg(i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i32, i32* @_IA64_REG_AR_FCR, align 4
  %63 = call i64 @ia64_getreg(i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i8*, i8** @SIGFPE, align 8
  %65 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* @__ISR_VALID, align 8
  %69 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 3
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = xor i64 %70, -1
  %72 = load i64, i64* %7, align 8
  %73 = and i64 %72, 63
  %74 = and i64 %71, %73
  %75 = load i64, i64* %7, align 8
  %76 = and i64 %75, 576
  %77 = or i64 %74, %76
  switch i64 %77, label %79 [
    i64 0, label %78
    i64 1, label %81
    i64 64, label %81
    i64 576, label %81
    i64 2, label %84
    i64 16, label %84
    i64 4, label %87
    i64 8, label %90
    i64 32, label %93
  ]

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %59, %78
  %80 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* null, i8** %80, align 8
  br label %96

81:                                               ; preds = %59, %59, %59
  %82 = load i8*, i8** @FPE_FLTINV, align 8
  %83 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  br label %96

84:                                               ; preds = %59, %59
  %85 = load i8*, i8** @FPE_FLTUND, align 8
  %86 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  br label %96

87:                                               ; preds = %59
  %88 = load i8*, i8** @FPE_FLTDIV, align 8
  %89 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  br label %96

90:                                               ; preds = %59
  %91 = load i8*, i8** @FPE_FLTOVF, align 8
  %92 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %91, i8** %92, align 8
  br label %96

93:                                               ; preds = %59
  %94 = load i8*, i8** @FPE_FLTRES, align 8
  %95 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %94, i8** %95, align 8
  br label %96

96:                                               ; preds = %93, %90, %87, %84, %81, %79
  br label %107

97:                                               ; preds = %2
  %98 = load i8*, i8** @SIGSEGV, align 8
  %99 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  %100 = load i8*, i8** @BUS_ADRALN, align 8
  %101 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* %100, i8** %101, align 8
  br label %107

102:                                              ; preds = %2
  %103 = load i8*, i8** @SIGFPE, align 8
  %104 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 2
  store i8* null, i8** %105, align 8
  br label %107

106:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %112

107:                                              ; preds = %102, %97, %96, %55, %50, %46, %41, %36, %35
  %108 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %6, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @current, align 4
  %111 = call i32 @force_sig_info(i8* %109, %struct.siginfo* %6, i32 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %106
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @ia64_getreg(i32) #1

declare dso_local i32 @force_sig_info(i8*, %struct.siginfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
