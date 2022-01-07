; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_test_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_test_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_self_tests = type { i32 }

@RESET_TYPE_ALL = common dso_local global i32 0, align 4
@siena_register_tests = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_self_tests*)* @siena_test_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_test_chip(%struct.efx_nic* %0, %struct.efx_self_tests* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_self_tests*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_self_tests* %1, %struct.efx_self_tests** %4, align 8
  %8 = load i32, i32* @RESET_TYPE_ALL, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @efx_reset_down(%struct.efx_nic* %9, i32 %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @siena_reset_hw(%struct.efx_nic* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = load i32, i32* @siena_register_tests, align 4
  %21 = load i32, i32* @siena_register_tests, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i64 @efx_nic_test_registers(%struct.efx_nic* %19, i32 %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 -1, i32 1
  %27 = load %struct.efx_self_tests*, %struct.efx_self_tests** %4, align 8
  %28 = getelementptr inbounds %struct.efx_self_tests, %struct.efx_self_tests* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @siena_reset_hw(%struct.efx_nic* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %18, %17
  %33 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @efx_reset_up(%struct.efx_nic* %33, i32 %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  ret i32 %46
}

declare dso_local i32 @efx_reset_down(%struct.efx_nic*, i32) #1

declare dso_local i32 @siena_reset_hw(%struct.efx_nic*, i32) #1

declare dso_local i64 @efx_nic_test_registers(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @efx_reset_up(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
