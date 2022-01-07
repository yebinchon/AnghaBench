; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_store_algo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_store_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cx_dev = type { %struct.mbcs_soft* }
%struct.mbcs_soft = type { i32, i32 }

@ERESTARTSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_algo(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cx_dev*, align 8
  %12 = alloca %struct.mbcs_soft*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.cx_dev* @to_cx_dev(%struct.device* %13)
  store %struct.cx_dev* %14, %struct.cx_dev** %11, align 8
  %15 = load %struct.cx_dev*, %struct.cx_dev** %11, align 8
  %16 = getelementptr inbounds %struct.cx_dev, %struct.cx_dev* %15, i32 0, i32 0
  %17 = load %struct.mbcs_soft*, %struct.mbcs_soft** %16, align 8
  store %struct.mbcs_soft* %17, %struct.mbcs_soft** %12, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ule i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %43

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @simple_strtoul(i8* %22, i32* null, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.mbcs_soft*, %struct.mbcs_soft** %12, align 8
  %28 = call i32 @mbcs_algo_start(%struct.mbcs_soft* %27)
  %29 = load %struct.mbcs_soft*, %struct.mbcs_soft** %12, align 8
  %30 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mbcs_soft*, %struct.mbcs_soft** %12, align 8
  %33 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %32, i32 0, i32 0
  %34 = call i32 @atomic_read(i32* %33)
  %35 = call i64 @wait_event_interruptible(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i64, i64* @ERESTARTSYS, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %43

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %41, %37, %20
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local %struct.cx_dev* @to_cx_dev(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mbcs_algo_start(%struct.mbcs_soft*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
