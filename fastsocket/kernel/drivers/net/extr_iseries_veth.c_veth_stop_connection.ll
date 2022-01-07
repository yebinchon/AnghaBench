; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_stop_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_stop_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i32, i32, i32 }

@VETH_STATE_RESET = common dso_local global i32 0, align 4
@VETH_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_lpar_connection*)* @veth_stop_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_stop_connection(%struct.veth_lpar_connection* %0) #0 {
  %2 = alloca %struct.veth_lpar_connection*, align 8
  store %struct.veth_lpar_connection* %0, %struct.veth_lpar_connection** %2, align 8
  %3 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %4 = icmp ne %struct.veth_lpar_connection* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %8 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load i32, i32* @VETH_STATE_RESET, align 4
  %11 = load i32, i32* @VETH_STATE_SHUTDOWN, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %14 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %18 = call i32 @veth_kick_statemachine(%struct.veth_lpar_connection* %17)
  %19 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %20 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %23 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %22, i32 0, i32 2
  %24 = call i64 @cancel_delayed_work(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %6
  %27 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %28 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %31 = call i32 @veth_kick_statemachine(%struct.veth_lpar_connection* %30)
  %32 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %2, align 8
  %33 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_irq(i32* %33)
  br label %35

35:                                               ; preds = %26, %6
  %36 = call i32 (...) @flush_scheduled_work()
  br label %37

37:                                               ; preds = %35, %5
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @veth_kick_statemachine(%struct.veth_lpar_connection*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
