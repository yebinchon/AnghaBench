; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_srst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_srst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@MB86A16_RESET = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*)* @srst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srst(%struct.mb86a16_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mb86a16_state*, align 8
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %3, align 8
  %4 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %5 = load i32, i32* @MB86A16_RESET, align 4
  %6 = call i64 @mb86a16_write(%struct.mb86a16_state* %4, i32 %5, i32 4)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

10:                                               ; preds = %8
  %11 = load i32, i32* @verbose, align 4
  %12 = load i32, i32* @MB86A16_ERROR, align 4
  %13 = call i32 @dprintk(i32 %11, i32 %12, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EREMOTEIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @mb86a16_write(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
