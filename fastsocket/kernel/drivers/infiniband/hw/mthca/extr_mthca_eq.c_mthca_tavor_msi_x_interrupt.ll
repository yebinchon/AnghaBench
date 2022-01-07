; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_tavor_msi_x_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_eq.c_mthca_tavor_msi_x_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_eq = type { i32, i32, %struct.mthca_dev* }
%struct.mthca_dev = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mthca_tavor_msi_x_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_tavor_msi_x_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mthca_eq*, align 8
  %6 = alloca %struct.mthca_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mthca_eq*
  store %struct.mthca_eq* %8, %struct.mthca_eq** %5, align 8
  %9 = load %struct.mthca_eq*, %struct.mthca_eq** %5, align 8
  %10 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %9, i32 0, i32 2
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  store %struct.mthca_dev* %11, %struct.mthca_dev** %6, align 8
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %13 = load %struct.mthca_eq*, %struct.mthca_eq** %5, align 8
  %14 = call i32 @mthca_eq_int(%struct.mthca_dev* %12, %struct.mthca_eq* %13)
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %16 = load %struct.mthca_eq*, %struct.mthca_eq** %5, align 8
  %17 = load %struct.mthca_eq*, %struct.mthca_eq** %5, align 8
  %18 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tavor_set_eq_ci(%struct.mthca_dev* %15, %struct.mthca_eq* %16, i32 %19)
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %22 = load %struct.mthca_eq*, %struct.mthca_eq** %5, align 8
  %23 = getelementptr inbounds %struct.mthca_eq, %struct.mthca_eq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @tavor_eq_req_not(%struct.mthca_dev* %21, i32 %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @mthca_eq_int(%struct.mthca_dev*, %struct.mthca_eq*) #1

declare dso_local i32 @tavor_set_eq_ci(%struct.mthca_dev*, %struct.mthca_eq*, i32) #1

declare dso_local i32 @tavor_eq_req_not(%struct.mthca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
