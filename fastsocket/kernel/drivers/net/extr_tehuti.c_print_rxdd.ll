; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_print_rxdd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_print_rxdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxd_desc = type { i32, i32 }

@.str = private unnamed_addr constant [124 x i8] c"ERROR: rxdd bc %d rxfq %d to %d type %d err %d rxp %d pkt_id %d vtag %d len %d vlan_id %d cfi %d prio %d va_lo %d va_hi %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxd_desc*, i32, i32, i32)* @print_rxdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_rxdd(%struct.rxd_desc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rxd_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rxd_desc* %0, %struct.rxd_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @GET_RXD_BC(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @GET_RXD_RXFQ(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @GET_RXD_TO(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @GET_RXD_TYPE(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @GET_RXD_ERR(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @GET_RXD_RXP(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @GET_RXD_PKT_ID(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @GET_RXD_VTAG(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @GET_RXD_VLAN_ID(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @GET_RXD_CFI(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @GET_RXD_PRIO(i32 %30)
  %32 = load %struct.rxd_desc*, %struct.rxd_desc** %5, align 8
  %33 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rxd_desc*, %struct.rxd_desc** %5, align 8
  %36 = getelementptr inbounds %struct.rxd_desc, %struct.rxd_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DBG(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24, i32 %25, i32 %27, i32 %29, i32 %31, i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GET_RXD_BC(i32) #1

declare dso_local i32 @GET_RXD_RXFQ(i32) #1

declare dso_local i32 @GET_RXD_TO(i32) #1

declare dso_local i32 @GET_RXD_TYPE(i32) #1

declare dso_local i32 @GET_RXD_ERR(i32) #1

declare dso_local i32 @GET_RXD_RXP(i32) #1

declare dso_local i32 @GET_RXD_PKT_ID(i32) #1

declare dso_local i32 @GET_RXD_VTAG(i32) #1

declare dso_local i32 @GET_RXD_VLAN_ID(i32) #1

declare dso_local i32 @GET_RXD_CFI(i32) #1

declare dso_local i32 @GET_RXD_PRIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
