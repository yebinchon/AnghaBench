; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_disk_recovery.c_storage_disk_recovery_split_trunk_binlog.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_disk_recovery.c_storage_disk_recovery_split_trunk_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** }

@g_fdfs_store_paths = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @storage_disk_recovery_split_trunk_binlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_disk_recovery_split_trunk_binlog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_fdfs_store_paths, i32 0, i32 0), align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8*, i8** %7, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @recovery_reader_init(i8* %12, i32* %5)
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = call i32 @storage_reader_destroy(i32* %5)
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @storage_do_split_trunk_binlog(i32 %19, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = call i32 @storage_reader_destroy(i32* %5)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @recovery_reader_init(i8*, i32*) #1

declare dso_local i32 @storage_reader_destroy(i32*) #1

declare dso_local i32 @storage_do_split_trunk_binlog(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
