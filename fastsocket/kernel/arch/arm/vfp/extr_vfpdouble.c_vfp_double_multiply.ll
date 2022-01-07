; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_multiply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"VDN\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"VDM\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"VFP: swapping M <-> N\0A\00", align 1
@vfp_double_default_qnan = common dso_local global %struct.vfp_double zeroinitializer, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"VDD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfp_double*, %struct.vfp_double*, %struct.vfp_double*, i32)* @vfp_double_multiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_double_multiply(%struct.vfp_double* %0, %struct.vfp_double* %1, %struct.vfp_double* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfp_double*, align 8
  %7 = alloca %struct.vfp_double*, align 8
  %8 = alloca %struct.vfp_double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfp_double*, align 8
  store %struct.vfp_double* %0, %struct.vfp_double** %6, align 8
  store %struct.vfp_double* %1, %struct.vfp_double** %7, align 8
  store %struct.vfp_double* %2, %struct.vfp_double** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %12 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.vfp_double* %11)
  %13 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %14 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.vfp_double* %13)
  %15 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %16 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %19 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  store %struct.vfp_double* %23, %struct.vfp_double** %10, align 8
  %24 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  store %struct.vfp_double* %24, %struct.vfp_double** %7, align 8
  %25 = load %struct.vfp_double*, %struct.vfp_double** %10, align 8
  store %struct.vfp_double* %25, %struct.vfp_double** %8, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %4
  %28 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %29 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %32 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %30, %33
  %35 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %36 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %38 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 2047
  br i1 %40, label %41, label %83

41:                                               ; preds = %27
  %42 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %43 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %48 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 2047
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %53 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51, %41
  %57 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %58 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %59 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @vfp_propagate_nan(%struct.vfp_double* %57, %struct.vfp_double* %58, %struct.vfp_double* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %120

62:                                               ; preds = %51, %46
  %63 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %64 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %67 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %65, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %73 = bitcast %struct.vfp_double* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 bitcast (%struct.vfp_double* @vfp_double_default_qnan to i8*), i64 12, i1 false)
  %74 = load i32, i32* @FPSCR_IOC, align 4
  store i32 %74, i32* %5, align 4
  br label %120

75:                                               ; preds = %62
  %76 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %77 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %80 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %82 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %81, i32 0, i32 2
  store i32 0, i32* %82, align 4
  store i32 0, i32* %5, align 4
  br label %120

83:                                               ; preds = %27
  %84 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %85 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %88 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %86, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %94 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %93, i32 0, i32 0
  store i32 0, i32* %94, align 4
  %95 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %96 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %95, i32 0, i32 2
  store i32 0, i32* %96, align 4
  store i32 0, i32* %5, align 4
  br label %120

97:                                               ; preds = %83
  %98 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %99 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %102 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = sub nsw i32 %104, 1023
  %106 = add nsw i32 %105, 2
  %107 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %108 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %110 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %113 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @vfp_hi64multiply64(i32 %111, i32 %114)
  %116 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %117 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %119 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.vfp_double* %118)
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %97, %92, %75, %71, %56
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @vfp_double_dump(i8*, %struct.vfp_double*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @vfp_propagate_nan(%struct.vfp_double*, %struct.vfp_double*, %struct.vfp_double*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vfp_hi64multiply64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
