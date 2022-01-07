; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_stack_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_stack_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { %struct.veth_msg* }
%struct.veth_msg = type { %struct.veth_msg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_lpar_connection*, %struct.veth_msg*)* @veth_stack_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_stack_push(%struct.veth_lpar_connection* %0, %struct.veth_msg* %1) #0 {
  %3 = alloca %struct.veth_lpar_connection*, align 8
  %4 = alloca %struct.veth_msg*, align 8
  store %struct.veth_lpar_connection* %0, %struct.veth_lpar_connection** %3, align 8
  store %struct.veth_msg* %1, %struct.veth_msg** %4, align 8
  %5 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %6 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %5, i32 0, i32 0
  %7 = load %struct.veth_msg*, %struct.veth_msg** %6, align 8
  %8 = load %struct.veth_msg*, %struct.veth_msg** %4, align 8
  %9 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %8, i32 0, i32 0
  store %struct.veth_msg* %7, %struct.veth_msg** %9, align 8
  %10 = load %struct.veth_msg*, %struct.veth_msg** %4, align 8
  %11 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %12 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %11, i32 0, i32 0
  store %struct.veth_msg* %10, %struct.veth_msg** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
