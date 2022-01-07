; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_optimize_vco.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_optimize_vco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.microtune_priv* }
%struct.microtune_priv = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"mt2032 Reg.F=0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mt2032 optimize_vco: sel=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @mt2032_optimize_vco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2032_optimize_vco(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.microtune_priv*, align 8
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.microtune_priv*, %struct.microtune_priv** %12, align 8
  store %struct.microtune_priv* %13, %struct.microtune_priv** %8, align 8
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 15, i8* %14, align 1
  %15 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %16 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %18 = call i32 @tuner_i2c_xfer_send(i32* %16, i8* %17, i32 1)
  %19 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %20 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %22 = call i32 @tuner_i2c_xfer_recv(i32* %20, i8* %21, i32 1)
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = call i32 @tuner_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 7
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %4, align 4
  br label %75

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %4, align 4
  br label %75

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %4, align 4
  br label %75

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48
  br label %61

52:                                               ; preds = %40
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %4, align 4
  br label %75

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @tuner_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 15, i8* %64, align 1
  %65 = load i32, i32* %6, align 4
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 %66, i8* %67, align 1
  %68 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %69 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %71 = call i32 @tuner_i2c_xfer_send(i32* %69, i8* %70, i32 2)
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %73 = call i32 @mt2032_check_lo_lock(%struct.dvb_frontend* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %61, %58, %46, %38, %33
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i8*, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i32) #1

declare dso_local i32 @mt2032_check_lo_lock(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
