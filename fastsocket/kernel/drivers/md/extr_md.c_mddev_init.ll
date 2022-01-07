; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_mddev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_mddev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i8*, i32, i8*, i64, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MaxSector = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@LEVEL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mddev_init(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %3 = load %struct.mddev*, %struct.mddev** %2, align 8
  %4 = getelementptr inbounds %struct.mddev, %struct.mddev* %3, i32 0, i32 18
  %5 = call i32 @mutex_init(i32* %4)
  %6 = load %struct.mddev*, %struct.mddev** %2, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 17
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 16
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.mddev*, %struct.mddev** %2, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 15
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.mddev*, %struct.mddev** %2, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 14
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.mddev*, %struct.mddev** %2, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 13
  %21 = call i32 @init_timer(i32* %20)
  %22 = load %struct.mddev*, %struct.mddev** %2, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 12
  %24 = call i32 @atomic_set(i32* %23, i32 1)
  %25 = load %struct.mddev*, %struct.mddev** %2, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 11
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  %28 = load %struct.mddev*, %struct.mddev** %2, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 10
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  %31 = load %struct.mddev*, %struct.mddev** %2, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 9
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.mddev*, %struct.mddev** %2, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 8
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  %37 = load %struct.mddev*, %struct.mddev** %2, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 7
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.mddev*, %struct.mddev** %2, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 6
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load i8*, i8** @MaxSector, align 8
  %44 = load %struct.mddev*, %struct.mddev** %2, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mddev*, %struct.mddev** %2, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.mddev*, %struct.mddev** %2, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.mddev*, %struct.mddev** %2, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load i8*, i8** @MaxSector, align 8
  %53 = load %struct.mddev*, %struct.mddev** %2, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @LEVEL_NONE, align 4
  %56 = load %struct.mddev*, %struct.mddev** %2, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
