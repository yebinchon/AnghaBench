; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_queue_asic_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_queue_asic_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32 }

@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@QL_ASIC_RECOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ql_queue_asic_error(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %3 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %4 = call i32 @ql_link_off(%struct.ql_adapter* %3)
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %6 = call i32 @ql_disable_interrupts(%struct.ql_adapter* %5)
  %7 = load i32, i32* @QL_ADAPTER_UP, align 4
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %8, i32 0, i32 2
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load i32, i32* @QL_ASIC_RECOVERY, align 4
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 2
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 0
  %20 = call i32 @queue_delayed_work(i32 %17, i32* %19, i32 0)
  ret void
}

declare dso_local i32 @ql_link_off(%struct.ql_adapter*) #1

declare dso_local i32 @ql_disable_interrupts(%struct.ql_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
