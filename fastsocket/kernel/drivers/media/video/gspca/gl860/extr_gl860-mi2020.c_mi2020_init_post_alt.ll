; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-mi2020.c_mi2020_init_post_alt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-mi2020.c_mi2020_init_post_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sd = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@__const.mi2020_init_post_alt.dat_freq2 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 128], align 4
@__const.mi2020_init_post_alt.dat_multi1 = private unnamed_addr constant [3 x i32] [i32 140, i32 167, i32 0], align 4
@__const.mi2020_init_post_alt.dat_multi2 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 0], align 4
@__const.mi2020_init_post_alt.dat_multi3 = private unnamed_addr constant [3 x i32] [i32 140, i32 167, i32 0], align 4
@__const.mi2020_init_post_alt.dat_multi4 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 0], align 4
@__const.mi2020_init_post_alt.dat_hvflip2 = private unnamed_addr constant [3 x i32] [i32 144, i32 4, i32 108], align 4
@__const.mi2020_init_post_alt.dat_hvflip4 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 36], align 4
@__const.mi2020_init_post_alt.dat_wbal2 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 0], align 4
@dat_640 = common dso_local global i32* null, align 8
@dat_800 = common dso_local global i32* null, align 8
@tbl_init_post_alt_low1 = common dso_local global i32 0, align 4
@tbl_init_post_alt_low2 = common dso_local global i32 0, align 4
@tbl_init_post_alt_low3 = common dso_local global i32 0, align 4
@dat_1280 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"\8C'\07\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\90\05\04\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\8C'\09\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\90\04\02\00", align 1
@dat_1600 = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"\90\06@\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\90\04\B0\00", align 1
@tbl_init_post_alt_big = common dso_local global i32 0, align 4
@dat_freq1 = common dso_local global i32* null, align 8
@dat_wbal1 = common dso_local global i32* null, align 8
@dat_multi5 = common dso_local global i32* null, align 8
@dat_multi6 = common dso_local global i32* null, align 8
@tbl_init_post_alt_3B = common dso_local global i32 0, align 4
@dat_hvflip1 = common dso_local global i32* null, align 8
@dat_hvflip3 = common dso_local global i32* null, align 8
@dat_hvflip5 = common dso_local global i32* null, align 8
@dat_hvflip6 = common dso_local global i32* null, align 8
@tbl_middle_hvflip_low = common dso_local global i32 0, align 4
@tbl_middle_hvflip_big = common dso_local global i32 0, align 4
@tbl_end_hvflip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @mi2020_init_post_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi2020_init_post_alt(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = bitcast %struct.gspca_dev* %18 to %struct.sd*
  store %struct.sd* %19, %struct.sd** %3, align 8
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %35, %38
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %5, align 8
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load %struct.sd*, %struct.sd** %3, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %48, %51
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %6, align 8
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %7, align 8
  %63 = load %struct.sd*, %struct.sd** %3, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  %67 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_init_post_alt.dat_freq2 to i8*), i64 12, i1 false)
  %68 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_init_post_alt.dat_multi1 to i8*), i64 12, i1 false)
  %69 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_init_post_alt.dat_multi2 to i8*), i64 12, i1 false)
  %70 = bitcast [3 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_init_post_alt.dat_multi3 to i8*), i64 12, i1 false)
  %71 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_init_post_alt.dat_multi4 to i8*), i64 12, i1 false)
  %72 = bitcast [3 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_init_post_alt.dat_hvflip2 to i8*), i64 12, i1 false)
  %73 = bitcast [3 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_init_post_alt.dat_hvflip4 to i8*), i64 12, i1 false)
  %74 = bitcast [3 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_init_post_alt.dat_wbal2 to i8*), i64 12, i1 false)
  %75 = load %struct.sd*, %struct.sd** %3, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 1
  store i32 -1, i32* %76, align 4
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 192, i32 128
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 157, i32* %82, align 4
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  store i32 %85, i32* %86, align 4
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %1
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  store i32 23, i32* %92, align 4
  br label %109

93:                                               ; preds = %1
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  store i32 53, i32* %99, align 4
  br label %108

100:                                              ; preds = %93
  %101 = load i64, i64* %8, align 8
  %102 = icmp eq i64 %101, 2
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 32, i32* %104, align 4
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 32, i32* %105, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  store i32 23, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %100
  br label %108

