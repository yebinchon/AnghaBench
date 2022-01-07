; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppox.c_pppox_unbind_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppox.c_pppox_unbind_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PPPOX_BOUND = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@PPPOX_ZOMBIE = common dso_local global i32 0, align 4
@PPPOX_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pppox_unbind_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PPPOX_BOUND, align 4
  %7 = load i32, i32* @PPPOX_CONNECTED, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PPPOX_ZOMBIE, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %5, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call %struct.TYPE_2__* @pppox_sk(%struct.sock* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @ppp_unregister_channel(i32* %16)
  %18 = load i32, i32* @PPPOX_DEAD, align 4
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @ppp_unregister_channel(i32*) #1

declare dso_local %struct.TYPE_2__* @pppox_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
