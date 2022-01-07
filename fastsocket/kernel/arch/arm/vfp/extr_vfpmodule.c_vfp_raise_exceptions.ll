; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpmodule.c_vfp_raise_exceptions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpmodule.c_vfp_raise_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"VFP: raising exceptions %08x\0A\00", align 1
@VFP_EXCEPTION_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"unhandled bounce\00", align 1
@FPSCR = common dso_local global i32 0, align 4
@FPSCR_DZC = common dso_local global i32 0, align 4
@FPSCR_DZE = common dso_local global i32 0, align 4
@FPE_FLTDIV = common dso_local global i32 0, align 4
@FPSCR_IXC = common dso_local global i32 0, align 4
@FPSCR_IXE = common dso_local global i32 0, align 4
@FPE_FLTRES = common dso_local global i32 0, align 4
@FPSCR_UFC = common dso_local global i32 0, align 4
@FPSCR_UFE = common dso_local global i32 0, align 4
@FPE_FLTUND = common dso_local global i32 0, align 4
@FPSCR_OFC = common dso_local global i32 0, align 4
@FPSCR_OFE = common dso_local global i32 0, align 4
@FPE_FLTOVF = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@FPSCR_IOE = common dso_local global i32 0, align 4
@FPE_FLTINV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.pt_regs*)* @vfp_raise_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfp_raise_exceptions(i32 %0, i32 %1, i32 %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VFP_EXCEPTION_ERROR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @vfp_panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %19 = call i32 @vfp_raise_sigfpe(i32 0, %struct.pt_regs* %18)
  br label %93

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @FPSCR, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @fmxr(i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @FPSCR_DZC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @FPSCR_DZE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @FPE_FLTDIV, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %31, %20
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @FPSCR_IXC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @FPSCR_IXE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @FPE_FLTRES, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %43, %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @FPSCR_UFC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @FPSCR_UFE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @FPE_FLTUND, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %55, %50
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @FPSCR_OFC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @FPSCR_OFE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @FPE_FLTOVF, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %67, %62
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @FPSCR_IOC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @FPSCR_IOE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @FPE_FLTINV, align 4
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %84, %79, %74
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %92 = call i32 @vfp_raise_sigfpe(i32 %90, %struct.pt_regs* %91)
  br label %93

93:                                               ; preds = %15, %89, %86
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @vfp_panic(i8*, i32) #1

declare dso_local i32 @vfp_raise_sigfpe(i32, %struct.pt_regs*) #1

declare dso_local i32 @fmxr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
