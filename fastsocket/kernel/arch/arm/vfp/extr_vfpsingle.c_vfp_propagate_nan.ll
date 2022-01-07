; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_propagate_nan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_propagate_nan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i32 }

@FPSCR_DEFAULT_NAN = common dso_local global i32 0, align 4
@vfp_single_default_qnan = common dso_local global %struct.vfp_single zeroinitializer, align 4
@VFP_SNAN = common dso_local global i32 0, align 4
@VFP_QNAN = common dso_local global i32 0, align 4
@VFP_SINGLE_SIGNIFICAND_QNAN = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@VFP_NAN_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfp_single*, %struct.vfp_single*, %struct.vfp_single*, i32)* @vfp_propagate_nan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_propagate_nan(%struct.vfp_single* %0, %struct.vfp_single* %1, %struct.vfp_single* %2, i32 %3) #0 {
  %5 = alloca %struct.vfp_single*, align 8
  %6 = alloca %struct.vfp_single*, align 8
  %7 = alloca %struct.vfp_single*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfp_single*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vfp_single* %0, %struct.vfp_single** %5, align 8
  store %struct.vfp_single* %1, %struct.vfp_single** %6, align 8
  store %struct.vfp_single* %2, %struct.vfp_single** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.vfp_single*, %struct.vfp_single** %6, align 8
  %13 = call i32 @vfp_single_type(%struct.vfp_single* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.vfp_single*, %struct.vfp_single** %7, align 8
  %15 = icmp ne %struct.vfp_single* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.vfp_single*, %struct.vfp_single** %7, align 8
  %18 = call i32 @vfp_single_type(%struct.vfp_single* %17)
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @FPSCR_DEFAULT_NAN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.vfp_single* @vfp_single_default_qnan, %struct.vfp_single** %9, align 8
  br label %47

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @VFP_SNAN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @VFP_SNAN, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @VFP_QNAN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %25
  %38 = load %struct.vfp_single*, %struct.vfp_single** %6, align 8
  store %struct.vfp_single* %38, %struct.vfp_single** %9, align 8
  br label %41

39:                                               ; preds = %33, %29
  %40 = load %struct.vfp_single*, %struct.vfp_single** %7, align 8
  store %struct.vfp_single* %40, %struct.vfp_single** %9, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* @VFP_SINGLE_SIGNIFICAND_QNAN, align 4
  %43 = load %struct.vfp_single*, %struct.vfp_single** %9, align 8
  %44 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %24
  %48 = load %struct.vfp_single*, %struct.vfp_single** %5, align 8
  %49 = load %struct.vfp_single*, %struct.vfp_single** %9, align 8
  %50 = bitcast %struct.vfp_single* %48 to i8*
  %51 = bitcast %struct.vfp_single* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @VFP_SNAN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @VFP_SNAN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %47
  %60 = load i32, i32* @FPSCR_IOC, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @VFP_NAN_FLAG, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  ret i32 %64
}

declare dso_local i32 @vfp_single_type(%struct.vfp_single*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
