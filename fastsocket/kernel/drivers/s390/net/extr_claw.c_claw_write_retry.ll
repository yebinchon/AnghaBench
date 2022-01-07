; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_write_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_write_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chbk = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"w_retry\00", align 1
@CLAW_STOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"rtry_xit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chbk*)* @claw_write_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claw_write_retry(%struct.chbk* %0) #0 {
  %2 = alloca %struct.chbk*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.chbk* %0, %struct.chbk** %2, align 8
  %4 = load %struct.chbk*, %struct.chbk** %2, align 8
  %5 = getelementptr inbounds %struct.chbk, %struct.chbk* %4, i32 0, i32 1
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load i32, i32* @trace, align 4
  %8 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.chbk*, %struct.chbk** %2, align 8
  %10 = getelementptr inbounds %struct.chbk, %struct.chbk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CLAW_STOP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @claw_strt_out_IO(%struct.net_device* %16)
  %18 = load i32, i32* @trace, align 4
  %19 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @claw_strt_out_IO(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
