; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_par.c_par96_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_par.c_par96_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.baycom_state = type { %struct.TYPE_7__, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.parport* }
%struct.parport = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.parport*, i8)* }

@PAR96_BURSTBITS = common dso_local global i32 0, align 4
@PAR97_POWER = common dso_local global i8 0, align 1
@PAR96_SCRAM_TAP1 = common dso_local global i32 0, align 4
@PAR96_SCRAM_TAPN = common dso_local global i32 0, align 4
@PAR96_TXBIT = common dso_local global i8 0, align 1
@PAR96_BURST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.baycom_state*)* @par96_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @par96_tx(%struct.net_device* %0, %struct.baycom_state* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.baycom_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.parport*, align 8
  %8 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.baycom_state* %1, %struct.baycom_state** %4, align 8
  %9 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %10 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %9, i32 0, i32 2
  %11 = call i32 @hdlcdrv_getbits(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %13 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.parport*, %struct.parport** %15, align 8
  store %struct.parport* %16, %struct.parport** %7, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %108, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PAR96_BURSTBITS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %113

21:                                               ; preds = %17
  %22 = load i8, i8* @PAR97_POWER, align 1
  store i8 %22, i8* %8, align 1
  %23 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %24 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 1
  %29 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %30 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1
  %35 = or i32 %28, %34
  %36 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %37 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %21
  %44 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %45 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %21
  %51 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %52 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PAR96_SCRAM_TAP1, align 4
  %57 = shl i32 %56, 1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load i32, i32* @PAR96_SCRAM_TAPN, align 4
  %62 = shl i32 %61, 1
  %63 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %64 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = xor i32 %67, %62
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %60, %50
  %70 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %71 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PAR96_SCRAM_TAP1, align 4
  %76 = shl i32 %75, 2
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load i8, i8* @PAR96_TXBIT, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %8, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %83, %81
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %8, align 1
  br label %86

86:                                               ; preds = %79, %69
  %87 = load %struct.parport*, %struct.parport** %7, align 8
  %88 = getelementptr inbounds %struct.parport, %struct.parport* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32 (%struct.parport*, i8)*, i32 (%struct.parport*, i8)** %90, align 8
  %92 = load %struct.parport*, %struct.parport** %7, align 8
  %93 = load i8, i8* %8, align 1
  %94 = call i32 %91(%struct.parport* %92, i8 zeroext %93)
  %95 = load %struct.parport*, %struct.parport** %7, align 8
  %96 = getelementptr inbounds %struct.parport, %struct.parport* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32 (%struct.parport*, i8)*, i32 (%struct.parport*, i8)** %98, align 8
  %100 = load %struct.parport*, %struct.parport** %7, align 8
  %101 = load i8, i8* %8, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @PAR96_BURST, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %102, %104
  %106 = trunc i32 %105 to i8
  %107 = call i32 %99(%struct.parport* %100, i8 zeroext %106)
  br label %108

108:                                              ; preds = %86
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = lshr i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %17

113:                                              ; preds = %17
  ret void
}

declare dso_local i32 @hdlcdrv_getbits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
