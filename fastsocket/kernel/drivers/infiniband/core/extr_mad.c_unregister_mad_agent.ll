; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_unregister_mad_agent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad.c_unregister_mad_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_3__, %struct.ib_mad_agent_private*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ib_mad_port_private* }
%struct.ib_mad_port_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*)* @unregister_mad_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_mad_agent(%struct.ib_mad_agent_private* %0) #0 {
  %2 = alloca %struct.ib_mad_agent_private*, align 8
  %3 = alloca %struct.ib_mad_port_private*, align 8
  %4 = alloca i64, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %2, align 8
  %5 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %6 = call i32 @cancel_mads(%struct.ib_mad_agent_private* %5)
  %7 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %8 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %10, align 8
  store %struct.ib_mad_port_private* %11, %struct.ib_mad_port_private** %3, align 8
  %12 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %13 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %12, i32 0, i32 4
  %14 = call i32 @cancel_delayed_work(i32* %13)
  %15 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %16 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %20 = call i32 @remove_mad_reg_req(%struct.ib_mad_agent_private* %19)
  %21 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %22 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %21, i32 0, i32 3
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %25 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %29 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @flush_workqueue(i32 %30)
  %32 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %33 = call i32 @ib_cancel_rmpp_recvs(%struct.ib_mad_agent_private* %32)
  %34 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %35 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %34)
  %36 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %37 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %36, i32 0, i32 2
  %38 = call i32 @wait_for_completion(i32* %37)
  %39 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %40 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %39, i32 0, i32 1
  %41 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %40, align 8
  %42 = call i32 @kfree(%struct.ib_mad_agent_private* %41)
  %43 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %44 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ib_dereg_mr(i32 %46)
  %48 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %2, align 8
  %49 = call i32 @kfree(%struct.ib_mad_agent_private* %48)
  ret void
}

declare dso_local i32 @cancel_mads(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @remove_mad_reg_req(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @ib_cancel_rmpp_recvs(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @deref_mad_agent(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kfree(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @ib_dereg_mr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
