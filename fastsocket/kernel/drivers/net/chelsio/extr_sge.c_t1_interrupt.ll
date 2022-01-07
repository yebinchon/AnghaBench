; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i64, %struct.sge* }
%struct.sge = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@F_PL_INTR_SGE_DATA = common dso_local global i32 0, align 4
@A_PL_CAUSE = common dso_local global i64 0, align 8
@A_SG_SLEEPING = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.adapter*
  store %struct.adapter* %10, %struct.adapter** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %6, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 3
  %13 = load %struct.sge*, %struct.sge** %12, align 8
  store %struct.sge* %13, %struct.sge** %7, align 8
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = call i32 @responses_pending(%struct.adapter* %14)
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %2
  %19 = load i32, i32* @F_PL_INTR_SGE_DATA, align 4
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @A_PL_CAUSE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.adapter*, %struct.adapter** %6, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = call i64 @napi_schedule_prep(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %18
  %31 = load %struct.adapter*, %struct.adapter** %6, align 8
  %32 = call i64 @process_pure_responses(%struct.adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.adapter*, %struct.adapter** %6, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 1
  %37 = call i32 @__napi_schedule(i32* %36)
  br label %52

38:                                               ; preds = %30
  %39 = load %struct.sge*, %struct.sge** %7, align 8
  %40 = getelementptr inbounds %struct.sge, %struct.sge* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.adapter*, %struct.adapter** %6, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @A_SG_SLEEPING, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.adapter*, %struct.adapter** %6, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 1
  %51 = call i32 @napi_enable(i32* %50)
  br label %52

52:                                               ; preds = %38, %34
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %3, align 4
  br label %77

55:                                               ; preds = %2
  %56 = load %struct.adapter*, %struct.adapter** %6, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.adapter*, %struct.adapter** %6, align 8
  %60 = call i32 @t1_slow_intr_handler(%struct.adapter* %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.adapter*, %struct.adapter** %6, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %55
  %67 = load %struct.sge*, %struct.sge** %7, align 8
  %68 = getelementptr inbounds %struct.sge, %struct.sge* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %55
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @IRQ_RETVAL(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %53
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @responses_pending(%struct.adapter*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i64 @process_pure_responses(%struct.adapter*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t1_slow_intr_handler(%struct.adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
