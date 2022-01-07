; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_fce_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_fce_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.file = type { i32 }

@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DebugFS: Unable to disable FCE (%d).\0A\00", align 1
@qla2x00_dfs_fce_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @qla2x00_dfs_fce_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_dfs_fce_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %6, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 3
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 2
  %29 = call i32 @qla2x00_disable_fce_trace(%struct.TYPE_7__* %24, i32* %26, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load i32, i32* @ql_dbg_user, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ql_dbg(i32 %33, %struct.TYPE_7__* %34, i32 28764, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %20
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %37, %19
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = load i32, i32* @qla2x00_dfs_fce_show, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = call i32 @single_open(%struct.file* %45, i32 %46, %struct.TYPE_7__* %47)
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qla2x00_disable_fce_trace(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @single_open(%struct.file*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
