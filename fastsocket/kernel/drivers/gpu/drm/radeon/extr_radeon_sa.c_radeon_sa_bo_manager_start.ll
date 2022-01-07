; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_manager_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_manager_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_sa_manager = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"no bo for sa manager\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"(%d) failed to reserve manager bo\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"(%d) failed to pin manager bo\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_sa_bo_manager_start(%struct.radeon_device* %0, %struct.radeon_sa_manager* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_sa_manager*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_sa_manager* %1, %struct.radeon_sa_manager** %5, align 8
  %7 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %8 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @dev_err(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @radeon_bo_reserve(i32* %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %18
  %33 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %39, i32 0, i32 2
  %41 = call i32 @radeon_bo_pin(i32* %35, i32 %38, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %32
  %45 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @radeon_bo_unreserve(i32* %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %67

55:                                               ; preds = %32
  %56 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %60 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %59, i32 0, i32 1
  %61 = call i32 @radeon_bo_kmap(i32* %58, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @radeon_bo_unreserve(i32* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %55, %44, %25, %11
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @radeon_bo_reserve(i32*, i32) #1

declare dso_local i32 @radeon_bo_pin(i32*, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32*) #1

declare dso_local i32 @radeon_bo_kmap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
