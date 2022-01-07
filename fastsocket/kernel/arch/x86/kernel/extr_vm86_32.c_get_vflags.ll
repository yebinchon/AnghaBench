; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_get_vflags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_get_vflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.kernel_vm86_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@RETURN_MASK = common dso_local global i64 0, align 8
@VEFLAGS = common dso_local global i32 0, align 4
@X86_EFLAGS_VIF = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i64 0, align 8
@X86_EFLAGS_IOPL = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernel_vm86_regs*)* @get_vflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_vflags(%struct.kernel_vm86_regs* %0) #0 {
  %2 = alloca %struct.kernel_vm86_regs*, align 8
  %3 = alloca i64, align 8
  store %struct.kernel_vm86_regs* %0, %struct.kernel_vm86_regs** %2, align 8
  %4 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %2, align 8
  %5 = getelementptr inbounds %struct.kernel_vm86_regs, %struct.kernel_vm86_regs* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RETURN_MASK, align 8
  %9 = and i64 %7, %8
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @VEFLAGS, align 4
  %11 = load i32, i32* @X86_EFLAGS_VIF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i64, i64* @X86_EFLAGS_IF, align 8
  %16 = load i64, i64* %3, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i64, i64* @X86_EFLAGS_IOPL, align 8
  %20 = load i64, i64* %3, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* @VEFLAGS, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %23, %27
  %29 = sext i32 %28 to i64
  %30 = or i64 %22, %29
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
