; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i32 }

@DMDSTATE = common dso_local global i32 0, align 4
@HEADER_MODE_FIELD = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Status: Unlocked (Searching ..)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Delivery system: DVB-S2\00", align 1
@DSTATUS = common dso_local global i32 0, align 4
@LOCK_DEFINITIF_FIELD = common dso_local global i32 0, align 4
@PDELSTATUS1 = common dso_local global i32 0, align 4
@PKTDELIN_LOCK_FIELD = common dso_local global i32 0, align 4
@TSSTATUS = common dso_local global i32 0, align 4
@TSFIFO_LINEOK_FIELD = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Delivery system: DVB-S\00", align 1
@VSTATUSVIT = common dso_local global i32 0, align 4
@LOCKEDVIT_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv090x_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stv090x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %9, align 8
  store %struct.stv090x_state* %10, %struct.stv090x_state** %5, align 8
  %11 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %12 = load i32, i32* @DMDSTATE, align 4
  %13 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @HEADER_MODE_FIELD, align 4
  %16 = call i32 @STV090x_GETFIELD_Px(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %19 [
    i32 0, label %18
    i32 1, label %18
    i32 2, label %23
    i32 3, label %63
  ]

18:                                               ; preds = %2, %2
  br label %19

19:                                               ; preds = %2, %18
  %20 = load i32, i32* @FE_DEBUG, align 4
  %21 = call i32 @dprintk(i32 %20, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  store i32 0, i32* %22, align 4
  br label %103

23:                                               ; preds = %2
  %24 = load i32, i32* @FE_DEBUG, align 4
  %25 = call i32 @dprintk(i32 %24, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %27 = load i32, i32* @DSTATUS, align 4
  %28 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LOCK_DEFINITIF_FIELD, align 4
  %31 = call i32 @STV090x_GETFIELD_Px(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %23
  %34 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %35 = load i32, i32* @PDELSTATUS1, align 4
  %36 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PKTDELIN_LOCK_FIELD, align 4
  %39 = call i32 @STV090x_GETFIELD_Px(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %33
  %42 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %43 = load i32, i32* @TSSTATUS, align 4
  %44 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @TSFIFO_LINEOK_FIELD, align 4
  %47 = call i32 @STV090x_GETFIELD_Px(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %51 = load i32, i32* @FE_HAS_CARRIER, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FE_HAS_VITERBI, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FE_HAS_SYNC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FE_HAS_LOCK, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %49, %41
  br label %61

61:                                               ; preds = %60, %33
  br label %62

62:                                               ; preds = %61, %23
  br label %103

63:                                               ; preds = %2
  %64 = load i32, i32* @FE_DEBUG, align 4
  %65 = call i32 @dprintk(i32 %64, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %67 = load i32, i32* @DSTATUS, align 4
  %68 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @LOCK_DEFINITIF_FIELD, align 4
  %71 = call i32 @STV090x_GETFIELD_Px(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %63
  %74 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %75 = load i32, i32* @VSTATUSVIT, align 4
  %76 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @LOCKEDVIT_FIELD, align 4
  %79 = call i32 @STV090x_GETFIELD_Px(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %73
  %82 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %83 = load i32, i32* @TSSTATUS, align 4
  %84 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @TSFIFO_LINEOK_FIELD, align 4
  %87 = call i32 @STV090x_GETFIELD_Px(i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %91 = load i32, i32* @FE_HAS_CARRIER, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @FE_HAS_VITERBI, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @FE_HAS_SYNC, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @FE_HAS_LOCK, align 4
  %98 = or i32 %96, %97
  %99 = load i32*, i32** %4, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %89, %81
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101, %63
  br label %103

103:                                              ; preds = %102, %62, %19
  ret i32 0
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
