; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_dm_add_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_dm_add_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32 }
%struct.dm_exception = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @dm_add_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_add_exception(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dm_snapshot*, align 8
  %9 = alloca %struct.dm_exception*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.dm_snapshot*
  store %struct.dm_snapshot* %11, %struct.dm_snapshot** %8, align 8
  %12 = call %struct.dm_exception* (...) @alloc_completed_exception()
  store %struct.dm_exception* %12, %struct.dm_exception** %9, align 8
  %13 = load %struct.dm_exception*, %struct.dm_exception** %9, align 8
  %14 = icmp ne %struct.dm_exception* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.dm_exception*, %struct.dm_exception** %9, align 8
  %21 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.dm_exception*, %struct.dm_exception** %9, align 8
  %24 = getelementptr inbounds %struct.dm_exception, %struct.dm_exception* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.dm_snapshot*, %struct.dm_snapshot** %8, align 8
  %26 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %25, i32 0, i32 0
  %27 = load %struct.dm_exception*, %struct.dm_exception** %9, align 8
  %28 = call i32 @dm_insert_exception(i32* %26, %struct.dm_exception* %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.dm_exception* @alloc_completed_exception(...) #1

declare dso_local i32 @dm_insert_exception(i32*, %struct.dm_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
