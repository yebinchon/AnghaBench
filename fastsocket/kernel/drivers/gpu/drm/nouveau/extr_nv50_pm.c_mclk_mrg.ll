; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_mrg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_mrg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { i32 }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_mem_exec_func*, i32)* @mclk_mrg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mclk_mrg(%struct.nouveau_mem_exec_func* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_mem_exec_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_device* @nouveau_dev(i32 %9)
  store %struct.nouveau_device* %10, %struct.nouveau_device** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 0
  %17 = mul nsw i32 %16, 4
  %18 = add nsw i32 1049280, %17
  %19 = call i32 @nv_rd32(%struct.nouveau_device* %14, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 3
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 2
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 1049312, %27
  %29 = call i32 @nv_rd32(%struct.nouveau_device* %24, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %23, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
