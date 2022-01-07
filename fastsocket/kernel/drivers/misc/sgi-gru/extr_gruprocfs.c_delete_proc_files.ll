; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruprocfs.c_delete_proc_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruprocfs.c_delete_proc_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.proc_entry = type { i8*, i64 }

@proc_gru = common dso_local global %struct.TYPE_3__* null, align 8
@proc_files = common dso_local global %struct.proc_entry* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"gru\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_proc_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_proc_files() #0 {
  %1 = alloca %struct.proc_entry*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proc_gru, align 8
  %3 = icmp ne %struct.TYPE_3__* %2, null
  br i1 %3, label %4, label %31

4:                                                ; preds = %0
  %5 = load %struct.proc_entry*, %struct.proc_entry** @proc_files, align 8
  store %struct.proc_entry* %5, %struct.proc_entry** %1, align 8
  br label %6

6:                                                ; preds = %23, %4
  %7 = load %struct.proc_entry*, %struct.proc_entry** %1, align 8
  %8 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.proc_entry*, %struct.proc_entry** %1, align 8
  %13 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.proc_entry*, %struct.proc_entry** %1, align 8
  %18 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proc_gru, align 8
  %21 = call i32 @remove_proc_entry(i8* %19, %struct.TYPE_3__* %20)
  br label %22

22:                                               ; preds = %16, %11
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.proc_entry*, %struct.proc_entry** %1, align 8
  %25 = getelementptr inbounds %struct.proc_entry, %struct.proc_entry* %24, i32 1
  store %struct.proc_entry* %25, %struct.proc_entry** %1, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proc_gru, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %29)
  br label %31

31:                                               ; preds = %26, %0
  ret void
}

declare dso_local i32 @remove_proc_entry(i8*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
