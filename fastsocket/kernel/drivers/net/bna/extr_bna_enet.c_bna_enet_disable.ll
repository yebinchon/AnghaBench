; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_enet_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_enet_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_enet = type { void (i8*)*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@BNA_SOFT_CLEANUP = common dso_local global i32 0, align 4
@BNA_ENET_F_ENABLED = common dso_local global i32 0, align 4
@ENET_E_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_enet_disable(%struct.bna_enet* %0, i32 %1, void (i8*)* %2) #0 {
  %4 = alloca %struct.bna_enet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (i8*)*, align 8
  store %struct.bna_enet* %0, %struct.bna_enet** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (i8*)* %2, void (i8*)** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BNA_SOFT_CLEANUP, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load void (i8*)*, void (i8*)** %6, align 8
  %12 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %13 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  call void %11(i8* %16)
  br label %37

17:                                               ; preds = %3
  %18 = load void (i8*)*, void (i8*)** %6, align 8
  %19 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %20 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %19, i32 0, i32 0
  store void (i8*)* %18, void (i8*)** %20, align 8
  %21 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %22 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %27 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @BNA_ENET_F_ENABLED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %31 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %35 = load i32, i32* @ENET_E_STOP, align 4
  %36 = call i32 @bfa_fsm_send_event(%struct.bna_enet* %34, i32 %35)
  br label %37

37:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_enet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
