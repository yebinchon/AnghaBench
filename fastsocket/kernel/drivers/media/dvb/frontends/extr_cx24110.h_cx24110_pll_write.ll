; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.h_cx24110_pll_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_cx24110.h_cx24110_pll_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32*, i32)* }
%struct.dvb_frontend.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @cx24110_pll_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_pll_write(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* %5, align 4
  %9 = ashr i32 %8, 24
  %10 = and i32 %9, 255
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds i32, i32* %7, i64 1
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 16
  %14 = and i32 %13, 255
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  store i32 %18, i32* %15, align 4
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dvb_frontend.0*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, i32*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.dvb_frontend.0*, i32*, i32)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dvb_frontend.0*, i32*, i32)*, i32 (%struct.dvb_frontend.0*, i32*, i32)** %27, align 8
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %30 = bitcast %struct.dvb_frontend* %29 to %struct.dvb_frontend.0*
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %32 = call i32 %28(%struct.dvb_frontend.0* %30, i32* %31, i32 3)
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
