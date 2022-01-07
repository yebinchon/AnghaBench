; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_wait_linkstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_wait_linkstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ipath_state_wait = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Didn't reach linkstate %s within %u ms\0A\00", align 1
@IPATH_LINKINIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@IPATH_LINKDOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@IPATH_LINKARMED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ARM\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ibcc=%llx ibcstatus=%llx (%s)\0A\00", align 1
@ipath_ibcstatus_str = common dso_local global i32* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_wait_linkstate(%struct.ipath_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipath_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %10 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @ipath_state_wait, align 4
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %13 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @msecs_to_jiffies(i32 %17)
  %19 = call i32 @wait_event_interruptible_timeout(i32 %11, i32 %16, i32 %18)
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %79, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @VERBOSE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IPATH_LINKINIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %50

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IPATH_LINKDOWN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %48

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IPATH_LINKARMED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  br label %48

48:                                               ; preds = %41, %40
  %49 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %40 ], [ %47, %41 ]
  br label %50

50:                                               ; preds = %48, %34
  %51 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %34 ], [ %49, %48 ]
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i32, i8*, ...) @ipath_cdbg(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %52)
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %54, i32 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* @VERBOSE, align 4
  %62 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %63 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %64 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %62, i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = load i32*, i32** @ipath_ibcstatus_str, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %73 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = and i64 %71, %74
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @ipath_cdbg(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %68, i64 %69, i32 %77)
  br label %79

79:                                               ; preds = %50, %3
  %80 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %81 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  br label %90

90:                                               ; preds = %87, %86
  %91 = phi i32 [ 0, %86 ], [ %89, %87 ]
  ret i32 %91
}

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, ...) #1

declare dso_local i64 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
