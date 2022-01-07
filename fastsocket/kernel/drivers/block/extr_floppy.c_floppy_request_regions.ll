; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_request_regions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_request_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_region = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@io_regions = common dso_local global %struct.io_region* null, align 8
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"floppy\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Floppy io-port 0x%04lx in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @floppy_request_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @floppy_request_regions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_region*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.io_region*, %struct.io_region** @io_regions, align 8
  store %struct.io_region* %5, %struct.io_region** %4, align 8
  br label %6

6:                                                ; preds = %39, %1
  %7 = load %struct.io_region*, %struct.io_region** %4, align 8
  %8 = load %struct.io_region*, %struct.io_region** @io_regions, align 8
  %9 = call %struct.io_region* @ARRAY_END(%struct.io_region* %8)
  %10 = icmp ult %struct.io_region* %7, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.io_region*, %struct.io_region** %4, align 8
  %16 = getelementptr inbounds %struct.io_region, %struct.io_region* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.io_region*, %struct.io_region** %4, align 8
  %20 = getelementptr inbounds %struct.io_region, %struct.io_region* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @request_region(i64 %18, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %11
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.io_region*, %struct.io_region** %4, align 8
  %29 = getelementptr inbounds %struct.io_region, %struct.io_region* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @DPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.io_region*, %struct.io_region** %4, align 8
  %35 = call i32 @floppy_release_allocated_regions(i32 %33, %struct.io_region* %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %11
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.io_region*, %struct.io_region** %4, align 8
  %41 = getelementptr inbounds %struct.io_region, %struct.io_region* %40, i32 1
  store %struct.io_region* %41, %struct.io_region** %4, align 8
  br label %6

42:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.io_region* @ARRAY_END(%struct.io_region*) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local i32 @floppy_release_allocated_regions(i32, %struct.io_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
