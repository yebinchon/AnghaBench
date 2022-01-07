; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/idle/extr_i7300_idle.c_i7300_idle_ioat_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/idle/extr_i7300_idle.c_i7300_idle_ioat_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STOP_RETRIES = common dso_local global i32 0, align 4
@IOAT_CHANCMD_RESET = common dso_local global i32 0, align 4
@ioat_chanbase = common dso_local global i64 0, align 8
@IOAT1_CHANCMD_OFFSET = common dso_local global i64 0, align 8
@IOAT1_CHANSTS_OFFSET = common dso_local global i64 0, align 8
@IOAT_CHANSTS_STATUS = common dso_local global i32 0, align 4
@IOAT_CHANSTS_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to stop I/O AT after %d retries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i7300_idle_ioat_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i7300_idle_ioat_stop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %25, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_STOP_RETRIES, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = load i32, i32* @IOAT_CHANCMD_RESET, align 4
  %9 = load i64, i64* @ioat_chanbase, align 8
  %10 = load i64, i64* @IOAT1_CHANCMD_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writeb(i32 %8, i64 %11)
  %13 = call i32 @udelay(i32 10)
  %14 = load i64, i64* @ioat_chanbase, align 8
  %15 = load i64, i64* @IOAT1_CHANSTS_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readq(i64 %16)
  %18 = load i32, i32* @IOAT_CHANSTS_STATUS, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @IOAT_CHANSTS_ACTIVE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  br label %28

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %3

28:                                               ; preds = %23, %3
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @MAX_STOP_RETRIES, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @MAX_STOP_RETRIES, align 4
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
