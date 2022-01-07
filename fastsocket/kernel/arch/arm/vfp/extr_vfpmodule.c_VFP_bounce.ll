; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpmodule.c_VFP_bounce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpmodule.c_VFP_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"VFP: bounce: trigger %08x fpexc %08x\0A\00", align 1
@FPEXC = common dso_local global i32 0, align 4
@FPEXC_EX = common dso_local global i32 0, align 4
@FPEXC_DEX = common dso_local global i32 0, align 4
@FPEXC_FP2V = common dso_local global i32 0, align 4
@FPEXC_VV = common dso_local global i32 0, align 4
@FPEXC_TRAP_MASK = common dso_local global i32 0, align 4
@FPSID = common dso_local global i32 0, align 4
@FPSCR = common dso_local global i32 0, align 4
@FPSID_ARCH_MASK = common dso_local global i32 0, align 4
@FPSID_ARCH_BIT = common dso_local global i32 0, align 4
@FPSCR_IXE = common dso_local global i32 0, align 4
@FPINST = common dso_local global i32 0, align 4
@VFP_EXCEPTION_ERROR = common dso_local global i32 0, align 4
@FPEXC_LENGTH_BIT = common dso_local global i32 0, align 4
@FPSCR_LENGTH_MASK = common dso_local global i32 0, align 4
@FPEXC_LENGTH_MASK = common dso_local global i32 0, align 4
@FPSCR_LENGTH_BIT = common dso_local global i32 0, align 4
@FPINST2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VFP_bounce(i32 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* @FPEXC, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FPEXC_EX, align 4
  %18 = load i32, i32* @FPEXC_DEX, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FPEXC_FP2V, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FPEXC_VV, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FPEXC_TRAP_MASK, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %16, %26
  %28 = call i32 @fmxr(i32 %15, i32 %27)
  %29 = load i32, i32* @FPSID, align 4
  %30 = call i32 @fmrx(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @FPSCR, align 4
  %32 = call i32 @fmrx(i32 %31)
  store i32 %32, i32* %7, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @FPSID_ARCH_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @FPSID_ARCH_BIT, align 4
  %37 = shl i32 1, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FPSCR_IXE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %119

45:                                               ; preds = %39, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @FPEXC_EX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @FPINST, align 4
  %52 = call i32 @fmrx(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 4
  store i32 %56, i32* %54, align 4
  br label %69

57:                                               ; preds = %45
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @FPEXC_DEX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @VFP_EXCEPTION_ERROR, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %67 = call i32 @vfp_raise_exceptions(i32 %63, i32 %64, i32 %65, %struct.pt_regs* %66)
  br label %133

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @FPEXC_EX, align 4
  %72 = load i32, i32* @FPEXC_VV, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @FPEXC_LENGTH_BIT, align 4
  %79 = shl i32 1, %78
  %80 = add nsw i32 %77, %79
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @FPSCR_LENGTH_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @FPEXC_LENGTH_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @FPSCR_LENGTH_BIT, align 4
  %89 = load i32, i32* @FPEXC_LENGTH_BIT, align 4
  %90 = sub nsw i32 %88, %89
  %91 = shl i32 %87, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %76, %69
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %98 = call i32 @vfp_emulate_instruction(i32 %95, i32 %96, %struct.pt_regs* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %106 = call i32 @vfp_raise_exceptions(i32 %102, i32 %103, i32 %104, %struct.pt_regs* %105)
  br label %107

107:                                              ; preds = %101, %94
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @FPEXC_EX, align 4
  %110 = load i32, i32* @FPEXC_FP2V, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %133

115:                                              ; preds = %107
  %116 = call i32 (...) @barrier()
  %117 = load i32, i32* @FPINST2, align 4
  %118 = call i32 @fmrx(i32 %117)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %44
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %123 = call i32 @vfp_emulate_instruction(i32 %120, i32 %121, %struct.pt_regs* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %131 = call i32 @vfp_raise_exceptions(i32 %127, i32 %128, i32 %129, %struct.pt_regs* %130)
  br label %132

132:                                              ; preds = %126, %119
  br label %133

133:                                              ; preds = %132, %114, %62
  %134 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @fmxr(i32, i32) #1

declare dso_local i32 @fmrx(i32) #1

declare dso_local i32 @vfp_raise_exceptions(i32, i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @vfp_emulate_instruction(i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
