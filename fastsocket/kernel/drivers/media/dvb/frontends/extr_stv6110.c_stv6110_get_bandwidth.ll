; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110.c_stv6110_get_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110.c_stv6110_get_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv6110_priv* }
%struct.stv6110_priv = type { i32* }

@RSTV6110_CTRL3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv6110_get_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110_get_bandwidth(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stv6110_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stv6110_priv*, %struct.stv6110_priv** %9, align 8
  store %struct.stv6110_priv* %10, %struct.stv6110_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %14 = call i32 @stv6110_read_regs(%struct.dvb_frontend* %12, i32* %13, i32 0, i32 8)
  %15 = load %struct.stv6110_priv*, %struct.stv6110_priv** %5, align 8
  %16 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @RSTV6110_CTRL3, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 31
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 5
  %24 = mul nsw i32 %23, 2000000
  %25 = load i32*, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @stv6110_read_regs(%struct.dvb_frontend*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
