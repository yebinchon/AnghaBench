; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-highlander/extr_setup.c_ivdr_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-highlander/extr_setup.c_ivdr_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@PA_IVDRCTL = common dso_local global i32 0, align 4
@IVDR_CK_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @ivdr_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivdr_clk_enable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load i32, i32* @PA_IVDRCTL, align 4
  %4 = call i32 @ctrl_inw(i32 %3)
  %5 = load i32, i32* @IVDR_CK_ON, align 4
  %6 = shl i32 1, %5
  %7 = or i32 %4, %6
  %8 = load i32, i32* @PA_IVDRCTL, align 4
  %9 = call i32 @ctrl_outw(i32 %7, i32 %8)
  ret i32 0
}

declare dso_local i32 @ctrl_outw(i32, i32) #1

declare dso_local i32 @ctrl_inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
