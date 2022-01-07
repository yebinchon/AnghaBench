; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfp.h_vfp_single_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfp.h_vfp_single_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i32, i32 }

@VFP_NUMBER = common dso_local global i32 0, align 4
@VFP_INFINITY = common dso_local global i32 0, align 4
@VFP_SINGLE_SIGNIFICAND_QNAN = common dso_local global i32 0, align 4
@VFP_QNAN = common dso_local global i32 0, align 4
@VFP_SNAN = common dso_local global i32 0, align 4
@VFP_ZERO = common dso_local global i32 0, align 4
@VFP_DENORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfp_single*)* @vfp_single_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_single_type(%struct.vfp_single* %0) #0 {
  %2 = alloca %struct.vfp_single*, align 8
  %3 = alloca i32, align 4
  store %struct.vfp_single* %0, %struct.vfp_single** %2, align 8
  %4 = load i32, i32* @VFP_NUMBER, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %6 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 255
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %11 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @VFP_INFINITY, align 4
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %9
  %17 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %18 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VFP_SINGLE_SIGNIFICAND_QNAN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @VFP_QNAN, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @VFP_SNAN, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %14
  br label %49

29:                                               ; preds = %1
  %30 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %31 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.vfp_single*, %struct.vfp_single** %2, align 8
  %36 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @VFP_ZERO, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @VFP_DENORMAL, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %29
  br label %49

49:                                               ; preds = %48, %28
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
