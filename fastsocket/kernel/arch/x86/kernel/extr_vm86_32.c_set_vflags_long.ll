; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_set_vflags_long.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_set_vflags_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kernel_vm86_regs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VEFLAGS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@SAFE_MASK = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.kernel_vm86_regs*)* @set_vflags_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vflags_long(i64 %0, %struct.kernel_vm86_regs* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kernel_vm86_regs*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.kernel_vm86_regs* %1, %struct.kernel_vm86_regs** %4, align 8
  %5 = load i32, i32* @VEFLAGS, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @set_flags(i32 %5, i64 %6, i32 %10)
  %12 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %4, align 8
  %13 = getelementptr inbounds %struct.kernel_vm86_regs, %struct.kernel_vm86_regs* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @SAFE_MASK, align 4
  %18 = call i32 @set_flags(i32 %15, i64 %16, i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @X86_EFLAGS_IF, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %4, align 8
  %25 = call i32 @set_IF(%struct.kernel_vm86_regs* %24)
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %4, align 8
  %28 = call i32 @clear_IF(%struct.kernel_vm86_regs* %27)
  br label %29

29:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @set_flags(i32, i64, i32) #1

declare dso_local i32 @set_IF(%struct.kernel_vm86_regs*) #1

declare dso_local i32 @clear_IF(%struct.kernel_vm86_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
