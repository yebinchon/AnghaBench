; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_rc_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_rc.c_rc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qib_ibport = type { i32 }

@QIB_S_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca %struct.qib_ibport*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.qib_qp*
  store %struct.qib_qp* %7, %struct.qib_qp** %3, align 8
  %8 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %9 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %13 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %16 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @QIB_S_TIMER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %23 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %27 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.qib_ibport* @to_iport(i32 %25, i32 %28)
  store %struct.qib_ibport* %29, %struct.qib_ibport** %4, align 8
  %30 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %31 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @QIB_S_TIMER, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %37 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %41 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %40, i32 0, i32 4
  %42 = call i32 @del_timer(i32* %41)
  %43 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %44 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %45 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @qib_restart_rc(%struct.qib_qp* %43, i64 %47, i32 1)
  %49 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %50 = call i32 @qib_schedule_send(%struct.qib_qp* %49)
  br label %51

51:                                               ; preds = %21, %1
  %52 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %53 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %56 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %55, i32 0, i32 1
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @qib_restart_rc(%struct.qib_qp*, i64, i32) #1

declare dso_local i32 @qib_schedule_send(%struct.qib_qp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
