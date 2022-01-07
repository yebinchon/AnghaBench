; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_open_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_open_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32 (%struct.ll_disk*)*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.dm_transaction_manager = type { i32 }
%struct.disk_sm_root = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"sm_metadata root too small\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@disk_ll_load_ie = common dso_local global i32 0, align 4
@disk_ll_save_ie = common dso_local global i32 0, align 4
@disk_ll_init_index = common dso_local global i32 0, align 4
@disk_ll_max_entries = common dso_local global i32 0, align 4
@disk_ll_commit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_ll_open_disk(%struct.ll_disk* %0, %struct.dm_transaction_manager* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ll_disk*, align 8
  %7 = alloca %struct.dm_transaction_manager*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.disk_sm_root*, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %6, align 8
  store %struct.dm_transaction_manager* %1, %struct.dm_transaction_manager** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.disk_sm_root*
  store %struct.disk_sm_root* %13, %struct.disk_sm_root** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = call i32 @DMERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %75

20:                                               ; preds = %4
  %21 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %22 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %23 = call i32 @sm_ll_init(%struct.ll_disk* %21, %struct.dm_transaction_manager* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %75

28:                                               ; preds = %20
  %29 = load i32, i32* @disk_ll_load_ie, align 4
  %30 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %31 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @disk_ll_save_ie, align 4
  %33 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %34 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @disk_ll_init_index, align 4
  %36 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %37 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %39 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %38, i32 0, i32 0
  store i32 (%struct.ll_disk*)* @disk_ll_open, i32 (%struct.ll_disk*)** %39, align 8
  %40 = load i32, i32* @disk_ll_max_entries, align 4
  %41 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %42 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @disk_ll_commit, align 4
  %44 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %45 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.disk_sm_root*, %struct.disk_sm_root** %11, align 8
  %47 = getelementptr inbounds %struct.disk_sm_root, %struct.disk_sm_root* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le64_to_cpu(i32 %48)
  %50 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %51 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.disk_sm_root*, %struct.disk_sm_root** %11, align 8
  %53 = getelementptr inbounds %struct.disk_sm_root, %struct.disk_sm_root* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le64_to_cpu(i32 %54)
  %56 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %57 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.disk_sm_root*, %struct.disk_sm_root** %11, align 8
  %59 = getelementptr inbounds %struct.disk_sm_root, %struct.disk_sm_root* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le64_to_cpu(i32 %60)
  %62 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %63 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.disk_sm_root*, %struct.disk_sm_root** %11, align 8
  %65 = getelementptr inbounds %struct.disk_sm_root, %struct.disk_sm_root* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le64_to_cpu(i32 %66)
  %68 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %69 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %71 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %70, i32 0, i32 0
  %72 = load i32 (%struct.ll_disk*)*, i32 (%struct.ll_disk*)** %71, align 8
  %73 = load %struct.ll_disk*, %struct.ll_disk** %6, align 8
  %74 = call i32 %72(%struct.ll_disk* %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %28, %26, %16
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @sm_ll_init(%struct.ll_disk*, %struct.dm_transaction_manager*) #1

declare dso_local i32 @disk_ll_open(%struct.ll_disk*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
