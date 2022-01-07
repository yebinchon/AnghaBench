; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk_cluster.c_clusters_intersect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_blk_cluster.c_clusters_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_request = type { i32 }

@CLUSTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scm_request*, %struct.scm_request*)* @clusters_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusters_intersect(%struct.scm_request* %0, %struct.scm_request* %1) #0 {
  %3 = alloca %struct.scm_request*, align 8
  %4 = alloca %struct.scm_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.scm_request* %0, %struct.scm_request** %3, align 8
  store %struct.scm_request* %1, %struct.scm_request** %4, align 8
  %9 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %10 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @blk_rq_pos(i32 %11)
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 9
  %15 = load i32, i32* @CLUSTER_SIZE, align 4
  %16 = sdiv i32 %14, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %19 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @blk_rq_pos(i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 9
  %24 = load %struct.scm_request*, %struct.scm_request** %3, align 8
  %25 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @blk_rq_bytes(i32 %26)
  %28 = add nsw i32 %23, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @CLUSTER_SIZE, align 4
  %31 = sdiv i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  %33 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %34 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @blk_rq_pos(i32 %35)
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 9
  %39 = load i32, i32* @CLUSTER_SIZE, align 4
  %40 = sdiv i32 %38, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %7, align 8
  %42 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %43 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @blk_rq_pos(i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 9
  %48 = load %struct.scm_request*, %struct.scm_request** %4, align 8
  %49 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @blk_rq_bytes(i32 %50)
  %52 = add nsw i32 %47, %51
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* @CLUSTER_SIZE, align 4
  %55 = sdiv i32 %53, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %2
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ule i64 %61, %62
  br label %64

64:                                               ; preds = %60, %2
  %65 = phi i1 [ false, %2 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

declare dso_local i64 @blk_rq_pos(i32) #1

declare dso_local i32 @blk_rq_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
