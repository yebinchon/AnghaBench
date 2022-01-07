; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.nxt6000_state* }
%struct.nxt6000_state = type { i32 }

@OFDM_COR_STAT = common dso_local global i32 0, align 4
@AGCLOCKED = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@OFDM_SYR_STAT = common dso_local global i32 0, align 4
@GI14_SYR_LOCK = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@VIT_SYNC_STATUS = common dso_local global i32 0, align 4
@VITINSYNC = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@RS_COR_STAT = common dso_local global i32 0, align 4
@RSCORESTATUS = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@TPSLOCKED = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @nxt6000_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt6000_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nxt6000_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.nxt6000_state*, %struct.nxt6000_state** %8, align 8
  store %struct.nxt6000_state* %9, %struct.nxt6000_state** %6, align 8
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.nxt6000_state*, %struct.nxt6000_state** %6, align 8
  %12 = load i32, i32* @OFDM_COR_STAT, align 4
  %13 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AGCLOCKED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.nxt6000_state*, %struct.nxt6000_state** %6, align 8
  %25 = load i32, i32* @OFDM_SYR_STAT, align 4
  %26 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %24, i32 %25)
  %27 = load i32, i32* @GI14_SYR_LOCK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @FE_HAS_CARRIER, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.nxt6000_state*, %struct.nxt6000_state** %6, align 8
  %37 = load i32, i32* @VIT_SYNC_STATUS, align 4
  %38 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %36, i32 %37)
  %39 = load i32, i32* @VITINSYNC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @FE_HAS_VITERBI, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.nxt6000_state*, %struct.nxt6000_state** %6, align 8
  %49 = load i32, i32* @RS_COR_STAT, align 4
  %50 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %48, i32 %49)
  %51 = load i32, i32* @RSCORESTATUS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* @FE_HAS_SYNC, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @TPSLOCKED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %68 = load i32, i32* @FE_HAS_CARRIER, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @FE_HAS_VITERBI, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @FE_HAS_SYNC, align 4
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %66, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load i32, i32* @FE_HAS_LOCK, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %64, %59
  %81 = load i64, i64* @debug, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.nxt6000_state*, %struct.nxt6000_state** %6, align 8
  %85 = call i32 @nxt6000_dump_status(%struct.nxt6000_state* %84)
  br label %86

86:                                               ; preds = %83, %80
  ret i32 0
}

declare dso_local i32 @nxt6000_readreg(%struct.nxt6000_state*, i32) #1

declare dso_local i32 @nxt6000_dump_status(%struct.nxt6000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
