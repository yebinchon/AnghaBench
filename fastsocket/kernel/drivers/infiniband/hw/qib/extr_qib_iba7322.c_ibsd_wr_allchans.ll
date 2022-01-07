; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_ibsd_wr_allchans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_ibsd_wr_allchans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.qib_devdata* }
%struct.qib_devdata = type { i32 }

@SERDES_CHANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32, i32, i32)* @ibsd_wr_allchans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibsd_wr_allchans(%struct.qib_pportdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %13, align 8
  store %struct.qib_devdata* %14, %struct.qib_devdata** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %44, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @SERDES_CHANS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %21 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %22 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @IBSD(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, 1
  %28 = add nsw i32 %25, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ahb_mod(%struct.qib_devdata* %20, i32 %24, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @IBSD(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 1
  %41 = add nsw i32 %38, %40
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ahb_mod(%struct.qib_devdata* %33, i32 %37, i32 %41, i32 %42, i32 0, i32 0)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %19
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %15

47:                                               ; preds = %15
  ret void
}

declare dso_local i32 @ahb_mod(%struct.qib_devdata*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IBSD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
