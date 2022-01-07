; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/generic/extr_setup_tx4939.c_tx4939_be_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/txx9/generic/extr_setup_tx4939.c_tx4939_be_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"%cBE exception at %#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ccfg:%llx, toea:%llx\0A\00", align 1
@tx4939_ccfgptr = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"BusError!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @tx4939_be_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx4939_be_handler(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 4
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @console_verbose()
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 68, i32 73
  %16 = sext i32 %15 to i64
  %17 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx4939_ccfgptr, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i64 @____raw_readq(i32* %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx4939_ccfgptr, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i64 @____raw_readq(i32* %25)
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %26)
  %28 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %29 = call i32 @show_registers(%struct.pt_regs* %28)
  %30 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i64 @____raw_readq(i32*) #1

declare dso_local i32 @show_registers(%struct.pt_regs*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
