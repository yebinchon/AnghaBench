; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_init_node_guid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_init_node_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hipz_query_hca = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Can't allocate rblock memory.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't query device properties\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_shca*)* @init_node_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_node_guid(%struct.ehca_shca* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hipz_query_hca*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hipz_query_hca* @ehca_alloc_fw_ctrlblock(i32 %6)
  store %struct.hipz_query_hca* %7, %struct.hipz_query_hca** %5, align 8
  %8 = load %struct.hipz_query_hca*, %struct.hipz_query_hca** %5, align 8
  %9 = icmp ne %struct.hipz_query_hca* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %12 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %11, i32 0, i32 0
  %13 = call i32 @ehca_err(%struct.TYPE_2__* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %18 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hipz_query_hca*, %struct.hipz_query_hca** %5, align 8
  %21 = call i64 @hipz_h_query_hca(i32 %19, %struct.hipz_query_hca* %20)
  %22 = load i64, i64* @H_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %26 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %25, i32 0, i32 0
  %27 = call i32 @ehca_err(%struct.TYPE_2__* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %37

30:                                               ; preds = %16
  %31 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %32 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.hipz_query_hca*, %struct.hipz_query_hca** %5, align 8
  %35 = getelementptr inbounds %struct.hipz_query_hca, %struct.hipz_query_hca* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %33, i32* %35, i32 4)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.hipz_query_hca*, %struct.hipz_query_hca** %5, align 8
  %39 = call i32 @ehca_free_fw_ctrlblock(%struct.hipz_query_hca* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.hipz_query_hca* @ehca_alloc_fw_ctrlblock(i32) #1

declare dso_local i32 @ehca_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i64 @hipz_h_query_hca(i32, %struct.hipz_query_hca*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ehca_free_fw_ctrlblock(%struct.hipz_query_hca*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
