; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_diag.c_ipath_diag_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_diag.c_ipath_diag_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32 }

@diagpkt_count = common dso_local global i32 0, align 4
@IPATH_DIAGPKT_MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ipath_diagpkt\00", align 1
@diagpkt_file_ops = common dso_local global i32 0, align 4
@diagpkt_cdev = common dso_local global i32 0, align 4
@diagpkt_dev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't create ipath_diagpkt device: %d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ipath_diag%d\00", align 1
@IPATH_DIAG_MINOR_BASE = common dso_local global i32 0, align 4
@diag_file_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Couldn't create %s device: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_diag_add(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @atomic_inc_return(i32* @diagpkt_count)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @IPATH_DIAGPKT_MINOR, align 4
  %9 = call i32 @ipath_cdev_init(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* @diagpkt_file_ops, i32* @diagpkt_cdev, i32* @diagpkt_dev)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %42

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %20 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snprintf(i8* %18, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @IPATH_DIAG_MINOR_BASE, align 4
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %29, i32 0, i32 2
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 1
  %33 = call i32 @ipath_cdev_init(i32 %27, i8* %28, i32* @diag_file_ops, i32* %30, i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %17
  %37 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %17
  br label %42

42:                                               ; preds = %41, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @ipath_cdev_init(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
