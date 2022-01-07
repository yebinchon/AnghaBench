; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_set_vflags_short.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_set_vflags_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kernel_vm86_regs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VFLAGS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@SAFE_MASK = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, %struct.kernel_vm86_regs*)* @set_vflags_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vflags_short(i16 zeroext %0, %struct.kernel_vm86_regs* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.kernel_vm86_regs*, align 8
  store i16 %0, i16* %3, align 2
  store %struct.kernel_vm86_regs* %1, %struct.kernel_vm86_regs** %4, align 8
  %5 = load i32, i32* @VFLAGS, align 4
  %6 = load i16, i16* %3, align 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @set_flags(i32 %5, i16 zeroext %6, i32 %10)
  %12 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %4, align 8
  %13 = getelementptr inbounds %struct.kernel_vm86_regs, %struct.kernel_vm86_regs* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i16, i16* %3, align 2
  %17 = load i32, i32* @SAFE_MASK, align 4
  %18 = call i32 @set_flags(i32 %15, i16 zeroext %16, i32 %17)
  %19 = load i16, i16* %3, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @X86_EFLAGS_IF, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %4, align 8
  %27 = call i32 @set_IF(%struct.kernel_vm86_regs* %26)
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.kernel_vm86_regs*, %struct.kernel_vm86_regs** %4, align 8
  %30 = call i32 @clear_IF(%struct.kernel_vm86_regs* %29)
  br label %31

31:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @set_flags(i32, i16 zeroext, i32) #1

declare dso_local i32 @set_IF(%struct.kernel_vm86_regs*) #1

declare dso_local i32 @clear_IF(%struct.kernel_vm86_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
