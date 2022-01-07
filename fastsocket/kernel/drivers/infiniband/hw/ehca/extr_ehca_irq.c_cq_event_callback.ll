; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_cq_event_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_cq_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32 }
%struct.ehca_cq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EQE_CQ_TOKEN = common dso_local global i32 0, align 4
@ehca_cq_idr_lock = common dso_local global i32 0, align 4
@ehca_cq_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_shca*, i32)* @cq_event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cq_event_callback(%struct.ehca_shca* %0, i32 %1) #0 {
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_cq*, align 8
  %6 = alloca i32, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EQE_CQ_TOKEN, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @EHCA_BMASK_GET(i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = call i32 @read_lock(i32* @ehca_cq_idr_lock)
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ehca_cq* @idr_find(i32* @ehca_cq_idr, i32 %11)
  store %struct.ehca_cq* %12, %struct.ehca_cq** %5, align 8
  %13 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %14 = icmp ne %struct.ehca_cq* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %17 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %16, i32 0, i32 1
  %18 = call i32 @atomic_inc(i32* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = call i32 @read_unlock(i32* @ehca_cq_idr_lock)
  %21 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %22 = icmp ne %struct.ehca_cq* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %41

24:                                               ; preds = %19
  %25 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %26 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %27 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %28 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ehca_error_data(%struct.ehca_shca* %25, %struct.ehca_cq* %26, i32 %30)
  %32 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %33 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %32, i32 0, i32 1
  %34 = call i64 @atomic_dec_and_test(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.ehca_cq*, %struct.ehca_cq** %5, align 8
  %38 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %37, i32 0, i32 0
  %39 = call i32 @wake_up(i32* %38)
  br label %40

40:                                               ; preds = %36, %24
  br label %41

41:                                               ; preds = %40, %23
  ret void
}

declare dso_local i32 @EHCA_BMASK_GET(i32, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ehca_cq* @idr_find(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ehca_error_data(%struct.ehca_shca*, %struct.ehca_cq*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
