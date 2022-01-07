; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_fec.c_bcom_fec_tx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_fec.c_bcom_fec_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcom_task = type { %struct.bcom_fec_priv*, i32 }
%struct.bcom_fec_priv = type { i32 }

@BCOM_FLAGS_ENABLE_TASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bcom_task* @bcom_fec_tx_init(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.bcom_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcom_task*, align 8
  %7 = alloca %struct.bcom_fec_priv*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.bcom_task* @bcom_task_alloc(i32 %8, i32 4, i32 4)
  store %struct.bcom_task* %9, %struct.bcom_task** %6, align 8
  %10 = load %struct.bcom_task*, %struct.bcom_task** %6, align 8
  %11 = icmp ne %struct.bcom_task* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.bcom_task* null, %struct.bcom_task** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @BCOM_FLAGS_ENABLE_TASK, align 4
  %15 = load %struct.bcom_task*, %struct.bcom_task** %6, align 8
  %16 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.bcom_task*, %struct.bcom_task** %6, align 8
  %18 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %17, i32 0, i32 0
  %19 = load %struct.bcom_fec_priv*, %struct.bcom_fec_priv** %18, align 8
  store %struct.bcom_fec_priv* %19, %struct.bcom_fec_priv** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.bcom_fec_priv*, %struct.bcom_fec_priv** %7, align 8
  %22 = getelementptr inbounds %struct.bcom_fec_priv, %struct.bcom_fec_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bcom_task*, %struct.bcom_task** %6, align 8
  %24 = call i64 @bcom_fec_tx_reset(%struct.bcom_task* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.bcom_task*, %struct.bcom_task** %6, align 8
  %28 = call i32 @bcom_task_free(%struct.bcom_task* %27)
  store %struct.bcom_task* null, %struct.bcom_task** %3, align 8
  br label %31

29:                                               ; preds = %13
  %30 = load %struct.bcom_task*, %struct.bcom_task** %6, align 8
  store %struct.bcom_task* %30, %struct.bcom_task** %3, align 8
  br label %31

31:                                               ; preds = %29, %26, %12
  %32 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  ret %struct.bcom_task* %32
}

declare dso_local %struct.bcom_task* @bcom_task_alloc(i32, i32, i32) #1

declare dso_local i64 @bcom_fec_tx_reset(%struct.bcom_task*) #1

declare dso_local i32 @bcom_task_free(%struct.bcom_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
