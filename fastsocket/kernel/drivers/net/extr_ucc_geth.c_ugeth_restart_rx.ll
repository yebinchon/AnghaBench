; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_ugeth_restart_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ucc_geth.c_ugeth_restart_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { %struct.TYPE_4__*, %struct.ucc_fast_private* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ucc_fast_private = type { i64 }

@QE_RESTART_RX = common dso_local global i32 0, align 4
@QE_CR_PROTOCOL_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*)* @ugeth_restart_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugeth_restart_rx(%struct.ucc_geth_private* %0) #0 {
  %2 = alloca %struct.ucc_geth_private*, align 8
  %3 = alloca %struct.ucc_fast_private*, align 8
  %4 = alloca i32, align 4
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %2, align 8
  %5 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %6 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %5, i32 0, i32 1
  %7 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %6, align 8
  store %struct.ucc_fast_private* %7, %struct.ucc_fast_private** %3, align 8
  %8 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %9 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ucc_fast_get_qe_cr_subblock(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @QE_RESTART_RX, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @QE_CR_PROTOCOL_ETHERNET, align 4
  %18 = call i32 @qe_issue_cmd(i32 %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %3, align 8
  %20 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret i32 0
}

declare dso_local i32 @ucc_fast_get_qe_cr_subblock(i32) #1

declare dso_local i32 @qe_issue_cmd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
