; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_locate_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_locate_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw1 = type { i32, i64, i64, i32 }
%struct.LO_fba_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DASD_FBA_CCW_LOCATE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw1*, %struct.LO_fba_data*, i32, i32, i32)* @locate_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locate_record(%struct.ccw1* %0, %struct.LO_fba_data* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ccw1*, align 8
  %7 = alloca %struct.LO_fba_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ccw1* %0, %struct.ccw1** %6, align 8
  store %struct.LO_fba_data* %1, %struct.LO_fba_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @DASD_FBA_CCW_LOCATE, align 4
  %12 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %13 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %15 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %17 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %16, i32 0, i32 0
  store i32 8, i32* %17, align 8
  %18 = load %struct.LO_fba_data*, %struct.LO_fba_data** %7, align 8
  %19 = call i64 @__pa(%struct.LO_fba_data* %18)
  %20 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %21 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.LO_fba_data*, %struct.LO_fba_data** %7, align 8
  %23 = call i32 @memset(%struct.LO_fba_data* %22, i32 0, i32 12)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @WRITE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.LO_fba_data*, %struct.LO_fba_data** %7, align 8
  %29 = getelementptr inbounds %struct.LO_fba_data, %struct.LO_fba_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 5, i32* %30, align 4
  br label %44

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @READ, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.LO_fba_data*, %struct.LO_fba_data** %7, align 8
  %37 = getelementptr inbounds %struct.LO_fba_data, %struct.LO_fba_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 6, i32* %38, align 4
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.LO_fba_data*, %struct.LO_fba_data** %7, align 8
  %41 = getelementptr inbounds %struct.LO_fba_data, %struct.LO_fba_data* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 8, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.LO_fba_data*, %struct.LO_fba_data** %7, align 8
  %47 = getelementptr inbounds %struct.LO_fba_data, %struct.LO_fba_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.LO_fba_data*, %struct.LO_fba_data** %7, align 8
  %50 = getelementptr inbounds %struct.LO_fba_data, %struct.LO_fba_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i64 @__pa(%struct.LO_fba_data*) #1

declare dso_local i32 @memset(%struct.LO_fba_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
