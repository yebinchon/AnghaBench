; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i8*, i32, i32 }

@qla2x00_dfs_root = common dso_local global i32* null, align 8
@qla2x00_dfs_root_count = common dso_local global i32 0, align 4
@QLA2XXX_DRIVER_NAME = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to create debugfs root directory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to create debugfs ha directory.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fce\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@dfs_fce_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to create debugfs fce node.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_dfs_setup(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  store %struct.qla_hw_data* %6, %struct.qla_hw_data** %3, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = call i32 @IS_QLA25XX(%struct.qla_hw_data* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %12 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %16 = call i32 @IS_QLA83XX(%struct.qla_hw_data* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %86

19:                                               ; preds = %14, %10, %1
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %86

25:                                               ; preds = %19
  %26 = load i32*, i32** @qla2x00_dfs_root, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %41

29:                                               ; preds = %25
  %30 = call i32 @atomic_set(i32* @qla2x00_dfs_root_count, i32 0)
  %31 = load i32, i32* @QLA2XXX_DRIVER_NAME, align 4
  %32 = call i8* @debugfs_create_dir(i32 %31, i32* null)
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** @qla2x00_dfs_root, align 8
  %34 = load i32*, i32** @qla2x00_dfs_root, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ql_log_warn, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = call i32 @ql_log(i32 %37, %struct.TYPE_5__* %38, i32 247, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %86

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %68

47:                                               ; preds = %41
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 2
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** @qla2x00_dfs_root, align 8
  %55 = call i8* @debugfs_create_dir(i32 %53, i32* %54)
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  %63 = load i32, i32* @ql_log_warn, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = call i32 @ql_log(i32 %63, %struct.TYPE_5__* %64, i32 248, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %86

66:                                               ; preds = %47
  %67 = call i32 @atomic_inc(i32* @qla2x00_dfs_root_count)
  br label %68

68:                                               ; preds = %66, %46
  %69 = load i32, i32* @S_IRUSR, align 4
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %69, i8* %72, %struct.TYPE_5__* %73, i32* @dfs_fce_ops)
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %68
  %82 = load i32, i32* @ql_log_warn, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = call i32 @ql_log(i32 %82, %struct.TYPE_5__* %83, i32 249, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %86

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %81, %62, %36, %24, %18
  ret i32 0
}

declare dso_local i32 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i8*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
