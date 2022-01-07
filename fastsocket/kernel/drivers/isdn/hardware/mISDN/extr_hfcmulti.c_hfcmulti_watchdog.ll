; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i32, i32 }

@V_GPIO_OUT2 = common dso_local global i32 0, align 4
@V_GPIO_OUT3 = common dso_local global i32 0, align 4
@R_GPIO_EN0 = common dso_local global i32 0, align 4
@V_GPIO_EN2 = common dso_local global i32 0, align 4
@V_GPIO_EN3 = common dso_local global i32 0, align 4
@R_GPIO_OUT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*)* @hfcmulti_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcmulti_watchdog(%struct.hfc_multi* %0) #0 {
  %2 = alloca %struct.hfc_multi*, align 8
  store %struct.hfc_multi* %0, %struct.hfc_multi** %2, align 8
  %3 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %4 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %8 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 10
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %13 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %15 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @V_GPIO_OUT2, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @V_GPIO_OUT3, align 4
  br label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @V_GPIO_OUT2, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %26 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %28 = load i32, i32* @R_GPIO_EN0, align 4
  %29 = load i32, i32* @V_GPIO_EN2, align 4
  %30 = load i32, i32* @V_GPIO_EN3, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @HFC_outb(%struct.hfc_multi* %27, i32 %28, i32 %31)
  %33 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %34 = load i32, i32* @R_GPIO_OUT0, align 4
  %35 = load %struct.hfc_multi*, %struct.hfc_multi** %2, align 8
  %36 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @HFC_outb(%struct.hfc_multi* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @HFC_outb(%struct.hfc_multi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
