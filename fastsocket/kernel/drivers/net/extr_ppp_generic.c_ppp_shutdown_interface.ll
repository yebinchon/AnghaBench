; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_shutdown_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_shutdown_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ppp_net = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*)* @ppp_shutdown_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_shutdown_interface(%struct.ppp* %0) #0 {
  %2 = alloca %struct.ppp*, align 8
  %3 = alloca %struct.ppp_net*, align 8
  store %struct.ppp* %0, %struct.ppp** %2, align 8
  %4 = load %struct.ppp*, %struct.ppp** %2, align 8
  %5 = getelementptr inbounds %struct.ppp, %struct.ppp* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ppp_net* @ppp_pernet(i32 %6)
  store %struct.ppp_net* %7, %struct.ppp_net** %3, align 8
  %8 = load %struct.ppp_net*, %struct.ppp_net** %3, align 8
  %9 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ppp*, %struct.ppp** %2, align 8
  %12 = call i32 @ppp_lock(%struct.ppp* %11)
  %13 = load %struct.ppp*, %struct.ppp** %2, align 8
  %14 = getelementptr inbounds %struct.ppp, %struct.ppp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.ppp*, %struct.ppp** %2, align 8
  %19 = getelementptr inbounds %struct.ppp, %struct.ppp* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.ppp*, %struct.ppp** %2, align 8
  %21 = call i32 @ppp_unlock(%struct.ppp* %20)
  %22 = load %struct.ppp*, %struct.ppp** %2, align 8
  %23 = getelementptr inbounds %struct.ppp, %struct.ppp* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @unregister_netdev(i32 %24)
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.ppp*, %struct.ppp** %2, align 8
  %28 = call i32 @ppp_unlock(%struct.ppp* %27)
  br label %29

29:                                               ; preds = %26, %17
  %30 = load %struct.ppp_net*, %struct.ppp_net** %3, align 8
  %31 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %30, i32 0, i32 1
  %32 = load %struct.ppp*, %struct.ppp** %2, align 8
  %33 = getelementptr inbounds %struct.ppp, %struct.ppp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @unit_put(i32* %31, i32 %35)
  %37 = load %struct.ppp*, %struct.ppp** %2, align 8
  %38 = getelementptr inbounds %struct.ppp, %struct.ppp* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.ppp*, %struct.ppp** %2, align 8
  %41 = getelementptr inbounds %struct.ppp, %struct.ppp* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.ppp*, %struct.ppp** %2, align 8
  %43 = getelementptr inbounds %struct.ppp, %struct.ppp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @wake_up_interruptible(i32* %44)
  %46 = load %struct.ppp_net*, %struct.ppp_net** %3, align 8
  %47 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local %struct.ppp_net* @ppp_pernet(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ppp_lock(%struct.ppp*) #1

declare dso_local i32 @ppp_unlock(%struct.ppp*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @unit_put(i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
