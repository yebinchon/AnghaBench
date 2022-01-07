; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_get_ib_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_get_ib_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32 }

@krp_highprio_0 = common dso_local global i32 0, align 4
@krp_lowprio_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, i32, i8*)* @qib_7322_get_ib_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322_get_ib_table(%struct.qib_pportdata* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %19 [
    i32 129, label %9
    i32 128, label %14
  ]

9:                                                ; preds = %3
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %11 = load i32, i32* @krp_highprio_0, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @get_vl_weights(%struct.qib_pportdata* %10, i32 %11, i8* %12)
  br label %22

14:                                               ; preds = %3
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %16 = load i32, i32* @krp_lowprio_0, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @get_vl_weights(%struct.qib_pportdata* %15, i32 %16, i8* %17)
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %23

22:                                               ; preds = %14, %9
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @get_vl_weights(%struct.qib_pportdata*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
