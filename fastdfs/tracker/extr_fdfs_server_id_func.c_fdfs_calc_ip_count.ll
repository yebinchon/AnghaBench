; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_fdfs_server_id_func.c_fdfs_calc_ip_count.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_fdfs_server_id_func.c_fdfs_calc_ip_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@g_storage_ids_by_id = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fdfs_calc_ip_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdfs_calc_ip_count() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_storage_ids_by_id, i32 0, i32 1), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_storage_ids_by_id, i32 0, i32 0), align 8
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i64 %6
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_storage_ids_by_id, i32 0, i32 1), align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %1, align 8
  br label %9

9:                                                ; preds = %22, %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = icmp ult %struct.TYPE_5__* %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 1
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %1, align 8
  br label %9

25:                                               ; preds = %9
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
