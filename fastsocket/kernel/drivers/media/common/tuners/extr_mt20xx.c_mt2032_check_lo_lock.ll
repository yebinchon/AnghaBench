; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_check_lo_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_check_lo_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.microtune_priv* }
%struct.microtune_priv = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"mt2032 Reg.E=0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mt2032: pll wait 1ms for lock (0x%2x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt2032_check_lo_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2032_check_lo_lock(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.microtune_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  store %struct.microtune_priv* %9, %struct.microtune_priv** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 14, i8* %14, align 1
  %15 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %16 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %18 = call i32 @tuner_i2c_xfer_send(i32* %16, i8* %17, i32 1)
  %19 = load %struct.microtune_priv*, %struct.microtune_priv** %3, align 8
  %20 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %22 = call i32 @tuner_i2c_xfer_recv(i32* %20, i8* %21, i32 1)
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @tuner_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 zeroext %24)
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 6
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  br label %41

33:                                               ; preds = %13
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @tuner_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %35)
  %37 = call i32 @udelay(i32 1000)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %10

41:                                               ; preds = %32, %10
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i8*, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