108:                                              ; preds = %107, %96
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i64, i64* %6, align 8
  %111 = sub i64 1, %110
  %112 = mul i64 2, %111
  %113 = add i64 108, %112
  %114 = load i64, i64* %5, align 8
  %115 = sub i64 1, %114
  %116 = add i64 %113, %115
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %117, i32* %118, align 4
  %119 = load i64, i64* %6, align 8
  %120 = sub i64 1, %119
  %121 = mul i64 2, %120
  %122 = add i64 36, %121
  %123 = load i64, i64* %5, align 8
  %124 = sub i64 1, %123
  %125 = add i64 %122, %124
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  store i32 %126, i32* %127, align 4
  %128 = call i32 @msleep(i32 200)
  %129 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %130 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %129, i32 64, i32 5, i32 1, i32 0, i32 0, i8* null)
  %131 = call i32 @msleep(i32 2)
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %133 = call i32 @common(%struct.gspca_dev* %132)
  %134 = call i32 @msleep(i32 142)
  %135 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %136 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %135, i32 64, i32 1, i32 16, i32 16, i32 0, i8* null)
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %138 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %137, i32 64, i32 1, i32 3, i32 193, i32 0, i8* null)
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %140 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %139, i32 64, i32 1, i32 66, i32 194, i32 0, i8* null)
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %142 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %141, i32 64, i32 1, i32 106, i32 13, i32 0, i8* null)
  %143 = load i64, i64* %4, align 8
  switch i64 %143, label %222 [
    i64 129, label %144
    i64 128, label %144
    i64 131, label %182
    i64 130, label %182
  ]

144:                                              ; preds = %109, %109
  %145 = load i64, i64* %4, align 8
  %146 = icmp ne i64 %145, 128
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %149 = load i32*, i32** @dat_640, align 8
  %150 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %148, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %149)
  br label %155

151:                                              ; preds = %144
  %152 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %153 = load i32*, i32** @dat_800, align 8
  %154 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %152, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %153)
  br label %155

155:                                              ; preds = %151, %147
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %157 = load i32, i32* @tbl_init_post_alt_low1, align 4
  %158 = load i32, i32* @tbl_init_post_alt_low1, align 4
  %159 = call i32 @ARRAY_SIZE(i32 %158)
  %160 = call i32 @fetch_idxdata(%struct.gspca_dev* %156, i32 %157, i32 %159)
  %161 = load i64, i64* %4, align 8
  %162 = icmp eq i64 %161, 128
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %165 = load i32, i32* @tbl_init_post_alt_low2, align 4
  %166 = load i32, i32* @tbl_init_post_alt_low2, align 4
  %167 = call i32 @ARRAY_SIZE(i32 %166)
  %168 = call i32 @fetch_idxdata(%struct.gspca_dev* %164, i32 %165, i32 %167)
  br label %169

169:                                              ; preds = %163, %155
  %170 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %171 = load i32, i32* @tbl_init_post_alt_low3, align 4
  %172 = load i32, i32* @tbl_init_post_alt_low3, align 4
  %173 = call i32 @ARRAY_SIZE(i32 %172)
  %174 = call i32 @fetch_idxdata(%struct.gspca_dev* %170, i32 %171, i32 %173)
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %176 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %175, i32 64, i32 1, i32 16, i32 16, i32 0, i8* null)
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %178 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %177, i32 64, i32 1, i32 0, i32 193, i32 0, i8* null)
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %180 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %179, i32 64, i32 1, i32 65, i32 194, i32 0, i8* null)
  %181 = call i32 @msleep(i32 120)
  br label %222

182:                                              ; preds = %109, %109
  %183 = load i64, i64* %4, align 8
  %184 = icmp eq i64 %183, 131
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %187 = load i32*, i32** @dat_1280, align 8
  %188 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %186, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %187)
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %190 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %189, i32 64, i32 3, i32 31232, i32 51, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %191 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %192 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %191, i32 64, i32 3, i32 31232, i32 51, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %194 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %193, i32 64, i32 3, i32 31232, i32 51, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %195 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %196 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %195, i32 64, i32 3, i32 31232, i32 51, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %209

197:                                              ; preds = %182
  %198 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %199 = load i32*, i32** @dat_1600, align 8
  %200 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %198, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %199)
  %201 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %202 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %201, i32 64, i32 3, i32 31232, i32 51, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %204 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %203, i32 64, i32 3, i32 31232, i32 51, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %205 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %206 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %205, i32 64, i32 3, i32 31232, i32 51, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %207 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %208 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %207, i32 64, i32 3, i32 31232, i32 51, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %209

209:                                              ; preds = %197, %185
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %211 = load i32, i32* @tbl_init_post_alt_big, align 4
  %212 = load i32, i32* @tbl_init_post_alt_big, align 4
  %213 = call i32 @ARRAY_SIZE(i32 %212)
  %214 = call i32 @fetch_idxdata(%struct.gspca_dev* %210, i32 %211, i32 %213)
  %215 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %216 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %215, i32 64, i32 1, i32 1, i32 16, i32 0, i8* null)
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %218 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %217, i32 64, i32 1, i32 0, i32 193, i32 0, i8* null)
  %219 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %220 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %219, i32 64, i32 1, i32 65, i32 194, i32 0, i8* null)
  %221 = call i32 @msleep(i32 1850)
  br label %222

