; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_strt_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_strt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.claw_privbk* }
%struct.claw_privbk = type { %struct.ccwbk*, %struct.TYPE_5__*, i64, %struct.chbk* }
%struct.ccwbk = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.chbk = type { i32, i32 }
%struct.clawh = type { i32 }

@READ = common dso_local global i64 0, align 8
@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"StRdNter\00", align 1
@CLAW_IDLE = common dso_local global i32 0, align 4
@CLAW_PENDING = common dso_local global i64 0, align 8
@CLAW_BUSY = common dso_local global i32 0, align 4
@LOCK_YES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"HotRead\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ReadAct\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"StRdExit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @claw_strt_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claw_strt_read(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.claw_privbk*, align 8
  %9 = alloca %struct.ccwbk*, align 8
  %10 = alloca %struct.chbk*, align 8
  %11 = alloca %struct.clawh*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.claw_privbk*, %struct.claw_privbk** %13, align 8
  store %struct.claw_privbk* %14, %struct.claw_privbk** %8, align 8
  %15 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %16 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %15, i32 0, i32 3
  %17 = load %struct.chbk*, %struct.chbk** %16, align 8
  %18 = load i64, i64* @READ, align 8
  %19 = getelementptr inbounds %struct.chbk, %struct.chbk* %17, i64 %18
  store %struct.chbk* %19, %struct.chbk** %10, align 8
  %20 = load i32, i32* @trace, align 4
  %21 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %23 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.clawh*
  store %struct.clawh* %25, %struct.clawh** %11, align 8
  %26 = load i32, i32* @CLAW_IDLE, align 4
  %27 = load %struct.clawh*, %struct.clawh** %11, align 8
  %28 = getelementptr inbounds %struct.clawh, %struct.clawh* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %30 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %35 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CLAW_PENDING, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %33, %2
  %43 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %44 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %43, i32 0, i32 0
  %45 = load %struct.ccwbk*, %struct.ccwbk** %44, align 8
  %46 = icmp ne %struct.ccwbk* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %49 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %48, i32 0, i32 0
  %50 = load %struct.ccwbk*, %struct.ccwbk** %49, align 8
  %51 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CLAW_PENDING, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47, %33
  %57 = load i32, i32* @CLAW_BUSY, align 4
  %58 = load %struct.clawh*, %struct.clawh** %11, align 8
  %59 = getelementptr inbounds %struct.clawh, %struct.clawh* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %47, %42
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @LOCK_YES, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.chbk*, %struct.chbk** %10, align 8
  %66 = getelementptr inbounds %struct.chbk, %struct.chbk* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @get_ccwdev_lock(i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_lock_irqsave(i32 %68, i64 %69)
  br label %71

71:                                               ; preds = %64, %60
  %72 = load %struct.chbk*, %struct.chbk** %10, align 8
  %73 = getelementptr inbounds %struct.chbk, %struct.chbk* %72, i32 0, i32 1
  %74 = bitcast i32* %73 to i8*
  %75 = call i64 @test_and_set_bit(i32 0, i8* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load i32, i32* @trace, align 4
  %79 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %81 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %80, i32 0, i32 0
  %82 = load %struct.ccwbk*, %struct.ccwbk** %81, align 8
  store %struct.ccwbk* %82, %struct.ccwbk** %9, align 8
  %83 = load %struct.chbk*, %struct.chbk** %10, align 8
  %84 = ptrtoint %struct.chbk* %83 to i64
  store i64 %84, i64* %6, align 8
  %85 = load %struct.chbk*, %struct.chbk** %10, align 8
  %86 = getelementptr inbounds %struct.chbk, %struct.chbk* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ccwbk*, %struct.ccwbk** %9, align 8
  %89 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %88, i32 0, i32 0
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @ccw_device_start(i32 %87, i32* %89, i64 %90, i32 255, i32 0)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %77
  %95 = load %struct.chbk*, %struct.chbk** %10, align 8
  %96 = getelementptr inbounds %struct.chbk, %struct.chbk* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ccw_check_return_code(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %77
  br label %104

101:                                              ; preds = %71
  %102 = load i32, i32* @trace, align 4
  %103 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %100
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @LOCK_YES, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.chbk*, %struct.chbk** %10, align 8
  %110 = getelementptr inbounds %struct.chbk, %struct.chbk* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @get_ccwdev_lock(i32 %111)
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %108, %104
  %116 = load i32, i32* @trace, align 4
  %117 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @ccw_device_start(i32, i32*, i64, i32, i32) #1

declare dso_local i32 @ccw_check_return_code(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
