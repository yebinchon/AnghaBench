; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_diag_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_diag_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32 }

@diagpkt_count = common dso_local global i32 0, align 4
@QIB_DIAGPKT_MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ipath_diagpkt\00", align 1
@diagpkt_file_ops = common dso_local global i32 0, align 4
@diagpkt_cdev = common dso_local global i32 0, align 4
@diagpkt_device = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ipath_diag%d\00", align 1
@QIB_DIAG_MINOR_BASE = common dso_local global i32 0, align 4
@diag_file_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_diag_add(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @atomic_inc_return(i32* @diagpkt_count)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @QIB_DIAGPKT_MINOR, align 4
  %9 = call i32 @qib_cdev_init(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* @diagpkt_file_ops, i32* @diagpkt_cdev, i32* @diagpkt_device)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %31

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snprintf(i8* %15, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @QIB_DIAG_MINOR_BASE, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 2
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 1
  %30 = call i32 @qib_cdev_init(i32 %24, i8* %25, i32* @diag_file_ops, i32* %27, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %14, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @qib_cdev_init(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
