; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c___change_cell_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c___change_cell_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_cell = type { i8*, i32 }

@dm_hash_cells_mutex = common dso_local global i32 0, align 4
@_name_buckets = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hash_cell*, i8*)* @__change_cell_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__change_cell_name(%struct.hash_cell* %0, i8* %1) #0 {
  %3 = alloca %struct.hash_cell*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.hash_cell* %0, %struct.hash_cell** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.hash_cell*, %struct.hash_cell** %3, align 8
  %7 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %6, i32 0, i32 1
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.hash_cell*, %struct.hash_cell** %3, align 8
  %10 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = call i32 @mutex_lock(i32* @dm_hash_cells_mutex)
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.hash_cell*, %struct.hash_cell** %3, align 8
  %15 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = call i32 @mutex_unlock(i32* @dm_hash_cells_mutex)
  %17 = load %struct.hash_cell*, %struct.hash_cell** %3, align 8
  %18 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %17, i32 0, i32 1
  %19 = load i64, i64* @_name_buckets, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @hash_str(i8* %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @list_add(i32* %18, i64 %22)
  %24 = load i8*, i8** %5, align 8
  ret i8* %24
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add(i32*, i64) #1

declare dso_local i64 @hash_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
