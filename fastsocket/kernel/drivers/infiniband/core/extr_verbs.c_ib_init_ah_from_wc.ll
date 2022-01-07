; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_init_ah_from_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_init_ah_from_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32 }
%struct.ib_grh = type { i32, i32, i32 }
%struct.ib_ah_attr = type { %struct.TYPE_2__, i32, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i32 }

@IB_WC_GRH = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_init_ah_from_wc(%struct.ib_device* %0, i8* %1, %struct.ib_wc* %2, %struct.ib_grh* %3, %struct.ib_ah_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.ib_grh*, align 8
  %11 = alloca %struct.ib_ah_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store %struct.ib_grh* %3, %struct.ib_grh** %10, align 8
  store %struct.ib_ah_attr* %4, %struct.ib_ah_attr** %11, align 8
  %15 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %16 = call i32 @memset(%struct.ib_ah_attr* %15, i32 0, i32 64)
  %17 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %18 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %21 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %23 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %26 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %31 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %34 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %36 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IB_WC_GRH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %5
  %42 = load i32, i32* @IB_AH_GRH, align 4
  %43 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %44 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %46 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %49 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  %51 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %52 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %53 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %52, i32 0, i32 1
  %54 = call i32 @ib_find_cached_gid(%struct.ib_device* %51, i32* %53, i8** %8, i64* %13)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %6, align 4
  br label %84

59:                                               ; preds = %41
  %60 = load i64, i64* %13, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %63 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i8* %61, i8** %64, align 8
  %65 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %66 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, 1048575
  %71 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %72 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %75 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 255, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = ashr i32 %77, 20
  %79 = and i32 %78, 255
  %80 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %11, align 8
  %81 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  br label %83

83:                                               ; preds = %59, %5
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %57
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i32 @ib_find_cached_gid(%struct.ib_device*, i32*, i8**, i64*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
