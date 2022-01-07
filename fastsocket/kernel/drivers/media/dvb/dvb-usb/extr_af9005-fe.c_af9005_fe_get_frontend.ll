; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_fe_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_fe_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9005_fe_state* }
%struct.af9005_fe_state = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8*, i32, i32 }

@xd_g_reg_tpsd_const = common dso_local global i32 0, align 4
@reg_tpsd_const_pos = common dso_local global i32 0, align 4
@reg_tpsd_const_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"===== fe_get_frontend ==============\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"CONSTELLATION \00", align 1
@QPSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"QPSK\0A\00", align 1
@QAM_16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"QAM_16\0A\00", align 1
@QAM_64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"QAM_64\0A\00", align 1
@xd_g_reg_tpsd_hier = common dso_local global i32 0, align 4
@reg_tpsd_hier_pos = common dso_local global i32 0, align 4
@reg_tpsd_hier_len = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"HIERARCHY \00", align 1
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"NONE\0A\00", align 1
@HIERARCHY_1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@HIERARCHY_2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"2\0A\00", align 1
@HIERARCHY_4 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"4\0A\00", align 1
@xd_g_reg_dec_pri = common dso_local global i32 0, align 4
@reg_dec_pri_pos = common dso_local global i32 0, align 4
@reg_dec_pri_len = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"PRIORITY %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@xd_g_reg_tpsd_hpcr = common dso_local global i32 0, align 4
@reg_tpsd_hpcr_pos = common dso_local global i32 0, align 4
@reg_tpsd_hpcr_len = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"CODERATE HP \00", align 1
@FEC_1_2 = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"FEC_1_2\0A\00", align 1
@FEC_2_3 = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"FEC_2_3\0A\00", align 1
@FEC_3_4 = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"FEC_3_4\0A\00", align 1
@FEC_5_6 = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"FEC_5_6\0A\00", align 1
@FEC_7_8 = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"FEC_7_8\0A\00", align 1
@xd_g_reg_tpsd_lpcr = common dso_local global i32 0, align 4
@reg_tpsd_lpcr_pos = common dso_local global i32 0, align 4
@reg_tpsd_lpcr_len = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"CODERATE LP \00", align 1
@xd_g_reg_tpsd_gi = common dso_local global i32 0, align 4
@reg_tpsd_gi_pos = common dso_local global i32 0, align 4
@reg_tpsd_gi_len = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"GUARD INTERVAL \00", align 1
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"1_32\0A\00", align 1
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"1_16\0A\00", align 1
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"1_8\0A\00", align 1
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"1_4\0A\00", align 1
@xd_g_reg_tpsd_txmod = common dso_local global i32 0, align 4
@reg_tpsd_txmod_pos = common dso_local global i32 0, align 4
@reg_tpsd_txmod_len = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"TRANSMISSION MODE \00", align 1
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"2K\0A\00", align 1
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"8K\0A\00", align 1
@xd_g_reg_bw = common dso_local global i32 0, align 4
@reg_bw_pos = common dso_local global i32 0, align 4
@reg_bw_len = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [11 x i8] c"BANDWIDTH \00", align 1
@BANDWIDTH_6_MHZ = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [3 x i8] c"6\0A\00", align 1
@BANDWIDTH_7_MHZ = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [3 x i8] c"7\0A\00", align 1
@BANDWIDTH_8_MHZ = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"8\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @af9005_fe_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_fe_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.af9005_fe_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  store %struct.af9005_fe_state* %11, %struct.af9005_fe_state** %6, align 8
  %12 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %13 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @xd_g_reg_tpsd_const, align 4
  %16 = load i32, i32* @reg_tpsd_const_pos, align 4
  %17 = load i32, i32* @reg_tpsd_const_len, align 4
  %18 = call i32 @af9005_read_register_bits(i32 %14, i32 %15, i32 %16, i32 %17, i32* %8)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %312

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %48 [
    i32 0, label %27
    i32 1, label %34
    i32 2, label %41
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @QPSK, align 4
  %29 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  store i32 %28, i32* %32, align 4
  %33 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %48

34:                                               ; preds = %23
  %35 = load i32, i32* @QAM_16, align 4
  %36 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 6
  store i32 %35, i32* %39, align 4
  %40 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %48

41:                                               ; preds = %23
  %42 = load i32, i32* @QAM_64, align 4
  %43 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 6
  store i32 %42, i32* %46, align 4
  %47 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %23, %41, %34, %27
  %49 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %50 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @xd_g_reg_tpsd_hier, align 4
  %53 = load i32, i32* @reg_tpsd_hier_pos, align 4
  %54 = load i32, i32* @reg_tpsd_hier_len, align 4
  %55 = call i32 @af9005_read_register_bits(i32 %51, i32 %52, i32 %53, i32 %54, i32* %8)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %312

60:                                               ; preds = %48
  %61 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  switch i32 %62, label %91 [
    i32 0, label %63
    i32 1, label %70
    i32 2, label %77
    i32 3, label %84
  ]

63:                                               ; preds = %60
  %64 = load i32, i32* @HIERARCHY_NONE, align 4
  %65 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  store i32 %64, i32* %68, align 8
  %69 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %91

70:                                               ; preds = %60
  %71 = load i32, i32* @HIERARCHY_1, align 4
  %72 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  store i32 %71, i32* %75, align 8
  %76 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %91

77:                                               ; preds = %60
  %78 = load i32, i32* @HIERARCHY_2, align 4
  %79 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %80 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  store i32 %78, i32* %82, align 8
  %83 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %91

84:                                               ; preds = %60
  %85 = load i32, i32* @HIERARCHY_4, align 4
  %86 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %87 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  store i32 %85, i32* %89, align 8
  %90 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %91

91:                                               ; preds = %60, %84, %77, %70, %63
  %92 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %93 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @xd_g_reg_dec_pri, align 4
  %96 = load i32, i32* @reg_dec_pri_pos, align 4
  %97 = load i32, i32* @reg_dec_pri_len, align 4
  %98 = call i32 @af9005_read_register_bits(i32 %94, i32 %95, i32 %96, i32 %97, i32* %8)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %312

103:                                              ; preds = %91
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %108 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %107)
  %109 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %110 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @xd_g_reg_tpsd_hpcr, align 4
  %113 = load i32, i32* @reg_tpsd_hpcr_pos, align 4
  %114 = load i32, i32* @reg_tpsd_hpcr_len, align 4
  %115 = call i32 @af9005_read_register_bits(i32 %111, i32 %112, i32 %113, i32 %114, i32* %8)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %103
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %312

