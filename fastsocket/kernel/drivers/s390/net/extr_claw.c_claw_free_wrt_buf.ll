; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_free_wrt_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_free_wrt_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.claw_privbk = type { i64, %struct.ccwbk*, %struct.ccwbk*, %struct.TYPE_6__, %struct.ccwbk* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ccwbk = type { %struct.TYPE_5__, %struct.ccwbk*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"freewrtb\00", align 1
@CLAW_PENDING = common dso_local global i64 0, align 8
@TB_NOBUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"FWC=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @claw_free_wrt_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claw_free_wrt_buf(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.claw_privbk*, align 8
  %4 = alloca %struct.ccwbk*, align 8
  %5 = alloca %struct.ccwbk*, align 8
  %6 = alloca %struct.ccwbk*, align 8
  %7 = alloca %struct.ccwbk*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.claw_privbk*
  store %struct.claw_privbk* %11, %struct.claw_privbk** %3, align 8
  %12 = load i32, i32* @trace, align 4
  %13 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.ccwbk* null, %struct.ccwbk** %4, align 8
  store %struct.ccwbk* null, %struct.ccwbk** %5, align 8
  %14 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %15 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %14, i32 0, i32 2
  %16 = load %struct.ccwbk*, %struct.ccwbk** %15, align 8
  store %struct.ccwbk* %16, %struct.ccwbk** %6, align 8
  br label %17

17:                                               ; preds = %97, %1
  %18 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %19 = icmp ne %struct.ccwbk* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %22 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CLAW_PENDING, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi i1 [ false, %17 ], [ %26, %20 ]
  br i1 %28, label %29, label %98

29:                                               ; preds = %27
  %30 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %31 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %30, i32 0, i32 1
  %32 = load %struct.ccwbk*, %struct.ccwbk** %31, align 8
  store %struct.ccwbk* %32, %struct.ccwbk** %7, align 8
  %33 = load %struct.ccwbk*, %struct.ccwbk** %7, align 8
  %34 = icmp ne %struct.ccwbk* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.ccwbk*, %struct.ccwbk** %7, align 8
  %37 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CLAW_PENDING, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %44 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %45 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %44, i32 0, i32 1
  %46 = load %struct.ccwbk*, %struct.ccwbk** %45, align 8
  %47 = icmp eq %struct.ccwbk* %43, %46
  br i1 %47, label %48, label %96

48:                                               ; preds = %42
  %49 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %50 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CLAW_PENDING, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %48, %35
  %56 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %57 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %56, i32 0, i32 1
  %58 = load %struct.ccwbk*, %struct.ccwbk** %57, align 8
  %59 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %60 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %59, i32 0, i32 2
  store %struct.ccwbk* %58, %struct.ccwbk** %60, align 8
  %61 = load i64, i64* @CLAW_PENDING, align 8
  %62 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %63 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %66 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %65, i32 0, i32 4
  %67 = load %struct.ccwbk*, %struct.ccwbk** %66, align 8
  %68 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %69 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %68, i32 0, i32 1
  store %struct.ccwbk* %67, %struct.ccwbk** %69, align 8
  %70 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %71 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %72 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %71, i32 0, i32 4
  store %struct.ccwbk* %70, %struct.ccwbk** %72, align 8
  %73 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %74 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %78 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %82 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %80
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %89 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %88, i32 0, i32 2
  %90 = load %struct.ccwbk*, %struct.ccwbk** %89, align 8
  store %struct.ccwbk* %90, %struct.ccwbk** %6, align 8
  %91 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %92 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %97

96:                                               ; preds = %48, %42
  br label %98

97:                                               ; preds = %55
  br label %17

98:                                               ; preds = %96, %27
  %99 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %100 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @TB_NOBUFFER, align 4
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = call i32 @claw_clearbit_busy(i32 %104, %struct.net_device* %105)
  br label %107

107:                                              ; preds = %103, %98
  %108 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %109 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %108, i32 0, i32 2
  %110 = load %struct.ccwbk*, %struct.ccwbk** %109, align 8
  %111 = icmp eq %struct.ccwbk* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %114 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %113, i32 0, i32 1
  store %struct.ccwbk* null, %struct.ccwbk** %114, align 8
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* @trace, align 4
  %117 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %118 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @CLAW_DBF_TEXT_(i32 4, i32 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %119)
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @claw_clearbit_busy(i32, %struct.net_device*) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
