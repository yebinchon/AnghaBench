; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_dm_exception_table_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_dm_exception_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_table = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_exception_table*, i32, i32)* @dm_exception_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_exception_table_init(%struct.dm_exception_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_exception_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_exception_table* %0, %struct.dm_exception_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.dm_exception_table*, %struct.dm_exception_table** %5, align 8
  %11 = getelementptr inbounds %struct.dm_exception_table, %struct.dm_exception_table* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load %struct.dm_exception_table*, %struct.dm_exception_table** %5, align 8
  %15 = getelementptr inbounds %struct.dm_exception_table, %struct.dm_exception_table* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @dm_vcalloc(i32 %16, i32 4)
  %18 = load %struct.dm_exception_table*, %struct.dm_exception_table** %5, align 8
  %19 = getelementptr inbounds %struct.dm_exception_table, %struct.dm_exception_table* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.dm_exception_table*, %struct.dm_exception_table** %5, align 8
  %21 = getelementptr inbounds %struct.dm_exception_table, %struct.dm_exception_table* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %44

27:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.dm_exception_table*, %struct.dm_exception_table** %5, align 8
  %34 = getelementptr inbounds %struct.dm_exception_table, %struct.dm_exception_table* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @INIT_LIST_HEAD(i64 %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %28

43:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @dm_vcalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
