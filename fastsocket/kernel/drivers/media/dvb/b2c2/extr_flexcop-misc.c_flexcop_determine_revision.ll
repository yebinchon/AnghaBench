; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-misc.c_flexcop_determine_revision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-misc.c_flexcop_determine_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32, i32, i64 (%struct.flexcop_device*, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@misc_204 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"found a FlexCopII.\0A\00", align 1
@FLEXCOP_II = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"found a FlexCopIIb.\0A\00", align 1
@FLEXCOP_IIB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"found a FlexCopIII.\0A\00", align 1
@FLEXCOP_III = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"unknown FlexCop Revision: %x. Please report this to linux-dvb@linuxtv.org.\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"this FlexCop has the additional 32 hardware pid filter.\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"this FlexCop has the 6 basic main hardware pid filter.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flexcop_determine_revision(%struct.flexcop_device* %0) #0 {
  %2 = alloca %struct.flexcop_device*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %2, align 8
  %4 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %5 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %4, i32 0, i32 2
  %6 = load i64 (%struct.flexcop_device*, i32)*, i64 (%struct.flexcop_device*, i32)** %5, align 8
  %7 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %8 = load i32, i32* @misc_204, align 4
  %9 = call i64 %6(%struct.flexcop_device* %7, i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %11 = bitcast %struct.TYPE_4__* %10 to i64*
  store i64 %9, i64* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %30 [
    i32 2, label %15
    i32 3, label %20
    i32 0, label %25
  ]

15:                                               ; preds = %1
  %16 = call i32 @deb_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @FLEXCOP_II, align 4
  %18 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %19 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %35

20:                                               ; preds = %1
  %21 = call i32 @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @FLEXCOP_IIB, align 4
  %23 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %24 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %35

25:                                               ; preds = %1
  %26 = call i32 @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @FLEXCOP_III, align 4
  %28 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %29 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %35

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %25, %20, %15
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %40 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = icmp ne i32 %38, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @deb_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %46

44:                                               ; preds = %35
  %45 = call i32 @deb_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  ret void
}

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
