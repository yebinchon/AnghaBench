; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_usable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i64 }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*)* @usable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usable(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %4 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %5 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %4, i32 0, i32 2
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  store %struct.qib_devdata* %6, %struct.qib_devdata** %3, align 8
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %8 = icmp ne %struct.qib_devdata* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @QIB_PRESENT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %9
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %28 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %26, %21, %16, %9, %1
  %34 = phi i1 [ false, %21 ], [ false, %16 ], [ false, %9 ], [ false, %1 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
