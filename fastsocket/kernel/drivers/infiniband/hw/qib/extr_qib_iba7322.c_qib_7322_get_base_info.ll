; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_get_base_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_get_base_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.qib_base_info = type { i32 }

@QIB_RUNTIME_CTXT_MSB_IN_QP = common dso_local global i32 0, align 4
@QIB_RUNTIME_PCIE = common dso_local global i32 0, align 4
@QIB_RUNTIME_NODMA_RTAIL = common dso_local global i32 0, align 4
@QIB_RUNTIME_HDRSUPP = common dso_local global i32 0, align 4
@QIB_RUNTIME_SDMA = common dso_local global i32 0, align 4
@QIB_RUNTIME_RCHK = common dso_local global i32 0, align 4
@QIB_USE_SPCL_TRIG = common dso_local global i32 0, align 4
@QIB_RUNTIME_SPECIAL_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, %struct.qib_base_info*)* @qib_7322_get_base_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322_get_base_info(%struct.qib_ctxtdata* %0, %struct.qib_base_info* %1) #0 {
  %3 = alloca %struct.qib_ctxtdata*, align 8
  %4 = alloca %struct.qib_base_info*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %3, align 8
  store %struct.qib_base_info* %1, %struct.qib_base_info** %4, align 8
  %5 = load i32, i32* @QIB_RUNTIME_CTXT_MSB_IN_QP, align 4
  %6 = load i32, i32* @QIB_RUNTIME_PCIE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @QIB_RUNTIME_NODMA_RTAIL, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @QIB_RUNTIME_HDRSUPP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @QIB_RUNTIME_SDMA, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.qib_base_info*, %struct.qib_base_info** %4, align 8
  %15 = getelementptr inbounds %struct.qib_base_info, %struct.qib_base_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %19 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @QIB_RUNTIME_RCHK, align 4
  %28 = load %struct.qib_base_info*, %struct.qib_base_info** %4, align 8
  %29 = getelementptr inbounds %struct.qib_base_info, %struct.qib_base_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %34 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @QIB_USE_SPCL_TRIG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @QIB_RUNTIME_SPECIAL_TRIGGER, align 4
  %43 = load %struct.qib_base_info*, %struct.qib_base_info** %4, align 8
  %44 = getelementptr inbounds %struct.qib_base_info, %struct.qib_base_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %32
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
