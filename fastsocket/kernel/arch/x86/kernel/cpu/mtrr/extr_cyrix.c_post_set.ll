; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_post_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_post_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CX86_CCR3 = common dso_local global i32 0, align 4
@ccr3 = common dso_local global i32 0, align 4
@cpu_has_pge = common dso_local global i64 0, align 8
@cr4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @post_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_set() #0 {
  %1 = call i32 (...) @wbinvd()
  %2 = load i32, i32* @CX86_CCR3, align 4
  %3 = load i32, i32* @ccr3, align 4
  %4 = call i32 @setCx86(i32 %2, i32 %3)
  %5 = call i32 (...) @read_cr0()
  %6 = and i32 %5, -1073741825
  %7 = call i32 @write_cr0(i32 %6)
  %8 = load i64, i64* @cpu_has_pge, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @cr4, align 4
  %12 = call i32 @write_cr4(i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  ret void
}

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @setCx86(i32, i32) #1

declare dso_local i32 @write_cr0(i32) #1

declare dso_local i32 @read_cr0(...) #1

declare dso_local i32 @write_cr4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
