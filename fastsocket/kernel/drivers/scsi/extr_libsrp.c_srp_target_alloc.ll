; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_target_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_target_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target = type { i64, i64, i32, %struct.device*, i32, i32, i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srp_target_alloc(%struct.srp_target* %0, %struct.device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.srp_target*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.srp_target* %0, %struct.srp_target** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %12 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %11, i32 0, i32 6
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %15 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %14, i32 0, i32 5
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %19 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %18, i32 0, i32 3
  store %struct.device* %17, %struct.device** %19, align 8
  %20 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %21 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %20, i32 0, i32 3
  %22 = load %struct.device*, %struct.device** %21, align 8
  %23 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.srp_target* %23)
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %27 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %30 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %32 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %31, i32 0, i32 3
  %33 = load %struct.device*, %struct.device** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @srp_ring_alloc(%struct.device* %33, i64 %34, i64 %35)
  %37 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %38 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %40 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %70

46:                                               ; preds = %4
  %47 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %48 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %47, i32 0, i32 4
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %51 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @srp_iu_pool_alloc(i32* %48, i64 %49, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %58

57:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %70

58:                                               ; preds = %56
  %59 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %60 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %59, i32 0, i32 3
  %61 = load %struct.device*, %struct.device** %60, align 8
  %62 = load %struct.srp_target*, %struct.srp_target** %6, align 8
  %63 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @srp_ring_free(%struct.device* %61, i32 %64, i64 %65, i64 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %58, %57, %43
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.srp_target*) #1

declare dso_local i32 @srp_ring_alloc(%struct.device*, i64, i64) #1

declare dso_local i32 @srp_iu_pool_alloc(i32*, i64, i32) #1

declare dso_local i32 @srp_ring_free(%struct.device*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
