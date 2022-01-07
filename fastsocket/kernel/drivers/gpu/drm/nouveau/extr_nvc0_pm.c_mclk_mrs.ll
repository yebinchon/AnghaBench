; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_mclk_mrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_mclk_mrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@NV_MEM_TYPE_GDDR5 = common dso_local global i64 0, align 8
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
  %15 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %16 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NV_MEM_TYPE_GDDR5, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 0
  %28 = mul nsw i32 %27, 4
  %29 = add nsw i32 1110784, %28
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @nv_wr32(%struct.nouveau_device* %25, i32 %29, i32 %30)
  %32 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %33 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 0
  %41 = mul nsw i32 %40, 4
  %42 = add nsw i32 1110792, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @nv_wr32(%struct.nouveau_device* %38, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %24
  br label %72

46:                                               ; preds = %21
  %47 = load i32, i32* %5, align 4
  %48 = icmp sle i32 %47, 3
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 2
  %53 = mul nsw i32 %52, 4
  %54 = add nsw i32 1110816, %53
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @nv_wr32(%struct.nouveau_device* %50, i32 %54, i32 %55)
  %57 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %58 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 2
  %66 = mul nsw i32 %65, 4
  %67 = add nsw i32 1110824, %66
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @nv_wr32(%struct.nouveau_device* %63, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %49
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %45
  br label %103

73:                                               ; preds = %3
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 %78, 4
  %80 = add nsw i32 1110784, %79
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @nv_wr32(%struct.nouveau_device* %77, i32 %80, i32 %81)
  br label %102

83:                                               ; preds = %73
  %84 = load i32, i32* %5, align 4
  %85 = icmp sle i32 %84, 7
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %88 = load i32, i32* %5, align 4
  %89 = mul nsw i32 %88, 4
  %90 = add nsw i32 1110828, %89
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @nv_wr32(%struct.nouveau_device* %87, i32 %90, i32 %91)
  br label %101

93:                                               ; preds = %83
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 15
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @nv_wr32(%struct.nouveau_device* %97, i32 1110860, i32 %98)
  br label %100

100:                                              ; preds = %96, %93
  br label %101

101:                                              ; preds = %100, %86
  br label %102

102:                                              ; preds = %101, %76
  br label %103

103:                                              ; preds = %102, %72
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
