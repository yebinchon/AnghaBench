; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_alloc_bnx2x_conn_resc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_alloc_bnx2x_conn_resc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, i32, i32, i32, %struct.cnic_context* }
%struct.cnic_context = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cnic_iscsi* }
%struct.cnic_iscsi = type { i32, i32, i32 }

@CNIC_ULP_FCOE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i64)* @cnic_alloc_bnx2x_conn_resc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_bnx2x_conn_resc(%struct.cnic_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cnic_local*, align 8
  %10 = alloca %struct.cnic_context*, align 8
  %11 = alloca %struct.cnic_iscsi*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %12, i32 0, i32 0
  %14 = load %struct.cnic_local*, %struct.cnic_local** %13, align 8
  store %struct.cnic_local* %14, %struct.cnic_local** %9, align 8
  %15 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %16 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %15, i32 0, i32 5
  %17 = load %struct.cnic_context*, %struct.cnic_context** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %17, i64 %18
  store %struct.cnic_context* %19, %struct.cnic_context** %10, align 8
  %20 = load %struct.cnic_context*, %struct.cnic_context** %10, align 8
  %21 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.cnic_iscsi*, %struct.cnic_iscsi** %22, align 8
  store %struct.cnic_iscsi* %23, %struct.cnic_iscsi** %11, align 8
  %24 = load %struct.cnic_context*, %struct.cnic_context** %10, align 8
  %25 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CNIC_ULP_FCOE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %31 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %30, i32 0, i32 4
  %32 = call i64 @cnic_alloc_new_id(i32* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %100

38:                                               ; preds = %29
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.cnic_context*, %struct.cnic_context** %10, align 8
  %41 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %3, align 4
  br label %105

42:                                               ; preds = %2
  %43 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %44 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %43, i32 0, i32 3
  %45 = call i64 @cnic_alloc_new_id(i32* %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %100

51:                                               ; preds = %42
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.cnic_context*, %struct.cnic_context** %10, align 8
  %54 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %56 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PAGE_ALIGN(i32 %57)
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %62 = load %struct.cnic_iscsi*, %struct.cnic_iscsi** %11, align 8
  %63 = getelementptr inbounds %struct.cnic_iscsi, %struct.cnic_iscsi* %62, i32 0, i32 2
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @cnic_alloc_dma(%struct.cnic_dev* %61, i32* %63, i32 %64, i32 1)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  br label %100

69:                                               ; preds = %51
  %70 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %71 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PAGE_ALIGN(i32 %72)
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %77 = load %struct.cnic_iscsi*, %struct.cnic_iscsi** %11, align 8
  %78 = getelementptr inbounds %struct.cnic_iscsi, %struct.cnic_iscsi* %77, i32 0, i32 1
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @cnic_alloc_dma(%struct.cnic_dev* %76, i32* %78, i32 %79, i32 1)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %100

84:                                               ; preds = %69
  %85 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %86 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PAGE_ALIGN(i32 %87)
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %8, align 4
  %91 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %92 = load %struct.cnic_iscsi*, %struct.cnic_iscsi** %11, align 8
  %93 = getelementptr inbounds %struct.cnic_iscsi, %struct.cnic_iscsi* %92, i32 0, i32 0
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @cnic_alloc_dma(%struct.cnic_dev* %91, i32* %93, i32 %94, i32 1)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %100

99:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %105

100:                                              ; preds = %98, %83, %68, %48, %35
  %101 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev* %101, i64 %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %99, %38
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @cnic_alloc_new_id(i32*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @cnic_alloc_dma(%struct.cnic_dev*, i32*, i32, i32) #1

declare dso_local i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
