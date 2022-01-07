; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_set_filp_rights.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_set_filp_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_file**, %struct.drm_file*, i32*)* @radeon_set_filp_rights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_set_filp_rights(%struct.drm_device* %0, %struct.drm_file** %1, %struct.drm_file* %2, i32* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file**, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file** %1, %struct.drm_file*** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %16, align 8
  %18 = icmp ne %struct.drm_file* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %21 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  store %struct.drm_file* %20, %struct.drm_file** %21, align 8
  br label %22

22:                                               ; preds = %19, %15
  br label %36

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  %29 = load %struct.drm_file*, %struct.drm_file** %28, align 8
  %30 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %31 = icmp eq %struct.drm_file* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  store %struct.drm_file* null, %struct.drm_file** %33, align 8
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  %38 = load %struct.drm_file*, %struct.drm_file** %37, align 8
  %39 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %40 = icmp eq %struct.drm_file* %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
