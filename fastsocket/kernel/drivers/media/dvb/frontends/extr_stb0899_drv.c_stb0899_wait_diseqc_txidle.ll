; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_wait_diseqc_txidle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_wait_diseqc_txidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TXIDLE = common dso_local global i32 0, align 4
@STB0899_DISSTATUS = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"timed out!!\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*, i32)* @stb0899_wait_diseqc_txidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_wait_diseqc_txidle(%struct.stb0899_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stb0899_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %7, align 8
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* @TXIDLE, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @STB0899_GETFIELD(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %17 = load i32, i32* @STB0899_DISSTATUS, align 4
  %18 = call i32 @stb0899_read_reg(%struct.stb0899_state* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %27 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FE_ERROR, align 4
  %30 = call i32 @dprintk(i32 %28, i32 %29, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %15
  %34 = call i32 @msleep(i32 10)
  br label %9

35:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
