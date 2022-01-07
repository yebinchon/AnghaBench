; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_hw_sem_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_hw_sem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IOCPF_E_SEM_ERROR = common dso_local global i32 0, align 4
@IOCPF_E_SEMLOCKED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BFA_IOC_HWSEM_TOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_hw_sem_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_hw_sem_get(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %4 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @readl(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %12, i32 0, i32 1
  %14 = load i32, i32* @IOCPF_E_SEM_ERROR, align 4
  %15 = call i32 @bfa_fsm_send_event(i32* %13, i32 %14)
  br label %33

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %21, i32 0, i32 1
  %23 = load i32, i32* @IOCPF_E_SEMLOCKED, align 4
  %24 = call i32 @bfa_fsm_send_event(i32* %22, i32 %23)
  br label %33

25:                                               ; preds = %16
  %26 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %27 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %26, i32 0, i32 0
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @BFA_IOC_HWSEM_TOV, align 4
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @mod_timer(i32* %27, i64 %31)
  br label %33

33:                                               ; preds = %25, %20, %11
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
