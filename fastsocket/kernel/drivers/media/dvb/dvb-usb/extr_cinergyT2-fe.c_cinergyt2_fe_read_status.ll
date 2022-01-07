; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cinergyT2-fe.c_cinergyt2_fe_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cinergyT2-fe.c_cinergyt2_fe_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cinergyt2_fe_state* }
%struct.cinergyt2_fe_state = type { i32 }
%struct.dvbt_get_status_msg = type { i32, i32 }

@CINERGYT2_EP1_GET_TUNER_STATUS = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cinergyt2_fe_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cinergyt2_fe_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cinergyt2_fe_state*, align 8
  %7 = alloca %struct.dvbt_get_status_msg, align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %11, align 8
  store %struct.cinergyt2_fe_state* %12, %struct.cinergyt2_fe_state** %6, align 8
  %13 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %14 = load i32, i32* @CINERGYT2_EP1_GET_TUNER_STATUS, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %16 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %19 = bitcast %struct.dvbt_get_status_msg* %7 to i32*
  %20 = call i32 @dvb_usb_generic_rw(i32 %17, i32* %18, i32 4, i32* %19, i32 8, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %99

25:                                               ; preds = %2
  %26 = load i32*, i32** %5, align 8
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.dvbt_get_status_msg, %struct.dvbt_get_status_msg* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = sub nsw i32 65535, %29
  %31 = icmp sgt i32 %30, 30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = getelementptr inbounds %struct.dvbt_get_status_msg, %struct.dvbt_get_status_msg* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 64
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @FE_HAS_LOCK, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = getelementptr inbounds %struct.dvbt_get_status_msg, %struct.dvbt_get_status_msg* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @FE_HAS_SYNC, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = getelementptr inbounds %struct.dvbt_get_status_msg, %struct.dvbt_get_status_msg* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 16
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* @FE_HAS_CARRIER, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = getelementptr inbounds %struct.dvbt_get_status_msg, %struct.dvbt_get_status_msg* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* @FE_HAS_VITERBI, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FE_HAS_CARRIER, align 4
  %81 = load i32, i32* @FE_HAS_VITERBI, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @FE_HAS_SYNC, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %79, %84
  %86 = load i32, i32* @FE_HAS_CARRIER, align 4
  %87 = load i32, i32* @FE_HAS_VITERBI, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @FE_HAS_SYNC, align 4
  %90 = or i32 %88, %89
  %91 = icmp ne i32 %85, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %77
  %93 = load i32, i32* @FE_HAS_LOCK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %94
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %77
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %23
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @dvb_usb_generic_rw(i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
