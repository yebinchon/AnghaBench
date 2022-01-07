; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_define_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_define_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i64, i32 }
%struct.DE_fba_data = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DASD_FBA_CCW_DEFINE_EXTENT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw1*, %struct.DE_fba_data*, i32, i32, i32, i32)* @define_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_extent(%struct.ccw1* %0, %struct.DE_fba_data* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca %struct.DE_fba_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %7, align 8
  store %struct.DE_fba_data* %1, %struct.DE_fba_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @DASD_FBA_CCW_DEFINE_EXTENT, align 4
  %14 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %15 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %17 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %19 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %18, i32 0, i32 0
  store i32 16, i32* %19, align 8
  %20 = load %struct.DE_fba_data*, %struct.DE_fba_data** %8, align 8
  %21 = call i64 @__pa(%struct.DE_fba_data* %20)
  %22 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %23 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.DE_fba_data*, %struct.DE_fba_data** %8, align 8
  %25 = call i32 @memset(%struct.DE_fba_data* %24, i32 0, i32 16)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @WRITE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load %struct.DE_fba_data*, %struct.DE_fba_data** %8, align 8
  %31 = getelementptr inbounds %struct.DE_fba_data, %struct.DE_fba_data* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %46

33:                                               ; preds = %6
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @READ, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.DE_fba_data*, %struct.DE_fba_data** %8, align 8
  %39 = getelementptr inbounds %struct.DE_fba_data, %struct.DE_fba_data* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.DE_fba_data*, %struct.DE_fba_data** %8, align 8
  %43 = getelementptr inbounds %struct.DE_fba_data, %struct.DE_fba_data* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 2, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.DE_fba_data*, %struct.DE_fba_data** %8, align 8
  %49 = getelementptr inbounds %struct.DE_fba_data, %struct.DE_fba_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.DE_fba_data*, %struct.DE_fba_data** %8, align 8
  %52 = getelementptr inbounds %struct.DE_fba_data, %struct.DE_fba_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.DE_fba_data*, %struct.DE_fba_data** %8, align 8
  %56 = getelementptr inbounds %struct.DE_fba_data, %struct.DE_fba_data* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i64 @__pa(%struct.DE_fba_data*) #1

declare dso_local i32 @memset(%struct.DE_fba_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
