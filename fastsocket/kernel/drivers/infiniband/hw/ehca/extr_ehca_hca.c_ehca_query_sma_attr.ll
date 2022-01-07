; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_hca.c_ehca_query_sma_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_hca.c_ehca_query_sma_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, i32 }
%struct.ehca_sma_attr = type { i32, i32, i32, i32, i32, i32 }
%struct.hipz_query_port = type { i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Can't allocate rblock memory.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't query port properties\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_query_sma_attr(%struct.ehca_shca* %0, i32 %1, %struct.ehca_sma_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_shca*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehca_sma_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hipz_query_port*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ehca_sma_attr* %2, %struct.ehca_sma_attr** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.hipz_query_port* @ehca_alloc_fw_ctrlblock(i32 %11)
  store %struct.hipz_query_port* %12, %struct.hipz_query_port** %10, align 8
  %13 = load %struct.hipz_query_port*, %struct.hipz_query_port** %10, align 8
  %14 = icmp ne %struct.hipz_query_port* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %17 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %16, i32 0, i32 0
  %18 = call i32 @ehca_err(i32* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %76

21:                                               ; preds = %3
  %22 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %23 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.hipz_query_port*, %struct.hipz_query_port** %10, align 8
  %27 = call i64 @hipz_h_query_port(i32 %24, i32 %25, %struct.hipz_query_port* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @H_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %33 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %32, i32 0, i32 0
  %34 = call i32 @ehca_err(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %72

37:                                               ; preds = %21
  %38 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %7, align 8
  %39 = call i32 @memset(%struct.ehca_sma_attr* %38, i32 0, i32 24)
  %40 = load %struct.hipz_query_port*, %struct.hipz_query_port** %10, align 8
  %41 = getelementptr inbounds %struct.hipz_query_port, %struct.hipz_query_port* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %7, align 8
  %44 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hipz_query_port*, %struct.hipz_query_port** %10, align 8
  %46 = getelementptr inbounds %struct.hipz_query_port, %struct.hipz_query_port* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %7, align 8
  %49 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hipz_query_port*, %struct.hipz_query_port** %10, align 8
  %51 = getelementptr inbounds %struct.hipz_query_port, %struct.hipz_query_port* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %7, align 8
  %54 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.hipz_query_port*, %struct.hipz_query_port** %10, align 8
  %56 = getelementptr inbounds %struct.hipz_query_port, %struct.hipz_query_port* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %7, align 8
  %59 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hipz_query_port*, %struct.hipz_query_port** %10, align 8
  %61 = getelementptr inbounds %struct.hipz_query_port, %struct.hipz_query_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %7, align 8
  %64 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ehca_sma_attr*, %struct.ehca_sma_attr** %7, align 8
  %66 = getelementptr inbounds %struct.ehca_sma_attr, %struct.ehca_sma_attr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hipz_query_port*, %struct.hipz_query_port** %10, align 8
  %69 = getelementptr inbounds %struct.hipz_query_port, %struct.hipz_query_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32 %67, i32 %70, i32 4)
  br label %72

72:                                               ; preds = %37, %31
  %73 = load %struct.hipz_query_port*, %struct.hipz_query_port** %10, align 8
  %74 = call i32 @ehca_free_fw_ctrlblock(%struct.hipz_query_port* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %15
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.hipz_query_port* @ehca_alloc_fw_ctrlblock(i32) #1

declare dso_local i32 @ehca_err(i32*, i8*) #1

declare dso_local i64 @hipz_h_query_port(i32, i32, %struct.hipz_query_port*) #1

declare dso_local i32 @memset(%struct.ehca_sma_attr*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ehca_free_fw_ctrlblock(%struct.hipz_query_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
