; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_disconn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_disconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nes_qp = type { i32 }
%struct.disconn_work = type { i32, %struct.nes_qp* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nes_disconnect_worker = common dso_local global i32 0, align 4
@g_cm_core = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_cm_disconn(%struct.nes_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nes_qp*, align 8
  %4 = alloca %struct.disconn_work*, align 8
  store %struct.nes_qp* %0, %struct.nes_qp** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.disconn_work* @kzalloc(i32 16, i32 %5)
  store %struct.disconn_work* %6, %struct.disconn_work** %4, align 8
  %7 = load %struct.disconn_work*, %struct.disconn_work** %4, align 8
  %8 = icmp ne %struct.disconn_work* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %14 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %13, i32 0, i32 0
  %15 = call i32 @nes_add_ref(i32* %14)
  %16 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %17 = load %struct.disconn_work*, %struct.disconn_work** %4, align 8
  %18 = getelementptr inbounds %struct.disconn_work, %struct.disconn_work* %17, i32 0, i32 1
  store %struct.nes_qp* %16, %struct.nes_qp** %18, align 8
  %19 = load %struct.disconn_work*, %struct.disconn_work** %4, align 8
  %20 = getelementptr inbounds %struct.disconn_work, %struct.disconn_work* %19, i32 0, i32 0
  %21 = load i32, i32* @nes_disconnect_worker, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_cm_core, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.disconn_work*, %struct.disconn_work** %4, align 8
  %27 = getelementptr inbounds %struct.disconn_work, %struct.disconn_work* %26, i32 0, i32 0
  %28 = call i32 @queue_work(i32 %25, i32* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %12, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.disconn_work* @kzalloc(i32, i32) #1

declare dso_local i32 @nes_add_ref(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