120:                                              ; preds = %103
  %121 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %122 = load i32, i32* %8, align 4
  switch i32 %122, label %158 [
    i32 0, label %123
    i32 1, label %130
    i32 2, label %137
    i32 3, label %144
    i32 4, label %151
  ]

123:                                              ; preds = %120
  %124 = load i8*, i8** @FEC_1_2, align 8
  %125 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %126 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  store i8* %124, i8** %128, align 8
  %129 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %158

130:                                              ; preds = %120
  %131 = load i8*, i8** @FEC_2_3, align 8
  %132 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %133 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  store i8* %131, i8** %135, align 8
  %136 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %158

137:                                              ; preds = %120
  %138 = load i8*, i8** @FEC_3_4, align 8
  %139 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %140 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  store i8* %138, i8** %142, align 8
  %143 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %158

144:                                              ; preds = %120
  %145 = load i8*, i8** @FEC_5_6, align 8
  %146 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %147 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 4
  store i8* %145, i8** %149, align 8
  %150 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %158

151:                                              ; preds = %120
  %152 = load i8*, i8** @FEC_7_8, align 8
  %153 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %154 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  store i8* %152, i8** %156, align 8
  %157 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %158

158:                                              ; preds = %120, %151, %144, %137, %130, %123
  %159 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %160 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @xd_g_reg_tpsd_lpcr, align 4
  %163 = load i32, i32* @reg_tpsd_lpcr_pos, align 4
  %164 = load i32, i32* @reg_tpsd_lpcr_len, align 4
  %165 = call i32 @af9005_read_register_bits(i32 %161, i32 %162, i32 %163, i32 %164, i32* %8)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %3, align 4
  br label %312

170:                                              ; preds = %158
  %171 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %172 = load i32, i32* %8, align 4
  switch i32 %172, label %208 [
    i32 0, label %173
    i32 1, label %180
    i32 2, label %187
    i32 3, label %194
    i32 4, label %201
  ]

173:                                              ; preds = %170
  %174 = load i8*, i8** @FEC_1_2, align 8
  %175 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %176 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  store i8* %174, i8** %178, align 8
  %179 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %208

180:                                              ; preds = %170
  %181 = load i8*, i8** @FEC_2_3, align 8
  %182 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %183 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  store i8* %181, i8** %185, align 8
  %186 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %208

