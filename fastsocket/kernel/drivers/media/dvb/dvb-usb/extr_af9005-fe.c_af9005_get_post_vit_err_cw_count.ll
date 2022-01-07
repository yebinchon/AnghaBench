; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_get_post_vit_err_cw_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_get_post_vit_err_cw_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9005_fe_state* }
%struct.af9005_fe_state = type { i32 }

@xd_r_fec_rsd_ber_rdy = common dso_local global i32 0, align 4
@fec_rsd_ber_rdy_pos = common dso_local global i32 0, align 4
@fec_rsd_ber_rdy_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rsd counter not ready\0A\00", align 1
@xd_r_fec_rsd_abort_packet_cnt_7_0 = common dso_local global i32 0, align 4
@xd_r_fec_rsd_abort_packet_cnt_15_8 = common dso_local global i32 0, align 4
@xd_r_fec_rsd_bit_err_cnt_7_0 = common dso_local global i32 0, align 4
@xd_r_fec_rsd_bit_err_cnt_15_8 = common dso_local global i32 0, align 4
@xd_r_fec_rsd_bit_err_cnt_23_16 = common dso_local global i32 0, align 4
@xd_p_fec_rsd_packet_unit_7_0 = common dso_local global i32 0, align 4
@xd_p_fec_rsd_packet_unit_15_8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"wrong RSD packet count\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"POST abort count %d err count %d rsd packets %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32*, i32*)* @af9005_get_post_vit_err_cw_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_get_post_vit_err_cw_count(%struct.dvb_frontend* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.af9005_fe_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %20, align 8
  store %struct.af9005_fe_state* %21, %struct.af9005_fe_state** %10, align 8
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  %25 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @xd_r_fec_rsd_ber_rdy, align 4
  %28 = load i32, i32* @fec_rsd_ber_rdy_pos, align 4
  %29 = load i32, i32* @fec_rsd_ber_rdy_len, align 4
  %30 = call i32 @af9005_read_register_bits(i32 %26, i32 %27, i32 %28, i32 %29, i32* %14)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %149

35:                                               ; preds = %4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 100, i32* %5, align 4
  br label %149

40:                                               ; preds = %35
  %41 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  %42 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @xd_r_fec_rsd_abort_packet_cnt_7_0, align 4
  %45 = call i32 @af9005_read_ofdm_register(i32 %43, i32 %44, i32* %15)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %149

50:                                               ; preds = %40
  %51 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  %52 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @xd_r_fec_rsd_abort_packet_cnt_15_8, align 4
  %55 = call i32 @af9005_read_ofdm_register(i32 %53, i32 %54, i32* %16)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %149

60:                                               ; preds = %50
  %61 = load i32, i32* %16, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %18, align 4
  %65 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  %66 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @xd_r_fec_rsd_bit_err_cnt_7_0, align 4
  %69 = call i32 @af9005_read_ofdm_register(i32 %67, i32 %68, i32* %15)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %149

74:                                               ; preds = %60
  %75 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  %76 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @xd_r_fec_rsd_bit_err_cnt_15_8, align 4
  %79 = call i32 @af9005_read_ofdm_register(i32 %77, i32 %78, i32* %16)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %149

84:                                               ; preds = %74
  %85 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  %86 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @xd_r_fec_rsd_bit_err_cnt_23_16, align 4
  %89 = call i32 @af9005_read_ofdm_register(i32 %87, i32 %88, i32* %17)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %149

94:                                               ; preds = %84
  %95 = load i32, i32* %17, align 4
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %16, align 4
  %98 = shl i32 %97, 8
  %99 = add nsw i32 %96, %98
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %18, align 4
  %104 = mul nsw i32 %103, 8
  %105 = mul nsw i32 %104, 8
  %106 = sub nsw i32 %102, %105
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  %109 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @xd_p_fec_rsd_packet_unit_7_0, align 4
  %112 = call i32 @af9005_read_ofdm_register(i32 %110, i32 %111, i32* %15)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %94
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %5, align 4
  br label %149

117:                                              ; preds = %94
  %118 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  %119 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @xd_p_fec_rsd_packet_unit_15_8, align 4
  %122 = call i32 @af9005_read_ofdm_register(i32 %120, i32 %121, i32* %16)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %5, align 4
  br label %149

127:                                              ; preds = %117
  %128 = load i32, i32* %16, align 4
  %129 = shl i32 %128, 8
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %149

138:                                              ; preds = %127
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %18, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32*, i32** %8, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %138, %134, %125, %115, %92, %82, %72, %58, %48, %38, %33
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @af9005_read_register_bits(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @af9005_read_ofdm_register(i32, i32, i32*) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
