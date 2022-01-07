; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_chk_6120_linkrecovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_chk_6120_linkrecovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@cr_iblinkerrrecov = common dso_local global i32 0, align 4
@QIB_IB_LINKDOWN = common dso_local global i32 0, align 4
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32)* @chk_6120_linkrecovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chk_6120_linkrecovery(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @qib_6120_iblink_state(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %11 = load i32, i32* @cr_iblinkerrrecov, align 4
  %12 = call i64 @read_6120_creg32(%struct.qib_devdata* %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %13, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @QIB_IB_LINKDOWN, align 4
  %29 = call i32 @qib_set_linkstate(i32 %27, i32 %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %20, %2
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %36 = load i32, i32* @cr_iblinkerrrecov, align 4
  %37 = call i64 @read_6120_creg32(%struct.qib_devdata* %35, i32 %36)
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %37, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %30
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @qib_6120_iblink_state(i32) #1

declare dso_local i64 @read_6120_creg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_set_linkstate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
