; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32*, i32* }

@qla2x00_dfs_root_count = common dso_local global i32 0, align 4
@qla2x00_dfs_root = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_dfs_remove(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  store %struct.qla_hw_data* %6, %struct.qla_hw_data** %3, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @debugfs_remove(i32* %14)
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @debugfs_remove(i32* %26)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = call i32 @atomic_dec(i32* @qla2x00_dfs_root_count)
  br label %31

31:                                               ; preds = %23, %18
  %32 = call i64 @atomic_read(i32* @qla2x00_dfs_root_count)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32*, i32** @qla2x00_dfs_root, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** @qla2x00_dfs_root, align 8
  %39 = call i32 @debugfs_remove(i32* %38)
  store i32* null, i32** @qla2x00_dfs_root, align 8
  br label %40

40:                                               ; preds = %37, %34, %31
  ret i32 0
}

declare dso_local i32 @debugfs_remove(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
