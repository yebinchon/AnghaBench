; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vmmgr = type { i32 }
%struct.nouveau_vm = type { i32, i32, i32, %struct.nouveau_vm*, i32, %struct.nouveau_vmmgr*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_vm_create(%struct.nouveau_vmmgr* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nouveau_vm** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_vmmgr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_vm**, align 8
  %14 = alloca %struct.nouveau_vm*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nouveau_vmmgr* %0, %struct.nouveau_vmmgr** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_vm** %5, %struct.nouveau_vm*** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* %11, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nouveau_vm* @kzalloc(i32 48, i32 %22)
  store %struct.nouveau_vm* %23, %struct.nouveau_vm** %14, align 8
  %24 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %25 = icmp ne %struct.nouveau_vm* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %101

29:                                               ; preds = %6
  %30 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %31 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %30, i32 0, i32 6
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %8, align 8
  %34 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %35 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %34, i32 0, i32 5
  store %struct.nouveau_vmmgr* %33, %struct.nouveau_vmmgr** %35, align 8
  %36 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %37 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %8, align 8
  %40 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 12
  %43 = ashr i32 %38, %42
  %44 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %45 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %8, align 8
  %51 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 12
  %54 = ashr i32 %49, %53
  %55 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %56 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %58 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %61 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.nouveau_vm* @kcalloc(i32 %64, i32 48, i32 %65)
  %67 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %68 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %67, i32 0, i32 3
  store %struct.nouveau_vm* %66, %struct.nouveau_vm** %68, align 8
  %69 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %70 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %69, i32 0, i32 3
  %71 = load %struct.nouveau_vm*, %struct.nouveau_vm** %70, align 8
  %72 = icmp ne %struct.nouveau_vm* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %29
  %74 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %75 = call i32 @kfree(%struct.nouveau_vm* %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %101

78:                                               ; preds = %29
  %79 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %80 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %79, i32 0, i32 4
  %81 = load i32, i32* %11, align 4
  %82 = ashr i32 %81, 12
  %83 = load i32, i32* %15, align 4
  %84 = ashr i32 %83, 12
  %85 = load i32, i32* %12, align 4
  %86 = ashr i32 %85, 12
  %87 = call i32 @nouveau_mm_init(i32* %80, i32 %82, i32 %84, i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %92 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %91, i32 0, i32 3
  %93 = load %struct.nouveau_vm*, %struct.nouveau_vm** %92, align 8
  %94 = call i32 @kfree(%struct.nouveau_vm* %93)
  %95 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %96 = call i32 @kfree(%struct.nouveau_vm* %95)
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %7, align 4
  br label %101

98:                                               ; preds = %78
  %99 = load %struct.nouveau_vm*, %struct.nouveau_vm** %14, align 8
  %100 = load %struct.nouveau_vm**, %struct.nouveau_vm*** %13, align 8
  store %struct.nouveau_vm* %99, %struct.nouveau_vm** %100, align 8
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %90, %73, %26
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local %struct.nouveau_vm* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.nouveau_vm* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nouveau_vm*) #1

declare dso_local i32 @nouveau_mm_init(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
