; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruprocfs.c_gru_proc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruprocfs.c_gru_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_entry = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"sgi_uv/gru\00", align 1
@proc_gru = common dso_local global i32 0, align 4
@proc_files = common dso_local global %struct.proc_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gru_proc_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.proc_entry*, align 8
  %3 = call i32 @proc_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %3, i32* @proc_gru, align 4
  %4 = load %struct.proc_entry*, %struct.proc_entry** @proc_files, align 8
  store %struct.proc_entry* %4, %struct.proc_entry** %2, align 8
  br label %5

5:                                                ; preds = %16, %0
  %6 = load %struct.proc_entry*, %struct.proc_entry** %2, align 8
  %7 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load %struct.proc_entry*, %struct.proc_entry** %2, align 8
  %12 = call i64 @create_proc_file(%struct.proc_entry* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %20

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.proc_entry*, %struct.proc_entry** %2, align 8
  %18 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %17, i32 1
  store %struct.proc_entry* %18, %struct.proc_entry** %2, align 8
  br label %5

19:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %22

20:                                               ; preds = %14
  %21 = call i32 (...) @delete_proc_files()
  store i32 -1, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @proc_mkdir(i8*, i32*) #1

declare dso_local i64 @create_proc_file(%struct.proc_entry*) #1

declare dso_local i32 @delete_proc_files(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
