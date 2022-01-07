; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/basler/excite/extr_excite_procfs.c_excite_procfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/basler/excite/extr_excite_procfs.c_excite_procfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"excite\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unit_id\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@excite_unit_id_proc_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"bootrom\00", align 1
@excite_bootrom_read = common dso_local global i32 0, align 4
@EXCITE_SIZE_BOOTROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @excite_procfs_init() #0 {
  %1 = alloca %struct.proc_dir_entry*, align 8
  %2 = alloca %struct.proc_dir_entry*, align 8
  %3 = call %struct.proc_dir_entry* @proc_mkdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.proc_dir_entry* %3, %struct.proc_dir_entry** %1, align 8
  %4 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %1, align 8
  %5 = icmp ne %struct.proc_dir_entry* %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  %7 = load i32, i32* @S_IRUGO, align 4
  %8 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %1, align 8
  %9 = call %struct.proc_dir_entry* @proc_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %7, %struct.proc_dir_entry* %8, i32* @excite_unit_id_proc_fops)
  store %struct.proc_dir_entry* %9, %struct.proc_dir_entry** %2, align 8
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %11 = icmp ne %struct.proc_dir_entry* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %14 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %13, i32 0, i32 0
  store i32 6, i32* %14, align 4
  br label %15

15:                                               ; preds = %12, %6
  %16 = load i32, i32* @S_IRUGO, align 4
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %1, align 8
  %18 = load i32, i32* @excite_bootrom_read, align 4
  %19 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %16, %struct.proc_dir_entry* %17, i32 %18, i32* null)
  store %struct.proc_dir_entry* %19, %struct.proc_dir_entry** %2, align 8
  %20 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %21 = icmp ne %struct.proc_dir_entry* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @EXCITE_SIZE_BOOTROM, align 4
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %25 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %15
  br label %27

27:                                               ; preds = %26, %0
  ret void
}

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, i32*) #1

declare dso_local %struct.proc_dir_entry* @proc_create(i8*, i32, %struct.proc_dir_entry*, i32*) #1

declare dso_local %struct.proc_dir_entry* @create_proc_read_entry(i8*, i32, %struct.proc_dir_entry*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
