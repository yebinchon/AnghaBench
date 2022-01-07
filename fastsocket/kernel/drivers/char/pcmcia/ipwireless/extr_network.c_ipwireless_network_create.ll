; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_network.c_ipwireless_network_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_network.c_ipwireless_network_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_network = type { i32, i32, %struct.ipw_hardware*, i32, i32 }
%struct.ipw_hardware = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@do_go_online = common dso_local global i32 0, align 4
@do_go_offline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipw_network* @ipwireless_network_create(%struct.ipw_hardware* %0) #0 {
  %2 = alloca %struct.ipw_network*, align 8
  %3 = alloca %struct.ipw_hardware*, align 8
  %4 = alloca %struct.ipw_network*, align 8
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.ipw_network* @kzalloc(i32 24, i32 %5)
  store %struct.ipw_network* %6, %struct.ipw_network** %4, align 8
  %7 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %8 = icmp ne %struct.ipw_network* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ipw_network* null, %struct.ipw_network** %2, align 8
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %12 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %11, i32 0, i32 4
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %15 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %14, i32 0, i32 3
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %18 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %19 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %18, i32 0, i32 2
  store %struct.ipw_hardware* %17, %struct.ipw_hardware** %19, align 8
  %20 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %21 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %20, i32 0, i32 1
  %22 = load i32, i32* @do_go_online, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %25 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %24, i32 0, i32 0
  %26 = load i32, i32* @do_go_offline, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %29 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %30 = call i32 @ipwireless_associate_network(%struct.ipw_hardware* %28, %struct.ipw_network* %29)
  %31 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  store %struct.ipw_network* %31, %struct.ipw_network** %2, align 8
  br label %32

32:                                               ; preds = %10, %9
  %33 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  ret %struct.ipw_network* %33
}

declare dso_local %struct.ipw_network* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ipwireless_associate_network(%struct.ipw_hardware*, %struct.ipw_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
