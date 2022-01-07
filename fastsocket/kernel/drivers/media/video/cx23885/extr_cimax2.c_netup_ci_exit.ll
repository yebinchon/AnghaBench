; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cimax2.c_netup_ci_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cimax2.c_netup_ci_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_tsport = type { i64 }
%struct.netup_ci_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netup_ci_exit(%struct.cx23885_tsport* %0) #0 {
  %2 = alloca %struct.cx23885_tsport*, align 8
  %3 = alloca %struct.netup_ci_state*, align 8
  store %struct.cx23885_tsport* %0, %struct.cx23885_tsport** %2, align 8
  %4 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %5 = icmp eq %struct.cx23885_tsport* null, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %28

7:                                                ; preds = %1
  %8 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %9 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.netup_ci_state*
  store %struct.netup_ci_state* %11, %struct.netup_ci_state** %3, align 8
  %12 = load %struct.netup_ci_state*, %struct.netup_ci_state** %3, align 8
  %13 = icmp eq %struct.netup_ci_state* null, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %28

15:                                               ; preds = %7
  %16 = load %struct.netup_ci_state*, %struct.netup_ci_state** %3, align 8
  %17 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* null, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %28

22:                                               ; preds = %15
  %23 = load %struct.netup_ci_state*, %struct.netup_ci_state** %3, align 8
  %24 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %23, i32 0, i32 0
  %25 = call i32 @dvb_ca_en50221_release(%struct.TYPE_2__* %24)
  %26 = load %struct.netup_ci_state*, %struct.netup_ci_state** %3, align 8
  %27 = call i32 @kfree(%struct.netup_ci_state* %26)
  br label %28

28:                                               ; preds = %22, %21, %14, %6
  ret void
}

declare dso_local i32 @dvb_ca_en50221_release(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.netup_ci_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
