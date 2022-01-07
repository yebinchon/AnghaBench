; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/rbtx4927/extr_setup.c_toshiba_rbtx4927_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/rbtx4927/extr_setup.c_toshiba_rbtx4927_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rbtx4927_softresetlock_addr = common dso_local global i32 0, align 4
@rbtx4927_softreset_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @toshiba_rbtx4927_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshiba_rbtx4927_restart(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @rbtx4927_softresetlock_addr, align 4
  %4 = call i32 @writeb(i32 1, i32 %3)
  br label %5

5:                                                ; preds = %11, %1
  %6 = load i32, i32* @rbtx4927_softresetlock_addr, align 4
  %7 = call i32 @readb(i32 %6)
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %5

12:                                               ; preds = %5
  %13 = load i32, i32* @rbtx4927_softreset_addr, align 4
  %14 = call i32 @writeb(i32 1, i32 %13)
  %15 = call i32 (...) @_machine_halt()
  ret void
}

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @_machine_halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
