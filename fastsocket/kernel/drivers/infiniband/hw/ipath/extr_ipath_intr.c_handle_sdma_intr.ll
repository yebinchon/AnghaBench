; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_sdma_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_sdma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32 }

@INFINIPATH_I_SDMAINT = common dso_local global i32 0, align 4
@IPATH_SDMA_SHUTDOWN = common dso_local global i32 0, align 4
@INFINIPATH_I_SDMADISABLED = common dso_local global i32 0, align 4
@IPATH_SDMA_ABORTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s SDmaDisabled intr\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@IPATH_SDMA_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, i32)* @handle_sdma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sdma_intr(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @INFINIPATH_I_SDMAINT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* @IPATH_SDMA_SHUTDOWN, align 4
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %14 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %13, i32 0, i32 1
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %19 = call i32 @ipath_sdma_intr(%struct.ipath_devdata* %18)
  br label %20

20:                                               ; preds = %17, %11, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @INFINIPATH_I_SDMADISABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = load i32, i32* @IPATH_SDMA_ABORTING, align 4
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %28 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %27, i32 0, i32 1
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @ipath_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %35, i32 0, i32 2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* @IPATH_SDMA_DISABLED, align 4
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %41 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %40, i32 0, i32 1
  %42 = call i32 @__set_bit(i32 %39, i32* %41)
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %43, i32 0, i32 2
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %25
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %51 = call i32 @ipath_cancel_sends(%struct.ipath_devdata* %50, i32 1)
  br label %52

52:                                               ; preds = %49, %25
  %53 = load i32, i32* @IPATH_SDMA_SHUTDOWN, align 4
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %55 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %54, i32 0, i32 1
  %56 = call i32 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %60 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %59, i32 0, i32 0
  %61 = call i32 @tasklet_hi_schedule(i32* %60)
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62, %20
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ipath_sdma_intr(%struct.ipath_devdata*) #1

declare dso_local i32 @ipath_dbg(i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipath_cancel_sends(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
