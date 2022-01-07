; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_get_7220_faststats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_get_7220_faststats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i64, i32, i32, i32, i64, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32 }

@QIB_INITTED = common dso_local global i32 0, align 4
@cr_wordsend = common dso_local global i32 0, align 4
@cr_wordrcv = common dso_local global i32 0, align 4
@QIB_TRAFFIC_ACTIVE_THRESHOLD = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ACTIVITY_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @qib_get_7220_faststats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_get_7220_faststats(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.qib_devdata*
  store %struct.qib_devdata* %8, %struct.qib_devdata** %3, align 8
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 6
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  store %struct.qib_pportdata* %11, %struct.qib_pportdata** %4, align 8
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @QIB_INITTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %20 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  br label %58

24:                                               ; preds = %18
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %26 = load i32, i32* @cr_wordsend, align 4
  %27 = call i64 @qib_portcntr_7220(%struct.qib_pportdata* %25, i32 %26)
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %29 = load i32, i32* @cr_wordrcv, align 4
  %30 = call i64 @qib_portcntr_7220(%struct.qib_pportdata* %28, i32 %29)
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %6, align 8
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 3
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %37 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @QIB_TRAFFIC_ACTIVE_THRESHOLD, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %24
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 4
  %52 = call i32 @atomic_add(i32 5, i32* %51)
  br label %53

53:                                               ; preds = %49, %24
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 3
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %53, %23
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 2
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i32, i32* @HZ, align 4
  %63 = load i32, i32* @ACTIVITY_TIMER, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %61, %65
  %67 = call i32 @mod_timer(i32* %60, i64 %66)
  ret void
}

declare dso_local i64 @qib_portcntr_7220(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
