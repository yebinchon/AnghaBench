; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_fdfs_server_id_func.c_fdfs_get_storage_by_id.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_fdfs_server_id_func.c_fdfs_get_storage_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@g_storage_ids_by_id = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@fdfs_cmp_server_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @fdfs_get_storage_by_id(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 4)
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @snprintf(i32 %6, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_storage_ids_by_id, i32 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_storage_ids_by_id, i32 0, i32 0), align 4
  %11 = load i32, i32* @fdfs_cmp_server_id, align 4
  %12 = call i64 @bsearch(%struct.TYPE_6__* %3, i32 %9, i32 %10, i32 4, i32 %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_6__*
  ret %struct.TYPE_6__* %13
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @bsearch(%struct.TYPE_6__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
