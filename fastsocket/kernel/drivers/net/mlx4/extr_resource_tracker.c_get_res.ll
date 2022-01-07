; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_get_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_get_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_common = type { i64, i32, i64 }

@ENONET = common dso_local global i32 0, align 4
@RES_ANY_BUSY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i8*)* @get_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.res_common*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %14 = call i32 @mlx4_tlock(%struct.mlx4_dev* %13)
  %15 = call i32 @spin_lock_irq(i32 %14)
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.res_common* @find_res(%struct.mlx4_dev* %16, i32 %17, i32 %18)
  store %struct.res_common* %19, %struct.res_common** %11, align 8
  %20 = load %struct.res_common*, %struct.res_common** %11, align 8
  %21 = icmp ne %struct.res_common* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENONET, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %12, align 4
  br label %59

25:                                               ; preds = %5
  %26 = load %struct.res_common*, %struct.res_common** %11, align 8
  %27 = getelementptr inbounds %struct.res_common, %struct.res_common* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RES_ANY_BUSY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %59

34:                                               ; preds = %25
  %35 = load %struct.res_common*, %struct.res_common** %11, align 8
  %36 = getelementptr inbounds %struct.res_common, %struct.res_common* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %59

43:                                               ; preds = %34
  %44 = load %struct.res_common*, %struct.res_common** %11, align 8
  %45 = getelementptr inbounds %struct.res_common, %struct.res_common* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.res_common*, %struct.res_common** %11, align 8
  %48 = getelementptr inbounds %struct.res_common, %struct.res_common* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* @RES_ANY_BUSY, align 8
  %50 = load %struct.res_common*, %struct.res_common** %11, align 8
  %51 = getelementptr inbounds %struct.res_common, %struct.res_common* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.res_common*, %struct.res_common** %11, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = bitcast i8* %56 to %struct.res_common**
  store %struct.res_common* %55, %struct.res_common** %57, align 8
  br label %58

58:                                               ; preds = %54, %43
  br label %59

59:                                               ; preds = %58, %40, %31, %22
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %61 = call i32 @mlx4_tlock(%struct.mlx4_dev* %60)
  %62 = call i32 @spin_unlock_irq(i32 %61)
  %63 = load i32, i32* %12, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @mlx4_tlock(%struct.mlx4_dev*) #1

declare dso_local %struct.res_common* @find_res(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
