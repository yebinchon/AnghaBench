; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_strt_out_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_strt_out_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.claw_privbk = type { %struct.ccwbk*, %struct.chbk* }
%struct.ccwbk = type { i32 }
%struct.chbk = type { i64, i32, i32 }

@WRITE = common dso_local global i64 0, align 8
@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"strt_io\00", align 1
@CLAW_STOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"StWrtIO\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @claw_strt_out_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claw_strt_out_IO(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.claw_privbk*, align 8
  %6 = alloca %struct.chbk*, align 8
  %7 = alloca %struct.ccwbk*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %67

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.claw_privbk*
  store %struct.claw_privbk* %15, %struct.claw_privbk** %5, align 8
  %16 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %17 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %16, i32 0, i32 1
  %18 = load %struct.chbk*, %struct.chbk** %17, align 8
  %19 = load i64, i64* @WRITE, align 8
  %20 = getelementptr inbounds %struct.chbk, %struct.chbk* %18, i64 %19
  store %struct.chbk* %20, %struct.chbk** %6, align 8
  %21 = load i32, i32* @trace, align 4
  %22 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %24 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %23, i32 0, i32 0
  %25 = load %struct.ccwbk*, %struct.ccwbk** %24, align 8
  store %struct.ccwbk* %25, %struct.ccwbk** %7, align 8
  %26 = load %struct.chbk*, %struct.chbk** %6, align 8
  %27 = getelementptr inbounds %struct.chbk, %struct.chbk* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CLAW_STOP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %11
  br label %67

32:                                               ; preds = %11
  %33 = load %struct.ccwbk*, %struct.ccwbk** %7, align 8
  %34 = icmp eq %struct.ccwbk* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %67

36:                                               ; preds = %32
  %37 = load %struct.chbk*, %struct.chbk** %6, align 8
  %38 = getelementptr inbounds %struct.chbk, %struct.chbk* %37, i32 0, i32 2
  %39 = bitcast i32* %38 to i8*
  %40 = call i64 @test_and_set_bit(i32 0, i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load %struct.chbk*, %struct.chbk** %6, align 8
  %44 = ptrtoint %struct.chbk* %43 to i64
  store i64 %44, i64* %4, align 8
  %45 = load i32, i32* @trace, align 4
  %46 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.chbk*, %struct.chbk** %6, align 8
  %48 = getelementptr inbounds %struct.chbk, %struct.chbk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ccwbk*, %struct.ccwbk** %7, align 8
  %51 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %50, i32 0, i32 0
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @ccw_device_start(i32 %49, i32* %51, i64 %52, i32 255, i32 0)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = load %struct.chbk*, %struct.chbk** %6, align 8
  %58 = getelementptr inbounds %struct.chbk, %struct.chbk* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @ccw_check_return_code(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %42
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i32, i32* @jiffies, align 4
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %35, %31, %10
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @ccw_device_start(i32, i32*, i64, i32, i32) #1

declare dso_local i32 @ccw_check_return_code(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
