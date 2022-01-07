; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_ch_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_ch_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BVME_SCC_A_ADDR = common dso_local global i64 0, align 8
@M147_SCC_A_ADDR = common dso_local global i64 0, align 8
@MACH_IS_BVME6000 = common dso_local global i64 0, align 8
@MACH_IS_MVME147 = common dso_local global i64 0, align 8
@MACH_IS_MVME16x = common dso_local global i64 0, align 8
@MVME_SCC_A_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @scc_ch_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_ch_write(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  store i8 %0, i8* %2, align 1
  store i8* null, i8** %3, align 8
  br label %4

4:                                                ; preds = %6, %1
  %5 = call i32 (...) @scc_delay()
  br label %6

6:                                                ; preds = %4
  %7 = load i8*, i8** %3, align 8
  %8 = load volatile i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = and i32 %9, 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %4, label %13

13:                                               ; preds = %6
  %14 = call i32 (...) @scc_delay()
  %15 = load i8*, i8** %3, align 8
  store volatile i8 8, i8* %15, align 1
  %16 = call i32 (...) @scc_delay()
  %17 = load i8, i8* %2, align 1
  %18 = load i8*, i8** %3, align 8
  store volatile i8 %17, i8* %18, align 1
  ret void
}

declare dso_local i32 @scc_delay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
