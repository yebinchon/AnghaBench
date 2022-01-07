; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_submit_qentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_submit_qentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_dev = type { i32 }
%struct.queue = type { i32 }
%struct.FS_QENTRY = type { i32 }

@Q_FULL = common dso_local global i32 0, align 4
@FS_DEBUG_TXQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Found queue at %x full. Waiting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"q mismatch! %p %p\0A\00", align 1
@Q_INCWRAP = common dso_local global i32 0, align 4
@submit_qentry.c = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"q at %d: %x-%x: %x entries.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_dev*, %struct.queue*, %struct.FS_QENTRY*)* @submit_qentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_qentry(%struct.fs_dev* %0, %struct.queue* %1, %struct.FS_QENTRY* %2) #0 {
  %4 = alloca %struct.fs_dev*, align 8
  %5 = alloca %struct.queue*, align 8
  %6 = alloca %struct.FS_QENTRY*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.FS_QENTRY*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fs_dev* %0, %struct.fs_dev** %4, align 8
  store %struct.queue* %1, %struct.queue** %5, align 8
  store %struct.FS_QENTRY* %2, %struct.FS_QENTRY** %6, align 8
  br label %11

11:                                               ; preds = %21, %3
  %12 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %13 = load %struct.queue*, %struct.queue** %5, align 8
  %14 = getelementptr inbounds %struct.queue, %struct.queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @Q_WP(i32 %15)
  %17 = call i32 @read_fs(%struct.fs_dev* %12, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @Q_FULL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load i32, i32* @FS_DEBUG_TXQ, align 4
  %23 = load %struct.queue*, %struct.queue** %5, align 8
  %24 = getelementptr inbounds %struct.queue, %struct.queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, ...) @fs_dprintk(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 (...) @schedule()
  br label %11

28:                                               ; preds = %11
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, -16
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.FS_QENTRY* @bus_to_virt(i32 %31)
  store %struct.FS_QENTRY* %32, %struct.FS_QENTRY** %8, align 8
  %33 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %6, align 8
  %34 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %8, align 8
  %35 = icmp ne %struct.FS_QENTRY* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32, i32* @FS_DEBUG_TXQ, align 4
  %38 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %6, align 8
  %39 = ptrtoint %struct.FS_QENTRY* %38 to i32
  %40 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %8, align 8
  %41 = call i32 (i32, i8*, i32, ...) @fs_dprintk(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %39, %struct.FS_QENTRY* %40)
  br label %42

42:                                               ; preds = %36, %28
  %43 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %44 = load %struct.queue*, %struct.queue** %5, align 8
  %45 = getelementptr inbounds %struct.queue, %struct.queue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @Q_WP(i32 %46)
  %48 = load i32, i32* @Q_INCWRAP, align 4
  %49 = call i32 @write_fs(%struct.fs_dev* %43, i32 %47, i32 %48)
  %50 = load i32, i32* @submit_qentry.c, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @submit_qentry.c, align 4
  %52 = srem i32 %50, 100
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %42
  %55 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %56 = load %struct.queue*, %struct.queue** %5, align 8
  %57 = getelementptr inbounds %struct.queue, %struct.queue* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @Q_RP(i32 %58)
  %60 = call i32 @read_fs(%struct.fs_dev* %55, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.fs_dev*, %struct.fs_dev** %4, align 8
  %62 = load %struct.queue*, %struct.queue** %5, align 8
  %63 = getelementptr inbounds %struct.queue, %struct.queue* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Q_WP(i32 %64)
  %66 = call i32 @read_fs(%struct.fs_dev* %61, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @FS_DEBUG_TXQ, align 4
  %68 = load %struct.queue*, %struct.queue** %5, align 8
  %69 = getelementptr inbounds %struct.queue, %struct.queue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i32 (i32, i8*, i32, ...) @fs_dprintk(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %54, %42
  ret void
}

declare dso_local i32 @read_fs(%struct.fs_dev*, i32) #1

declare dso_local i32 @Q_WP(i32) #1

declare dso_local i32 @fs_dprintk(i32, i8*, i32, ...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local %struct.FS_QENTRY* @bus_to_virt(i32) #1

declare dso_local i32 @write_fs(%struct.fs_dev*, i32, i32) #1

declare dso_local i32 @Q_RP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