187:                                              ; preds = %170
  %188 = load i8*, i8** @FEC_3_4, align 8
  %189 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %190 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 3
  store i8* %188, i8** %192, align 8
  %193 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %208

194:                                              ; preds = %170
  %195 = load i8*, i8** @FEC_5_6, align 8
  %196 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %197 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 3
  store i8* %195, i8** %199, align 8
  %200 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %208

201:                                              ; preds = %170
  %202 = load i8*, i8** @FEC_7_8, align 8
  %203 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %204 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  store i8* %202, i8** %206, align 8
  %207 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %208

208:                                              ; preds = %170, %201, %194, %187, %180, %173
  %209 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %210 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @xd_g_reg_tpsd_gi, align 4
  %213 = load i32, i32* @reg_tpsd_gi_pos, align 4
  %214 = load i32, i32* @reg_tpsd_gi_len, align 4
  %215 = call i32 @af9005_read_register_bits(i32 %211, i32 %212, i32 %213, i32 %214, i32* %8)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %208
  %219 = load i32, i32* %7, align 4
  store i32 %219, i32* %3, align 4
  br label %312

220:                                              ; preds = %208
  %221 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %222 = load i32, i32* %8, align 4
  switch i32 %222, label %251 [
    i32 0, label %223
    i32 1, label %230
    i32 2, label %237
    i32 3, label %244
  ]

223:                                              ; preds = %220
  %224 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %225 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %226 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 2
  store i32 %224, i32* %228, align 8
  %229 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %251

230:                                              ; preds = %220
  %231 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %232 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %233 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 2
  store i32 %231, i32* %235, align 8
  %236 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  br label %251

237:                                              ; preds = %220
  %238 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %239 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %240 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  store i32 %238, i32* %242, align 8
  %243 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %251

244:                                              ; preds = %220
  %245 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %246 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %247 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 2
  store i32 %245, i32* %249, align 8
  %250 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  br label %251

251:                                              ; preds = %220, %244, %237, %230, %223
  %252 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %253 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @xd_g_reg_tpsd_txmod, align 4
  %256 = load i32, i32* @reg_tpsd_txmod_pos, align 4
  %257 = load i32, i32* @reg_tpsd_txmod_len, align 4
  %258 = call i32 @af9005_read_register_bits(i32 %254, i32 %255, i32 %256, i32 %257, i32* %8)
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %251
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %3, align 4
  br label %312

263:                                              ; preds = %251
  %264 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %265 = load i32, i32* %8, align 4
  switch i32 %265, label %280 [
    i32 0, label %266
    i32 1, label %273
  ]

266:                                              ; preds = %263
  %267 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %268 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %269 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  store i32 %267, i32* %271, align 4
  %272 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %280

273:                                              ; preds = %263
  %274 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %275 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %276 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 1
  store i32 %274, i32* %278, align 4
  %279 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %280

280:                                              ; preds = %263, %273, %266
  %281 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %282 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @xd_g_reg_bw, align 4
  %285 = load i32, i32* @reg_bw_pos, align 4
  %286 = load i32, i32* @reg_bw_len, align 4
  %287 = call i32 @af9005_read_register_bits(i32 %283, i32 %284, i32 %285, i32 %286, i32* %8)
  store i32 %287, i32* %7, align 4
  %288 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %289 = load i32, i32* %8, align 4
  switch i32 %289, label %311 [
    i32 0, label %290
    i32 1, label %297
    i32 2, label %304
  ]

290:                                              ; preds = %280
  %291 = load i32, i32* @BANDWIDTH_6_MHZ, align 4
  %292 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %293 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 0
  store i32 %291, i32* %295, align 8
  %296 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  br label %311

297:                                              ; preds = %280
  %298 = load i32, i32* @BANDWIDTH_7_MHZ, align 4
  %299 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %300 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 0
  store i32 %298, i32* %302, align 8
  %303 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  br label %311

304:                                              ; preds = %280
  %305 = load i32, i32* @BANDWIDTH_8_MHZ, align 4
  %306 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %307 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 0
  store i32 %305, i32* %309, align 8
  %310 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  br label %311

311:                                              ; preds = %280, %304, %297, %290
  store i32 0, i32* %3, align 4
  br label %312

312:                                              ; preds = %311, %261, %218, %168, %118, %101, %58, %21
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i32 @af9005_read_register_bits(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @deb_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
