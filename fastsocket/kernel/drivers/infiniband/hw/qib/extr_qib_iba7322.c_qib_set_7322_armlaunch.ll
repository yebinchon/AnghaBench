; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_set_7322_armlaunch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_set_7322_armlaunch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@kr_errclear = common dso_local global i32 0, align 4
@QIB_E_SPIOARMLAUNCH = common dso_local global i32 0, align 4
@kr_errmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i64)* @qib_set_7322_armlaunch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_set_7322_armlaunch(%struct.qib_devdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %9 = load i32, i32* @kr_errclear, align 4
  %10 = load i32, i32* @QIB_E_SPIOARMLAUNCH, align 4
  %11 = call i32 @qib_write_kreg(%struct.qib_devdata* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @QIB_E_SPIOARMLAUNCH, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @QIB_E_SPIOARMLAUNCH, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %21
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %19, %7
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %30 = load i32, i32* @kr_errmask, align 4
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qib_write_kreg(%struct.qib_devdata* %29, i32 %30, i32 %35)
  ret void
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
