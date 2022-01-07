; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_gen_bd.c_bcom_gen_bd_rx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_gen_bd.c_bcom_gen_bd_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcom_task = type { %struct.bcom_gen_bd_priv*, i32 }
%struct.bcom_gen_bd_priv = type { i32, i32, i32, i32 }

@BCOM_FLAGS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bcom_task* @bcom_gen_bd_rx_init(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bcom_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bcom_task*, align 8
  %13 = alloca %struct.bcom_gen_bd_priv*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.bcom_task* @bcom_task_alloc(i32 %14, i32 4, i32 16)
  store %struct.bcom_task* %15, %struct.bcom_task** %12, align 8
  %16 = load %struct.bcom_task*, %struct.bcom_task** %12, align 8
  %17 = icmp ne %struct.bcom_task* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.bcom_task* null, %struct.bcom_task** %6, align 8
  br label %46

19:                                               ; preds = %5
  %20 = load i32, i32* @BCOM_FLAGS_NONE, align 4
  %21 = load %struct.bcom_task*, %struct.bcom_task** %12, align 8
  %22 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.bcom_task*, %struct.bcom_task** %12, align 8
  %24 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %23, i32 0, i32 0
  %25 = load %struct.bcom_gen_bd_priv*, %struct.bcom_gen_bd_priv** %24, align 8
  store %struct.bcom_gen_bd_priv* %25, %struct.bcom_gen_bd_priv** %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.bcom_gen_bd_priv*, %struct.bcom_gen_bd_priv** %13, align 8
  %28 = getelementptr inbounds %struct.bcom_gen_bd_priv, %struct.bcom_gen_bd_priv* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.bcom_gen_bd_priv*, %struct.bcom_gen_bd_priv** %13, align 8
  %31 = getelementptr inbounds %struct.bcom_gen_bd_priv, %struct.bcom_gen_bd_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.bcom_gen_bd_priv*, %struct.bcom_gen_bd_priv** %13, align 8
  %34 = getelementptr inbounds %struct.bcom_gen_bd_priv, %struct.bcom_gen_bd_priv* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.bcom_gen_bd_priv*, %struct.bcom_gen_bd_priv** %13, align 8
  %37 = getelementptr inbounds %struct.bcom_gen_bd_priv, %struct.bcom_gen_bd_priv* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bcom_task*, %struct.bcom_task** %12, align 8
  %39 = call i64 @bcom_gen_bd_rx_reset(%struct.bcom_task* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %19
  %42 = load %struct.bcom_task*, %struct.bcom_task** %12, align 8
  %43 = call i32 @bcom_task_free(%struct.bcom_task* %42)
  store %struct.bcom_task* null, %struct.bcom_task** %6, align 8
  br label %46

44:                                               ; preds = %19
  %45 = load %struct.bcom_task*, %struct.bcom_task** %12, align 8
  store %struct.bcom_task* %45, %struct.bcom_task** %6, align 8
  br label %46

46:                                               ; preds = %44, %41, %18
  %47 = load %struct.bcom_task*, %struct.bcom_task** %6, align 8
  ret %struct.bcom_task* %47
}

declare dso_local %struct.bcom_task* @bcom_task_alloc(i32, i32, i32) #1

declare dso_local i64 @bcom_gen_bd_rx_reset(%struct.bcom_task*) #1

declare dso_local i32 @bcom_task_free(%struct.bcom_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
