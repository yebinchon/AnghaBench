; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_fe_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_fe_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.af9005_fe_state* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.af9005_fe_state = type { i64, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@xd_p_agc_lock = common dso_local global i32 0, align 4
@agc_lock_pos = common dso_local global i32 0, align 4
@agc_lock_len = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@xd_p_fd_tpsd_lock = common dso_local global i32 0, align 4
@fd_tpsd_lock_pos = common dso_local global i32 0, align 4
@fd_tpsd_lock_len = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@xd_r_mp2if_sync_byte_locked = common dso_local global i32 0, align 4
@mp2if_sync_byte_locked_pos = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@xd_p_reg_strong_sginal_detected = common dso_local global i32 0, align 4
@reg_strong_sginal_detected_pos = common dso_local global i32 0, align 4
@reg_strong_sginal_detected_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"adjust for strong signal %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @af9005_fe_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_fe_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.af9005_fe_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  store %struct.af9005_fe_state* %11, %struct.af9005_fe_state** %6, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %125

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %24 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @xd_p_agc_lock, align 4
  %27 = load i32, i32* @agc_lock_pos, align 4
  %28 = load i32, i32* @agc_lock_len, align 4
  %29 = call i32 @af9005_read_register_bits(i32 %25, i32 %26, i32 %27, i32 %28, i64* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %125

34:                                               ; preds = %21
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %44 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @xd_p_fd_tpsd_lock, align 4
  %47 = load i32, i32* @fd_tpsd_lock_pos, align 4
  %48 = load i32, i32* @fd_tpsd_lock_len, align 4
  %49 = call i32 @af9005_read_register_bits(i32 %45, i32 %46, i32 %47, i32 %48, i64* %7)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %125

54:                                               ; preds = %42
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @FE_HAS_CARRIER, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %64 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @xd_r_mp2if_sync_byte_locked, align 4
  %67 = load i32, i32* @mp2if_sync_byte_locked_pos, align 4
  %68 = load i32, i32* @mp2if_sync_byte_locked_pos, align 4
  %69 = call i32 @af9005_read_register_bits(i32 %65, i32 %66, i32 %67, i32 %68, i64* %7)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %125

74:                                               ; preds = %62
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @FE_HAS_SYNC, align 4
  %79 = load i32, i32* @FE_HAS_VITERBI, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @FE_HAS_LOCK, align 4
  %82 = or i32 %80, %81
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %77, %74
  %87 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %88 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %93 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @FE_HAS_LOCK, align 4
  %98 = and i32 %96, %97
  %99 = call i32 @af9005_led_control(i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %91, %86
  %101 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %102 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @xd_p_reg_strong_sginal_detected, align 4
  %105 = load i32, i32* @reg_strong_sginal_detected_pos, align 4
  %106 = load i32, i32* @reg_strong_sginal_detected_len, align 4
  %107 = call i32 @af9005_read_register_bits(i32 %103, i32 %104, i32 %105, i32 %106, i64* %7)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %125

112:                                              ; preds = %100
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %115 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @deb_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %119)
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %123 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %118, %112
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %110, %72, %52, %32, %18
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @af9005_read_register_bits(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @af9005_led_control(i32, i32) #1

declare dso_local i32 @deb_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
