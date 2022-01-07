; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_get_afc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_get_afc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda9887_priv* }
%struct.tda9887_priv = type { i32 }

@tda9887_get_afc.AFC_BITS_2_kHz = internal global [16 x i32] [i32 -12500, i32 -37500, i32 -62500, i32 -97500, i32 -112500, i32 -137500, i32 -162500, i32 -187500, i32 187500, i32 162500, i32 137500, i32 112500, i32 97500, i32 62500, i32 37500, i32 12500], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda9887_get_afc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9887_get_afc(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda9887_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.tda9887_priv*, %struct.tda9887_priv** %7, align 8
  store %struct.tda9887_priv* %8, %struct.tda9887_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %10 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %9, i32 0, i32 0
  %11 = call i32 @tuner_i2c_xfer_recv(i32* %10, i32* %5, i32 1)
  %12 = icmp eq i32 1, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 1
  %16 = and i32 %15, 15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* @tda9887_get_afc.AFC_BITS_2_kHz, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %13, %1
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
