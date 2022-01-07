; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_mclk_mrg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_mclk_mrg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NV_MEM_TYPE_GDDR5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_mem_exec_func*, i32)* @mclk_mrg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mclk_mrg(%struct.nouveau_mem_exec_func* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_mem_exec_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_fb*, align 8
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %9 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nouveau_device* @nouveau_dev(i32 %10)
  store %struct.nouveau_device* %11, %struct.nouveau_device** %6, align 8
  %12 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %13 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device* %12)
  store %struct.nouveau_fb* %13, %struct.nouveau_fb** %7, align 8
  %14 = load %struct.nouveau_fb*, %struct.nouveau_fb** %7, align 8
  %15 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NV_MEM_TYPE_GDDR5, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 0
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 1110784, %27
  %29 = call i32 @nv_rd32(%struct.nouveau_device* %24, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %59

30:                                               ; preds = %20
  %31 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 2
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 1110816, %34
  %36 = call i32 @nv_rd32(%struct.nouveau_device* %31, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 4
  %44 = add nsw i32 1110784, %43
  %45 = call i32 @nv_rd32(%struct.nouveau_device* %41, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = icmp sle i32 %47, 7
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 %51, 4
  %53 = add nsw i32 1110828, %52
  %54 = call i32 @nv_rd32(%struct.nouveau_device* %50, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %59

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %58 = call i32 @nv_rd32(%struct.nouveau_device* %57, i32 1110860)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %49, %40, %30, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
