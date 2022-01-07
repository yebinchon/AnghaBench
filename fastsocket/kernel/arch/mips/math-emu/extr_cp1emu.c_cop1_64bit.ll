; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_cp1emu.c_cop1_64bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_cp1emu.c_cop1_64bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@cpu_has_fpu = common dso_local global i64 0, align 8
@ST0_FR = common dso_local global i32 0, align 4
@TIF_32BIT_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @cop1_64bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cop1_64bit(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %4 = load i64, i64* @cpu_has_fpu, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ST0_FR, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %2, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %6
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
