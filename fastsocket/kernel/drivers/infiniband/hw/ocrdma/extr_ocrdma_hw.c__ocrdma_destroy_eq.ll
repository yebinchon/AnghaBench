; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c__ocrdma_destroy_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c__ocrdma_destroy_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ocrdma_eq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@QTYPE_EQ = common dso_local global i32 0, align 4
@OCRDMA_GEN2_FAMILY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_eq*)* @_ocrdma_destroy_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ocrdma_destroy_eq(%struct.ocrdma_dev* %0, %struct.ocrdma_eq* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_eq*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_eq* %1, %struct.ocrdma_eq** %4, align 8
  %5 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %6 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %12 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %13 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %12, i32 0, i32 0
  %14 = load i32, i32* @QTYPE_EQ, align 4
  %15 = call i32 @ocrdma_mbx_delete_q(%struct.ocrdma_dev* %11, %struct.TYPE_5__* %13, i32 %14)
  %16 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %17 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OCRDMA_GEN2_FAMILY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %24 = call i32 @ocrdma_free_eq_vect_gen2(%struct.ocrdma_dev* %23)
  br label %25

25:                                               ; preds = %22, %10
  %26 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %27 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %28 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %27, i32 0, i32 0
  %29 = call i32 @ocrdma_free_q(%struct.ocrdma_dev* %26, %struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @ocrdma_mbx_delete_q(%struct.ocrdma_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ocrdma_free_eq_vect_gen2(%struct.ocrdma_dev*) #1

declare dso_local i32 @ocrdma_free_q(%struct.ocrdma_dev*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
