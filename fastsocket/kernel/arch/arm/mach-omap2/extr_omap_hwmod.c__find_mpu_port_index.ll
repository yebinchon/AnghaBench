; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__find_mpu_port_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_omap_hwmod.c__find_mpu_port_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32, i32, %struct.omap_hwmod_ocp_if** }
%struct.omap_hwmod_ocp_if = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCP_USER_MPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"omap_hwmod: %s: MPU OCP slave port ID  %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"omap_hwmod: %s: no MPU OCP slave port found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_find_mpu_port_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_find_mpu_port_index(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca %struct.omap_hwmod_ocp_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %8 = icmp ne %struct.omap_hwmod* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %11 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %66

17:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  %18 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %19 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %18, i32 0, i32 2
  %20 = load %struct.omap_hwmod_ocp_if**, %struct.omap_hwmod_ocp_if*** %19, align 8
  %21 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %20, align 8
  store %struct.omap_hwmod_ocp_if* %21, %struct.omap_hwmod_ocp_if** %4, align 8
  br label %22

22:                                               ; preds = %37, %17
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %4, align 8
  %30 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OCP_USER_MPU, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %42

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %4, align 8
  %41 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %40, i32 1
  store %struct.omap_hwmod_ocp_if* %41, %struct.omap_hwmod_ocp_if** %4, align 8
  br label %22

42:                                               ; preds = %35, %22
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %47 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %56

51:                                               ; preds = %42
  %52 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %53 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  br label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i32 [ %60, %59 ], [ %63, %61 ]
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %14
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
