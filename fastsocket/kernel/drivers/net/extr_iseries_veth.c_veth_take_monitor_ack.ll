; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_take_monitor_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_take_monitor_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i32, i32, i32 }
%struct.veth_lpevent = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cnx %d: lost connection.\0A\00", align 1
@VETH_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@VETH_STATE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_lpar_connection*, %struct.veth_lpevent*)* @veth_take_monitor_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_take_monitor_ack(%struct.veth_lpar_connection* %0, %struct.veth_lpevent* %1) #0 {
  %3 = alloca %struct.veth_lpar_connection*, align 8
  %4 = alloca %struct.veth_lpevent*, align 8
  %5 = alloca i64, align 8
  store %struct.veth_lpar_connection* %0, %struct.veth_lpar_connection** %3, align 8
  store %struct.veth_lpevent* %1, %struct.veth_lpevent** %4, align 8
  %6 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %7 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %11 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @veth_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %15 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VETH_STATE_SHUTDOWN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @VETH_STATE_RESET, align 4
  %22 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %23 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %27 = call i32 @veth_kick_statemachine(%struct.veth_lpar_connection* %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %30 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %29, i32 0, i32 1
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @veth_debug(i8*, i32) #1

declare dso_local i32 @veth_kick_statemachine(%struct.veth_lpar_connection*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
