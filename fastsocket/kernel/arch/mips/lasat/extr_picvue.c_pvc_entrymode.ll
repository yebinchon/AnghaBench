; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_picvue.c_pvc_entrymode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_picvue.c_pvc_entrymode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENTRYMODE_CMD = common dso_local global i32 0, align 4
@AUTO_INC = common dso_local global i32 0, align 4
@CURSOR_FOLLOWS_DISP = common dso_local global i32 0, align 4
@MODE_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pvc_entrymode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvc_entrymode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @ENTRYMODE_CMD, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @AUTO_INC, align 4
  %6 = load i32, i32* @CURSOR_FOLLOWS_DISP, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  %9 = or i32 %3, %8
  %10 = load i32, i32* @MODE_INST, align 4
  %11 = call i32 @pvc_write(i32 %9, i32 %10)
  ret void
}

declare dso_local i32 @pvc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
