; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_global.c_drm_global_item_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_global.c_drm_global_item_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_global_item = type { i64, i32*, i32 }
%struct.drm_global_reference = type { i64, {}*, i32*, i32 }

@glob = common dso_local global %struct.drm_global_item* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_global_item_ref(%struct.drm_global_reference* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_global_reference*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_global_item*, align 8
  %6 = alloca i8*, align 8
  store %struct.drm_global_reference* %0, %struct.drm_global_reference** %3, align 8
  %7 = load %struct.drm_global_item*, %struct.drm_global_item** @glob, align 8
  %8 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %9 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %7, i64 %10
  store %struct.drm_global_item* %11, %struct.drm_global_item** %5, align 8
  %12 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %13 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %16 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %1
  %20 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %21 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kzalloc(i32 %22, i32 %23)
  %25 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %26 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %28 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %19
  %38 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %39 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %42 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %44 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %43, i32 0, i32 1
  %45 = bitcast {}** %44 to i32 (%struct.drm_global_reference*)**
  %46 = load i32 (%struct.drm_global_reference*)*, i32 (%struct.drm_global_reference*)** %45, align 8
  %47 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %48 = call i32 %46(%struct.drm_global_reference* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %73

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %58 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %62 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %65 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %67 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast i32* %68 to i8*
  store i8* %69, i8** %6, align 8
  %70 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %71 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %70, i32 0, i32 2
  %72 = call i32 @mutex_unlock(i32* %71)
  store i32 0, i32* %2, align 4
  br label %80

73:                                               ; preds = %54, %34
  %74 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %75 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %78 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %73, %56
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
