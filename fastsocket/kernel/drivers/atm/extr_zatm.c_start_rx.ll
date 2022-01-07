; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_start_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.zatm_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"start_rx\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uPD98401_VRR = common dso_local global i32 0, align 4
@ZATM_LAST_POOL = common dso_local global i32 0, align 4
@LOW_MARK = common dso_local global i32 0, align 4
@HIGH_MARK = common dso_local global i32 0, align 4
@OFF_CNG_THRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*)* @start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_rx(%struct.atm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca %struct.zatm_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  %7 = call i32 @DPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %9 = call %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev* %8)
  store %struct.zatm_dev* %9, %struct.zatm_dev** %4, align 8
  %10 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %11 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @kzalloc(i32 %16, i32 %17)
  %19 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %20 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %22 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %113

28:                                               ; preds = %1
  %29 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %30 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %31 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @uPD98401_VRR, align 4
  %37 = call i32 @zpokel(%struct.zatm_dev* %29, i32 %35, i32 %36)
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %109, %28
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ZATM_LAST_POOL, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %112

42:                                               ; preds = %38
  %43 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %44 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %51 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %58 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @LOW_MARK, align 4
  %65 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %66 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  store i32 %64, i32* %71, align 4
  %72 = load i32, i32* @HIGH_MARK, align 4
  %73 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %74 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  store i32 %72, i32* %79, align 8
  %80 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %81 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %88 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %95 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* @OFF_CNG_THRES, align 4
  %102 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %103 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %101, i32* %108, align 8
  br label %109

109:                                              ; preds = %42
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %38

112:                                              ; preds = %38
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %25
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @zpokel(%struct.zatm_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
