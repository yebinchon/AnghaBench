; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_sdma_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_sdma_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ipath_debug = common dso_local global i32 0, align 4
@__IPATH_DBG = common dso_local global i32 0, align 4
@INFINIPATH_E_SDMAERRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"errors %lx (%s)\0A\00", align 1
@__IPATH_VERBDBG = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"sdma tl 0x%lx hd 0x%lx status 0x%lx lengen 0x%lx\0A\00", align 1
@IPATH_SDMA_DISABLED = common dso_local global i32 0, align 4
@IPATH_SDMA_ABORTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, i32)* @handle_sdma_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sdma_errors(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @ipath_debug, align 4
  %13 = load i32, i32* @__IPATH_DBG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @INFINIPATH_E_SDMAERRS, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @ipath_decode_err(%struct.ipath_devdata* %17, i8* %18, i32 128, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %26 = call i32 @ipath_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %24, i8* %25)
  br label %27

27:                                               ; preds = %16, %2
  %28 = load i32, i32* @ipath_debug, align 4
  %29 = load i32, i32* @__IPATH_VERBDBG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %27
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %33, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %41 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %42 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %40, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %48 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %49 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %47, i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %54, i32 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i32, i32* @VERBOSE, align 4
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @ipath_cdbg(i32 %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %63, i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %32, %27
  %68 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %69 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %68, i32 0, i32 0
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load i32, i32* @IPATH_SDMA_DISABLED, align 4
  %73 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %74 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %73, i32 0, i32 1
  %75 = call i32 @__set_bit(i32 %72, i32* %74)
  %76 = load i32, i32* @IPATH_SDMA_ABORTING, align 4
  %77 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %78 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %77, i32 0, i32 1
  %79 = call i32 @test_bit(i32 %76, i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %81 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %80, i32 0, i32 0
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %67
  %87 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %88 = call i32 @ipath_cancel_sends(%struct.ipath_devdata* %87, i32 1)
  br label %89

89:                                               ; preds = %86, %67
  ret void
}

declare dso_local i32 @ipath_decode_err(%struct.ipath_devdata*, i8*, i32, i32) #1

declare dso_local i32 @ipath_dbg(i8*, i64, i8*) #1

declare dso_local i64 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipath_cancel_sends(%struct.ipath_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