222:                                              ; preds = %209, %109, %169
  %223 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %224 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %223, i32 64, i32 1, i32 64, i32 0, i32 0, i8* null)
  %225 = call i32 @msleep(i32 40)
  %226 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %227 = load i32*, i32** @dat_freq1, align 8
  %228 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %226, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %227)
  %229 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %231 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %229, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %230)
  %232 = call i32 @msleep(i32 33)
  %233 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %235 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %233, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %234)
  %236 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %237 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %238 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %236, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %237)
  %239 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %241 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %239, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %240)
  %242 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %243 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %244 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %242, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %243)
  %245 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %246 = load i32*, i32** @dat_wbal1, align 8
  %247 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %245, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %246)
  %248 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %249 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %250 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %248, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %249)
  %251 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %252 = load i32*, i32** @dat_multi5, align 8
  %253 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %251, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %252)
  %254 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %255 = load i32*, i32** @dat_multi6, align 8
  %256 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %254, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %255)
  %257 = call i32 @msleep(i32 7)
  %258 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %259 = call i32 @ctrl_in(%struct.gspca_dev* %258, i32 192, i32 2, i32 0, i32 0, i32 1, i32* %17)
  %260 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %261 = load i32, i32* @tbl_init_post_alt_3B, align 4
  %262 = load i32, i32* @tbl_init_post_alt_3B, align 4
  %263 = call i32 @ARRAY_SIZE(i32 %262)
  %264 = call i32 @fetch_idxdata(%struct.gspca_dev* %260, i32 %261, i32 %263)
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %266 = load i32*, i32** @dat_hvflip1, align 8
  %267 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %265, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %266)
  %268 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %270 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %268, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %269)
  %271 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %272 = load i32*, i32** @dat_hvflip3, align 8
  %273 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %271, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %272)
  %274 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %275 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %276 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %274, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %275)
  %277 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %278 = load i32*, i32** @dat_hvflip5, align 8
  %279 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %277, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %278)
  %280 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %281 = load i32*, i32** @dat_hvflip6, align 8
  %282 = call i32 (%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) @ctrl_out(%struct.gspca_dev* %280, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %281)
  %283 = call i32 @msleep(i32 250)
  %284 = load i64, i64* %4, align 8
  %285 = icmp eq i64 %284, 129
  br i1 %285, label %289, label %286

286:                                              ; preds = %222
  %287 = load i64, i64* %4, align 8
  %288 = icmp eq i64 %287, 128
  br i1 %288, label %289, label %295

289:                                              ; preds = %286, %222
  %290 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %291 = load i32, i32* @tbl_middle_hvflip_low, align 4
  %292 = load i32, i32* @tbl_middle_hvflip_low, align 4
  %293 = call i32 @ARRAY_SIZE(i32 %292)
  %294 = call i32 @fetch_idxdata(%struct.gspca_dev* %290, i32 %291, i32 %293)
  br label %301

295:                                              ; preds = %286
  %296 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %297 = load i32, i32* @tbl_middle_hvflip_big, align 4
  %298 = load i32, i32* @tbl_middle_hvflip_big, align 4
  %299 = call i32 @ARRAY_SIZE(i32 %298)
  %300 = call i32 @fetch_idxdata(%struct.gspca_dev* %296, i32 %297, i32 %299)
  br label %301

301:                                              ; preds = %295, %289
  %302 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %303 = load i32, i32* @tbl_end_hvflip, align 4
  %304 = load i32, i32* @tbl_end_hvflip, align 4
  %305 = call i32 @ARRAY_SIZE(i32 %304)
  %306 = call i32 @fetch_idxdata(%struct.gspca_dev* %302, i32 %303, i32 %305)
  %307 = load %struct.sd*, %struct.sd** %3, align 8
  %308 = getelementptr inbounds %struct.sd, %struct.sd* %307, i32 0, i32 1
  store i32 0, i32* %308, align 4
  %309 = load i64, i64* %5, align 8
  %310 = load %struct.sd*, %struct.sd** %3, align 8
  %311 = getelementptr inbounds %struct.sd, %struct.sd* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 0
  store i64 %309, i64* %312, align 8
  %313 = load i64, i64* %6, align 8
  %314 = load %struct.sd*, %struct.sd** %3, align 8
  %315 = getelementptr inbounds %struct.sd, %struct.sd* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 1
  store i64 %313, i64* %316, align 8
  %317 = load i64, i64* %7, align 8
  %318 = load %struct.sd*, %struct.sd** %3, align 8
  %319 = getelementptr inbounds %struct.sd, %struct.sd* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 2
  store i64 %317, i64* %320, align 8
  %321 = load i64, i64* %8, align 8
  %322 = load %struct.sd*, %struct.sd** %3, align 8
  %323 = getelementptr inbounds %struct.sd, %struct.sd* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 3
  store i64 %321, i64* %324, align 8
  %325 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %326 = call i32 @mi2020_camera_settings(%struct.gspca_dev* %325)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, ...) #2

declare dso_local i32 @common(%struct.gspca_dev*) #2

declare dso_local i32 @fetch_idxdata(%struct.gspca_dev*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @ctrl_in(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @mi2020_camera_settings(%struct.gspca_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
