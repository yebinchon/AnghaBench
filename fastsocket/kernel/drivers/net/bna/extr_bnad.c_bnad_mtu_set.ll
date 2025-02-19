; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_mtu_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_mtu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@bnad_cb_enet_mtu_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, i32)* @bnad_mtu_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_mtu_set(%struct.bnad* %0, i32 %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnad*, %struct.bnad** %3, align 8
  %7 = getelementptr inbounds %struct.bnad, %struct.bnad* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = call i32 @init_completion(i32* %8)
  %10 = load %struct.bnad*, %struct.bnad** %3, align 8
  %11 = getelementptr inbounds %struct.bnad, %struct.bnad* %10, i32 0, i32 1
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.bnad*, %struct.bnad** %3, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @bnad_cb_enet_mtu_set, align 4
  %19 = call i32 @bna_enet_mtu_set(i32* %16, i32 %17, i32 %18)
  %20 = load %struct.bnad*, %struct.bnad** %3, align 8
  %21 = getelementptr inbounds %struct.bnad, %struct.bnad* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.bnad*, %struct.bnad** %3, align 8
  %25 = getelementptr inbounds %struct.bnad, %struct.bnad* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @wait_for_completion(i32* %26)
  %28 = load %struct.bnad*, %struct.bnad** %3, align 8
  %29 = getelementptr inbounds %struct.bnad, %struct.bnad* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_enet_mtu_set(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
