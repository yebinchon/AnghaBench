; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-disk.c_ide_do_rw_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-disk.c_ide_do_rw_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, %struct.request*)* }
%struct.request = type { i64, i64 }

@IDE_DFLAG_BLOCKED = common dso_local global i32 0, align 4
@REQ_TYPE_FS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"%s: %sing: block=%llu, sectors=%u, buffer=0x%08lx\0A\00", align 1
@READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"writ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.request*, i64)* @ide_do_rw_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_do_rw_disk(%struct.TYPE_7__* %0, %struct.request* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IDE_DFLAG_BLOCKED, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.request*, %struct.request** %5, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REQ_TYPE_FS, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = call i32 (...) @ledtrig_ide_activity()
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.request*, %struct.request** %5, align 8
  %29 = call i64 @rq_data_dir(%struct.request* %28)
  %30 = load i64, i64* @READ, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = call i32 @blk_rq_sectors(%struct.request* %35)
  %37 = load %struct.request*, %struct.request** %5, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %33, i64 %34, i32 %36, i64 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_7__*, %struct.request*)*, i32 (%struct.TYPE_7__*, %struct.request*)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_7__*, %struct.request*)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_7__*, %struct.request*)*, i32 (%struct.TYPE_7__*, %struct.request*)** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load %struct.request*, %struct.request** %5, align 8
  %51 = call i32 %48(%struct.TYPE_7__* %49, %struct.request* %50)
  br label %52

52:                                               ; preds = %45, %3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = load %struct.request*, %struct.request** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @__ide_do_rw_disk(%struct.TYPE_7__* %53, %struct.request* %54, i64 %55)
  ret i32 %56
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ledtrig_ide_activity(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*, i64, i32, i64) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @__ide_do_rw_disk(%struct.TYPE_7__*, %struct.request*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
