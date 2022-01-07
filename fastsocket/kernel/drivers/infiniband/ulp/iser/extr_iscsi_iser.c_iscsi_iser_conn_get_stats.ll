; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_stats = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"qp_tx_queue_full\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"fmr_map_not_avail\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"eh_abort_cnt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fmr_unalign_cnt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_conn*, %struct.iscsi_stats*)* @iscsi_iser_conn_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_iser_conn_get_stats(%struct.iscsi_cls_conn* %0, %struct.iscsi_stats* %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_stats*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  store %struct.iscsi_stats* %1, %struct.iscsi_stats** %4, align 8
  %6 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %6, i32 0, i32 0
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %5, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %30 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %45 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %55 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %54, i32 0, i32 0
  store i32 4, i32* %55, align 8
  %56 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %57 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcpy(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %69 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strcpy(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %81 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @strcpy(i32 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %88 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %91 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %89, i32* %94, align 4
  %95 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %96 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @strcpy(i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %103 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %106 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %104, i32* %109, align 4
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
