; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_reset_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_reset_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*)* }

@RESET_TYPE_INVISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_reset_down(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = call i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic* %5)
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = call i32 @efx_stop_all(%struct.efx_nic* %7)
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = call i32 @efx_stop_interrupts(%struct.efx_nic* %9, i32 0)
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 3
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @RESET_TYPE_INVISIBLE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %26, align 8
  %28 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %29 = call i32 %27(%struct.efx_nic* %28)
  br label %30

30:                                               ; preds = %22, %18, %2
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %34, align 8
  %36 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %37 = call i32 %35(%struct.efx_nic* %36)
  ret void
}

declare dso_local i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic*) #1

declare dso_local i32 @efx_stop_all(%struct.efx_nic*) #1

declare dso_local i32 @efx_stop_interrupts(%struct.efx_nic*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
