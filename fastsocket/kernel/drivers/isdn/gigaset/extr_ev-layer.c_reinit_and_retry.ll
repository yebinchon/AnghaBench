; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_reinit_and_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_reinit_and_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Could not enter cid mode. Reinit device and try again.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Could not get a call id. Reinit device and try again.\0A\00", align 1
@PC_CID = common dso_local global i32 0, align 4
@MS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32)* @reinit_and_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinit_and_retry(%struct.cardstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %33, %13
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %17 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %22 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %64

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %60

44:                                               ; preds = %36
  %45 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %46 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_warn(i32 %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @PC_CID, align 4
  %50 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %51 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %49
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %44, %39
  %61 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %62 = load i32, i32* @MS_INIT, align 4
  %63 = call i32 @schedule_init(%struct.cardstate* %61, i32 %62)
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %31, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @schedule_init(%struct.cardstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
