; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_interface.c_gigaset_if_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_interface.c_gigaset_if_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32*, i32, %struct.gigaset_driver* }
%struct.gigaset_driver = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_if_free(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.gigaset_driver*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %4 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %5 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %4, i32 0, i32 3
  %6 = load %struct.gigaset_driver*, %struct.gigaset_driver** %5, align 8
  store %struct.gigaset_driver* %6, %struct.gigaset_driver** %3, align 8
  %7 = load %struct.gigaset_driver*, %struct.gigaset_driver** %3, align 8
  %8 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 2
  %15 = call i32 @tasklet_disable(i32* %14)
  %16 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %17 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %16, i32 0, i32 2
  %18 = call i32 @tasklet_kill(i32* %17)
  %19 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %20 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.gigaset_driver*, %struct.gigaset_driver** %3, align 8
  %22 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %25 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @tty_unregister_device(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
