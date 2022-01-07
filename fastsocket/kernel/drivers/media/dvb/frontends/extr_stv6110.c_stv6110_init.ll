; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110.c_stv6110_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110.c_stv6110_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv6110_priv* }
%struct.stv6110_priv = type { i32*, i32, i32 }

@__const.stv6110_init.buf0 = private unnamed_addr constant [8 x i32] [i32 7, i32 17, i32 220, i32 133, i32 23, i32 1, i32 230, i32 30], align 16
@RSTV6110_CTRL1 = common dso_local global i64 0, align 8
@RSTV6110_CTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv6110_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.stv6110_priv*, align 8
  %4 = alloca [8 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.stv6110_priv*, %struct.stv6110_priv** %6, align 8
  store %struct.stv6110_priv* %7, %struct.stv6110_priv** %3, align 8
  %8 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([8 x i32]* @__const.stv6110_init.buf0 to i8*), i64 32, i1 false)
  %9 = load %struct.stv6110_priv*, %struct.stv6110_priv** %3, align 8
  %10 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %13 = call i32 @memcpy(i32* %11, i32* %12, i32 8)
  %14 = load %struct.stv6110_priv*, %struct.stv6110_priv** %3, align 8
  %15 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @RSTV6110_CTRL1, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, -249
  store i32 %20, i32* %18, align 4
  %21 = load %struct.stv6110_priv*, %struct.stv6110_priv** %3, align 8
  %22 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 1000000
  %25 = sub nsw i32 %24, 16
  %26 = and i32 %25, 31
  %27 = shl i32 %26, 3
  %28 = load %struct.stv6110_priv*, %struct.stv6110_priv** %3, align 8
  %29 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @RSTV6110_CTRL1, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %27
  store i32 %34, i32* %32, align 4
  %35 = load %struct.stv6110_priv*, %struct.stv6110_priv** %3, align 8
  %36 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @RSTV6110_CTRL2, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -193
  store i32 %41, i32* %39, align 4
  %42 = load %struct.stv6110_priv*, %struct.stv6110_priv** %3, align 8
  %43 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 6
  %46 = load %struct.stv6110_priv*, %struct.stv6110_priv** %3, align 8
  %47 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @RSTV6110_CTRL2, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %45
  store i32 %52, i32* %50, align 4
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %54 = load %struct.stv6110_priv*, %struct.stv6110_priv** %3, align 8
  %55 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @RSTV6110_CTRL1, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i64, i64* @RSTV6110_CTRL1, align 8
  %60 = call i32 @stv6110_write_regs(%struct.dvb_frontend* %53, i32* %58, i64 %59, i32 8)
  %61 = call i32 @msleep(i32 1)
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %63 = call i32 @stv6110_set_bandwidth(%struct.dvb_frontend* %62, i32 72000000)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @stv6110_write_regs(%struct.dvb_frontend*, i32*, i64, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @stv6110_set_bandwidth(%struct.dvb_frontend*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
