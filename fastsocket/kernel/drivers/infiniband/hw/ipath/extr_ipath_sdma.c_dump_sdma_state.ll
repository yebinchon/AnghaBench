; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_dump_sdma_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_dump_sdma_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"kr_senddmastatus: 0x%016lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"kr_sendctrl: 0x%016lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"kr_senddmabufmask0: 0x%016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"kr_senddmabufmask1: 0x%016lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"kr_senddmabufmask2: 0x%016lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"kr_senddmatail: 0x%016lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"kr_senddmahead: 0x%016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @dump_sdma_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_sdma_state(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %4 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %5 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %4, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @VERBOSE, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @ipath_cdbg(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %14, i32 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i32, i32* @VERBOSE, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @ipath_cdbg(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %24, i32 %29)
  store i64 %30, i64* %3, align 8
  %31 = load i32, i32* @VERBOSE, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @ipath_cdbg(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %35 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %36 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %34, i32 %39)
  store i64 %40, i64* %3, align 8
  %41 = load i32, i32* @VERBOSE, align 4
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @ipath_cdbg(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %45 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %44, i32 %49)
  store i64 %50, i64* %3, align 8
  %51 = load i32, i32* @VERBOSE, align 4
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @ipath_cdbg(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %54, i32 %59)
  store i64 %60, i64* %3, align 8
  %61 = load i32, i32* @VERBOSE, align 4
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @ipath_cdbg(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %62)
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %65 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %66 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ipath_read_kreg64(%struct.ipath_devdata* %64, i32 %69)
  store i64 %70, i64* %3, align 8
  %71 = load i32, i32* @VERBOSE, align 4
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @ipath_cdbg(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %72)
  ret void
}

declare dso_local i64 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
