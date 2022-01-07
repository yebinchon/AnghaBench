; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_adr_rev_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_adr_rev_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.osst_tape = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @osst_adr_rev_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osst_adr_rev_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.osst_tape*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i64 @dev_get_drvdata(%struct.device* %9)
  %11 = inttoptr i64 %10 to %struct.osst_tape*
  store %struct.osst_tape* %11, %struct.osst_tape** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %13 = icmp ne %struct.osst_tape* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %16 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %21 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %28 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.osst_tape*, %struct.osst_tape** %7, align 8
  %33 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %24, %19, %14, %3
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i64 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
