; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_mclk_mrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_mclk_mrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*, i32, i32)* @mclk_mrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_mrs(%struct.nouveau_mem_exec_func* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_mem_exec_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_device*, align 8
  %8 = alloca %struct.nouveau_fb*, align 8
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_device* @nouveau_dev(i32 %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %7, align 8
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %14 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device* %13)
  store %struct.nouveau_fb* %14, %struct.nouveau_fb** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %19 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 0
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 1049288, %27
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @nv_wr32(%struct.nouveau_device* %24, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %17
  %32 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 0
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 1049280, %35
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @nv_wr32(%struct.nouveau_device* %32, i32 %36, i32 %37)
  br label %65

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = icmp sle i32 %40, 3
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %44 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 2
  %52 = mul nsw i32 %51, 4
  %53 = add nsw i32 1049320, %52
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @nv_wr32(%struct.nouveau_device* %49, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %42
  %57 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 2
  %60 = mul nsw i32 %59, 4
  %61 = add nsw i32 1049312, %60
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @nv_wr32(%struct.nouveau_device* %57, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %39
  br label %65

65:                                               ; preds = %64, %31
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device*) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
