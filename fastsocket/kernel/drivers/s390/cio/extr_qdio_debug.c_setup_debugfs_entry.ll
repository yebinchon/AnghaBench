; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_debug.c_setup_debugfs_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_debug.c_setup_debugfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ccw_device = type { i32 }

@QDIO_DEBUGFS_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@debugfs_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, %struct.ccw_device*)* @setup_debugfs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_debugfs_entry(%struct.qdio_q* %0, %struct.ccw_device* %1) #0 {
  %3 = alloca %struct.qdio_q*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %3, align 8
  store %struct.ccw_device* %1, %struct.ccw_device** %4, align 8
  %7 = load i32, i32* @QDIO_DEBUGFS_NAME_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @QDIO_DEBUGFS_NAME_LEN, align 4
  %12 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %13 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %18 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %19 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20)
  %22 = load i32, i32* @S_IFREG, align 4
  %23 = load i32, i32* @S_IRUGO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @S_IWUSR, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %28 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %33 = call i32* @debugfs_create_file(i8* %10, i32 %26, i32 %31, %struct.qdio_q* %32, i32* @debugfs_fops)
  %34 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %35 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %37 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %43 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %2
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32* @debugfs_create_file(i8*, i32, i32, %struct.qdio_q*, i32*) #2

declare dso_local i64 @IS_ERR(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
