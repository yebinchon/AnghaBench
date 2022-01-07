; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_qt1010.c_qt1010_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_qt1010.c_qt1010_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_10__, %struct.qt1010_priv* }
%struct.TYPE_10__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_7__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_7__ = type { i64 }
%struct.qt1010_priv = type { i32, i32, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i64, i32 }

@QT1010_WR = common dso_local global i64 0, align 8
@QT1010_RD = common dso_local global i64 0, align 8
@QT1010_OFFSET = common dso_local global i32 0, align 4
@QT1010_STEP = common dso_local global i32 0, align 4
@FE_OFDM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [120 x i8] c"freq:%u 05:%02x 07:%02x 09:%02x 0a:%02x 0b:%02x 1a:%02x 11:%02x 12:%02x 22:%02x 05:%02x 1f:%02x 20:%02x 25:%02x 00:%02x\00", align 1
@debug = common dso_local global i64 0, align 8
@FREQ1 = common dso_local global i32 0, align 4
@FREQ2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @qt1010_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1010_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.qt1010_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [48 x %struct.TYPE_11__], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %16 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* @QT1010_WR, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  store i32 128, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 5
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* @QT1010_WR, align 8
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  store i32 2, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  store i32 63, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 5
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* @QT1010_WR, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store i32 5, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 255, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 5
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* @QT1010_WR, align 8
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32 6, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  store i32 68, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 5
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* @QT1010_WR, align 8
  store i64 %50, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i32 7, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  store i32 255, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 5
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* @QT1010_WR, align 8
  store i64 %58, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i32 8, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i32 8, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  store i32 0, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 5
  store i32 0, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* @QT1010_WR, align 8
  store i64 %66, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 9, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  store i32 255, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  store i32 0, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* @QT1010_WR, align 8
  store i64 %74, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 10, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i32 255, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  store i32 0, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* @QT1010_WR, align 8
  store i64 %82, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 11, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  store i32 255, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  store i32 0, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 5
  store i32 0, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 1
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* @QT1010_WR, align 8
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32 12, i32* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  store i32 225, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 5
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* @QT1010_WR, align 8
  store i64 %98, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  store i32 26, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  store i32 255, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 5
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* @QT1010_WR, align 8
  store i64 %106, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 27, i32* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  store i32 0, i32* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 5
  store i32 0, i32* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* @QT1010_WR, align 8
  store i64 %114, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  store i32 28, i32* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  store i32 137, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  store i32 0, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 5
  store i32 0, i32* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* @QT1010_WR, align 8
  store i64 %122, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store i32 17, i32* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  store i32 255, i32* %124, align 4
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  store i32 0, i32* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 4
  store i64 0, i64* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 5
  store i32 0, i32* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64, i64* @QT1010_WR, align 8
  store i64 %130, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i32 18, i32* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  store i32 255, i32* %132, align 4
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  store i32 0, i32* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  store i64 0, i64* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 5
  store i32 0, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i64, i64* @QT1010_WR, align 8
  store i64 %138, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  store i32 34, i32* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  store i32 255, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 3
  store i32 0, i32* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  store i64 0, i64* %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 5
  store i32 0, i32* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* @QT1010_WR, align 8
  store i64 %146, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  store i32 30, i32* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  store i32 0, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 3
  store i32 0, i32* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 4
  store i64 0, i64* %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  store i32 0, i32* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 1
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* @QT1010_WR, align 8
  store i64 %154, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  store i32 30, i32* %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  store i32 208, i32* %156, align 4
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 3
  store i32 0, i32* %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 4
  store i64 0, i64* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 5
  store i32 0, i32* %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 1
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i64, i64* @QT1010_RD, align 8
  store i64 %162, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  store i32 34, i32* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  store i32 255, i32* %164, align 4
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 3
  store i32 0, i32* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 4
  store i64 0, i64* %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 5
  store i32 0, i32* %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 1
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* @QT1010_WR, align 8
  store i64 %170, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  store i32 30, i32* %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  store i32 0, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  store i32 0, i32* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 4
  store i64 0, i64* %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 5
  store i32 0, i32* %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i64 1
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i64, i64* @QT1010_RD, align 8
  store i64 %178, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  store i32 5, i32* %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 2
  store i32 255, i32* %180, align 4
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 3
  store i32 0, i32* %181, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 4
  store i64 0, i64* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 5
  store i32 0, i32* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i64 1
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i64, i64* @QT1010_RD, align 8
  store i64 %186, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  store i32 34, i32* %187, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  store i32 255, i32* %188, align 4
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  store i32 0, i32* %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 4
  store i64 0, i64* %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 5
  store i32 0, i32* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 1
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i64, i64* @QT1010_WR, align 8
  store i64 %194, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  store i32 35, i32* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 2
  store i32 208, i32* %196, align 4
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 3
  store i32 0, i32* %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 4
  store i64 0, i64* %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 5
  store i32 0, i32* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i64 1
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i64, i64* @QT1010_WR, align 8
  store i64 %202, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store i32 30, i32* %203, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 2
  store i32 0, i32* %204, align 4
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 3
  store i32 0, i32* %205, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 4
  store i64 0, i64* %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 5
  store i32 0, i32* %207, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i64 1
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i64, i64* @QT1010_WR, align 8
  store i64 %210, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  store i32 30, i32* %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  store i32 224, i32* %212, align 4
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  store i32 0, i32* %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 4
  store i64 0, i64* %214, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 5
  store i32 0, i32* %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i64 1
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i64, i64* @QT1010_RD, align 8
  store i64 %218, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  store i32 35, i32* %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  store i32 255, i32* %220, align 4
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  store i32 0, i32* %221, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 4
  store i64 0, i64* %222, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 5
  store i32 0, i32* %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 1
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i64, i64* @QT1010_RD, align 8
  store i64 %226, i64* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  store i32 35, i32* %227, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  store i32 255, i32* %228, align 4
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 3
  store i32 0, i32* %229, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 4
  store i64 0, i64* %230, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 5
  store i32 0, i32* %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i64 1
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i64, i64* @QT1010_WR, align 8
  store i64 %234, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  store i32 30, i32* %235, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  store i32 0, i32* %236, align 4
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  store i32 0, i32* %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 4
  store i64 0, i64* %238, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 5
  store i32 0, i32* %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i64 1
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load i64, i64* @QT1010_WR, align 8
  store i64 %242, i64* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  store i32 36, i32* %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 2
  store i32 208, i32* %244, align 4
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  store i32 0, i32* %245, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 4
  store i64 0, i64* %246, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 5
  store i32 0, i32* %247, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i64 1
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i64, i64* @QT1010_WR, align 8
  store i64 %250, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  store i32 30, i32* %251, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  store i32 0, i32* %252, align 4
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 3
  store i32 0, i32* %253, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 4
  store i64 0, i64* %254, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 5
  store i32 0, i32* %255, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i64 1
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  %258 = load i64, i64* @QT1010_WR, align 8
  store i64 %258, i64* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  store i32 30, i32* %259, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 2
  store i32 240, i32* %260, align 4
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 3
  store i32 0, i32* %261, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 4
  store i64 0, i64* %262, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 5
  store i32 0, i32* %263, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 1
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  %266 = load i64, i64* @QT1010_RD, align 8
  store i64 %266, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  store i32 36, i32* %267, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  store i32 255, i32* %268, align 4
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 3
  store i32 0, i32* %269, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 4
  store i64 0, i64* %270, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 5
  store i32 0, i32* %271, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 1
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i64, i64* @QT1010_WR, align 8
  store i64 %274, i64* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 1
  store i32 30, i32* %275, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 2
  store i32 0, i32* %276, align 4
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 3
  store i32 0, i32* %277, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 4
  store i64 0, i64* %278, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 5
  store i32 0, i32* %279, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i64 1
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 0
  %282 = load i64, i64* @QT1010_WR, align 8
  store i64 %282, i64* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 1
  store i32 20, i32* %283, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 2
  store i32 127, i32* %284, align 4
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 3
  store i32 0, i32* %285, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 4
  store i64 0, i64* %286, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 5
  store i32 0, i32* %287, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i64 1
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 0
  %290 = load i64, i64* @QT1010_WR, align 8
  store i64 %290, i64* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  store i32 21, i32* %291, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 2
  store i32 127, i32* %292, align 4
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 3
  store i32 0, i32* %293, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 4
  store i64 0, i64* %294, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 5
  store i32 0, i32* %295, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i64 1
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = load i64, i64* @QT1010_WR, align 8
  store i64 %298, i64* %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 1
  store i32 5, i32* %299, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 2
  store i32 255, i32* %300, align 4
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 3
  store i32 0, i32* %301, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 4
  store i64 0, i64* %302, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 5
  store i32 0, i32* %303, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i64 1
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load i64, i64* @QT1010_WR, align 8
  store i64 %306, i64* %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 1
  store i32 6, i32* %307, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 2
  store i32 0, i32* %308, align 4
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 3
  store i32 0, i32* %309, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 4
  store i64 0, i64* %310, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 5
  store i32 0, i32* %311, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i64 1
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load i64, i64* @QT1010_WR, align 8
  store i64 %314, i64* %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 1
  store i32 21, i32* %315, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 2
  store i32 31, i32* %316, align 4
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 3
  store i32 0, i32* %317, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 4
  store i64 0, i64* %318, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 5
  store i32 0, i32* %319, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i64 1
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load i64, i64* @QT1010_WR, align 8
  store i64 %322, i64* %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 1
  store i32 22, i32* %323, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 2
  store i32 255, i32* %324, align 4
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 3
  store i32 0, i32* %325, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 4
  store i64 0, i64* %326, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 5
  store i32 0, i32* %327, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i64 1
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = load i64, i64* @QT1010_WR, align 8
  store i64 %330, i64* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 1
  store i32 24, i32* %331, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 2
  store i32 255, i32* %332, align 4
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 3
  store i32 0, i32* %333, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 4
  store i64 0, i64* %334, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 5
  store i32 0, i32* %335, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i64 1
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 0
  %338 = load i64, i64* @QT1010_WR, align 8
  store i64 %338, i64* %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 1
  store i32 31, i32* %339, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 2
  store i32 255, i32* %340, align 4
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 3
  store i32 0, i32* %341, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 4
  store i64 0, i64* %342, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 5
  store i32 0, i32* %343, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i64 1
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 0
  %346 = load i64, i64* @QT1010_WR, align 8
  store i64 %346, i64* %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 1
  store i32 32, i32* %347, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 2
  store i32 255, i32* %348, align 4
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 3
  store i32 0, i32* %349, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 4
  store i64 0, i64* %350, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 5
  store i32 0, i32* %351, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i64 1
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 0
  %354 = load i64, i64* @QT1010_WR, align 8
  store i64 %354, i64* %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 1
  store i32 33, i32* %355, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 2
  store i32 83, i32* %356, align 4
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 3
  store i32 0, i32* %357, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 4
  store i64 0, i64* %358, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 5
  store i32 0, i32* %359, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i64 1
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  %362 = load i64, i64* @QT1010_WR, align 8
  store i64 %362, i64* %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 1
  store i32 37, i32* %363, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 2
  store i32 255, i32* %364, align 4
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 3
  store i32 0, i32* %365, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 4
  store i64 0, i64* %366, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 5
  store i32 0, i32* %367, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i64 1
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  %370 = load i64, i64* @QT1010_WR, align 8
  store i64 %370, i64* %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 1
  store i32 38, i32* %371, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 2
  store i32 21, i32* %372, align 4
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 3
  store i32 0, i32* %373, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 4
  store i64 0, i64* %374, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 5
  store i32 0, i32* %375, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i64 1
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  %378 = load i64, i64* @QT1010_WR, align 8
  store i64 %378, i64* %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 1
  store i32 0, i32* %379, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 2
  store i32 255, i32* %380, align 4
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 3
  store i32 0, i32* %381, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 4
  store i64 0, i64* %382, align 8
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 5
  store i32 0, i32* %383, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i64 1
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 0
  %386 = load i64, i64* @QT1010_WR, align 8
  store i64 %386, i64* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 1
  store i32 2, i32* %387, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 2
  store i32 0, i32* %388, align 4
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 3
  store i32 0, i32* %389, align 8
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 4
  store i64 0, i64* %390, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 5
  store i32 0, i32* %391, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i64 1
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 0
  %394 = load i64, i64* @QT1010_WR, align 8
  store i64 %394, i64* %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 1
  store i32 1, i32* %395, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 2
  store i32 0, i32* %396, align 4
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 3
  store i32 0, i32* %397, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 4
  store i64 0, i64* %398, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 5
  store i32 0, i32* %399, align 8
  %400 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %401 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %400, i32 0, i32 1
  %402 = load %struct.qt1010_priv*, %struct.qt1010_priv** %401, align 8
  store %struct.qt1010_priv* %402, %struct.qt1010_priv** %6, align 8
  %403 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %404 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* %8, align 4
  %406 = load i32, i32* %8, align 4
  %407 = load i32, i32* @QT1010_OFFSET, align 4
  %408 = add nsw i32 %406, %407
  %409 = load i32, i32* @QT1010_STEP, align 4
  %410 = sdiv i32 %408, %409
  store i32 %410, i32* %9, align 4
  %411 = load i32, i32* %9, align 4
  %412 = load i32, i32* @QT1010_STEP, align 4
  %413 = mul nsw i32 %411, %412
  %414 = load i32, i32* @QT1010_OFFSET, align 4
  %415 = sub nsw i32 %413, %414
  store i32 %415, i32* %8, align 4
  %416 = load i32, i32* %8, align 4
  %417 = load i32, i32* @QT1010_OFFSET, align 4
  %418 = add nsw i32 %416, %417
  %419 = srem i32 %418, 32000000
  store i32 %419, i32* %10, align 4
  %420 = load i32, i32* %8, align 4
  %421 = load i32, i32* @QT1010_OFFSET, align 4
  %422 = add nsw i32 %420, %421
  %423 = srem i32 %422, 4000000
  store i32 %423, i32* %11, align 4
  %424 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %425 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @FE_OFDM, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %437

431:                                              ; preds = %2
  %432 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %433 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  br label %438

437:                                              ; preds = %2
  br label %438

438:                                              ; preds = %437, %431
  %439 = phi i32 [ %436, %431 ], [ 0, %437 ]
  %440 = load %struct.qt1010_priv*, %struct.qt1010_priv** %6, align 8
  %441 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %440, i32 0, i32 4
  store i32 %439, i32* %441, align 4
  %442 = load i32, i32* %8, align 4
  %443 = load %struct.qt1010_priv*, %struct.qt1010_priv** %6, align 8
  %444 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %443, i32 0, i32 0
  store i32 %442, i32* %444, align 4
  %445 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %446 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 0
  %448 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %447, align 8
  %449 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %448, null
  br i1 %449, label %450, label %458

450:                                              ; preds = %438
  %451 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %452 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 0
  %454 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %453, align 8
  %455 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %456 = bitcast %struct.dvb_frontend* %455 to %struct.dvb_frontend.0*
  %457 = call i32 %454(%struct.dvb_frontend.0* %456, i32 1)
  br label %458

458:                                              ; preds = %450, %438
  %459 = load i32, i32* %8, align 4
  %460 = icmp slt i32 %459, 290000000
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  store i32 20, i32* %14, align 4
  br label %473

462:                                              ; preds = %458
  %463 = load i32, i32* %8, align 4
  %464 = icmp slt i32 %463, 610000000
  br i1 %464, label %465, label %466

465:                                              ; preds = %462
  store i32 52, i32* %14, align 4
  br label %472

466:                                              ; preds = %462
  %467 = load i32, i32* %8, align 4
  %468 = icmp slt i32 %467, 802000000
  br i1 %468, label %469, label %470

469:                                              ; preds = %466
  store i32 84, i32* %14, align 4
  br label %471

470:                                              ; preds = %466
  store i32 116, i32* %14, align 4
  br label %471

471:                                              ; preds = %470, %469
  br label %472

472:                                              ; preds = %471, %465
  br label %473

473:                                              ; preds = %472, %461
  %474 = load i32, i32* %14, align 4
  %475 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 2
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 3
  store i32 %474, i32* %476, align 16
  %477 = load i32, i32* %8, align 4
  %478 = load i32, i32* @QT1010_OFFSET, align 4
  %479 = add nsw i32 %477, %478
  %480 = sdiv i32 %479, 32000000
  %481 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 4
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 3
  store i32 %480, i32* %482, align 16
  %483 = load i32, i32* %10, align 4
  %484 = icmp slt i32 %483, 8000000
  br i1 %484, label %485, label %488

485:                                              ; preds = %473
  %486 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 6
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 3
  store i32 29, i32* %487, align 16
  br label %491

488:                                              ; preds = %473
  %489 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 6
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 3
  store i32 28, i32* %490, align 16
  br label %491

491:                                              ; preds = %488, %485
  %492 = load i32, i32* %10, align 4
  %493 = icmp slt i32 %492, 4000000
  br i1 %493, label %494, label %497

494:                                              ; preds = %491
  %495 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 7
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 3
  store i32 9, i32* %496, align 8
  br label %542

497:                                              ; preds = %491
  %498 = load i32, i32* %10, align 4
  %499 = icmp slt i32 %498, 8000000
  br i1 %499, label %500, label %503

500:                                              ; preds = %497
  %501 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 7
  %502 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i32 0, i32 3
  store i32 8, i32* %502, align 8
  br label %541

503:                                              ; preds = %497
  %504 = load i32, i32* %10, align 4
  %505 = icmp slt i32 %504, 12000000
  br i1 %505, label %506, label %509

506:                                              ; preds = %503
  %507 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 7
  %508 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %507, i32 0, i32 3
  store i32 15, i32* %508, align 8
  br label %540

509:                                              ; preds = %503
  %510 = load i32, i32* %10, align 4
  %511 = icmp slt i32 %510, 16000000
  br i1 %511, label %512, label %515

512:                                              ; preds = %509
  %513 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 7
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %513, i32 0, i32 3
  store i32 14, i32* %514, align 8
  br label %539

515:                                              ; preds = %509
  %516 = load i32, i32* %10, align 4
  %517 = icmp slt i32 %516, 20000000
  br i1 %517, label %518, label %521

518:                                              ; preds = %515
  %519 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 7
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i32 0, i32 3
  store i32 13, i32* %520, align 8
  br label %538

521:                                              ; preds = %515
  %522 = load i32, i32* %10, align 4
  %523 = icmp slt i32 %522, 24000000
  br i1 %523, label %524, label %527

524:                                              ; preds = %521
  %525 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 7
  %526 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %525, i32 0, i32 3
  store i32 12, i32* %526, align 8
  br label %537

527:                                              ; preds = %521
  %528 = load i32, i32* %10, align 4
  %529 = icmp slt i32 %528, 28000000
  br i1 %529, label %530, label %533

530:                                              ; preds = %527
  %531 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 7
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %531, i32 0, i32 3
  store i32 11, i32* %532, align 8
  br label %536

533:                                              ; preds = %527
  %534 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 7
  %535 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %534, i32 0, i32 3
  store i32 10, i32* %535, align 8
  br label %536

536:                                              ; preds = %533, %530
  br label %537

537:                                              ; preds = %536, %524
  br label %538

538:                                              ; preds = %537, %518
  br label %539

539:                                              ; preds = %538, %512
  br label %540

540:                                              ; preds = %539, %506
  br label %541

541:                                              ; preds = %540, %500
  br label %542

542:                                              ; preds = %541, %494
  %543 = load i32, i32* %11, align 4
  %544 = icmp slt i32 %543, 2000000
  br i1 %544, label %545, label %548

545:                                              ; preds = %542
  %546 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 8
  %547 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %546, i32 0, i32 3
  store i32 69, i32* %547, align 16
  br label %551

548:                                              ; preds = %542
  %549 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 8
  %550 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %549, i32 0, i32 3
  store i32 68, i32* %550, align 16
  br label %551

551:                                              ; preds = %548, %545
  store i32 120, i32* %13, align 4
  %552 = load i32, i32* %13, align 4
  %553 = load i32, i32* %11, align 4
  %554 = load i32, i32* @QT1010_STEP, align 4
  %555 = sdiv i32 %553, %554
  %556 = mul nsw i32 %555, 8
  %557 = sub nsw i32 %552, %556
  %558 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 10
  %559 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %558, i32 0, i32 3
  store i32 %557, i32* %559, align 16
  %560 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 13
  %561 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %560, i32 0, i32 3
  store i32 253, i32* %561, align 8
  %562 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 14
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i32 0, i32 3
  store i32 145, i32* %563, align 16
  %564 = load i32, i32* %8, align 4
  %565 = icmp slt i32 %564, 450000000
  br i1 %565, label %566, label %569

566:                                              ; preds = %551
  %567 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 15
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %567, i32 0, i32 3
  store i32 208, i32* %568, align 8
  br label %600

569:                                              ; preds = %551
  %570 = load i32, i32* %8, align 4
  %571 = icmp slt i32 %570, 482000000
  br i1 %571, label %572, label %575

572:                                              ; preds = %569
  %573 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 15
  %574 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %573, i32 0, i32 3
  store i32 209, i32* %574, align 8
  br label %599

575:                                              ; preds = %569
  %576 = load i32, i32* %8, align 4
  %577 = icmp slt i32 %576, 514000000
  br i1 %577, label %578, label %581

578:                                              ; preds = %575
  %579 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 15
  %580 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %579, i32 0, i32 3
  store i32 212, i32* %580, align 8
  br label %598

581:                                              ; preds = %575
  %582 = load i32, i32* %8, align 4
  %583 = icmp slt i32 %582, 546000000
  br i1 %583, label %584, label %587

584:                                              ; preds = %581
  %585 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 15
  %586 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %585, i32 0, i32 3
  store i32 215, i32* %586, align 8
  br label %597

587:                                              ; preds = %581
  %588 = load i32, i32* %8, align 4
  %589 = icmp slt i32 %588, 610000000
  br i1 %589, label %590, label %593

590:                                              ; preds = %587
  %591 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 15
  %592 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %591, i32 0, i32 3
  store i32 218, i32* %592, align 8
  br label %596

593:                                              ; preds = %587
  %594 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 15
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 0, i32 3
  store i32 208, i32* %595, align 8
  br label %596

596:                                              ; preds = %593, %590
  br label %597

597:                                              ; preds = %596, %584
  br label %598

598:                                              ; preds = %597, %578
  br label %599

599:                                              ; preds = %598, %572
  br label %600

600:                                              ; preds = %599, %566
  %601 = load i32, i32* %14, align 4
  %602 = and i32 %601, 240
  %603 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 35
  %604 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %603, i32 0, i32 3
  store i32 %602, i32* %604, align 8
  %605 = load i32, i32* %10, align 4
  %606 = icmp slt i32 %605, 8000000
  br i1 %606, label %607, label %608

607:                                              ; preds = %600
  store i32 0, i32* %13, align 4
  br label %629

608:                                              ; preds = %600
  %609 = load i32, i32* %10, align 4
  %610 = icmp slt i32 %609, 12000000
  br i1 %610, label %611, label %612

611:                                              ; preds = %608
  store i32 1, i32* %13, align 4
  br label %628

612:                                              ; preds = %608
  %613 = load i32, i32* %10, align 4
  %614 = icmp slt i32 %613, 16000000
  br i1 %614, label %615, label %616

615:                                              ; preds = %612
  store i32 2, i32* %13, align 4
  br label %627

616:                                              ; preds = %612
  %617 = load i32, i32* %10, align 4
  %618 = icmp slt i32 %617, 24000000
  br i1 %618, label %619, label %620

619:                                              ; preds = %616
  store i32 3, i32* %13, align 4
  br label %626

620:                                              ; preds = %616
  %621 = load i32, i32* %10, align 4
  %622 = icmp slt i32 %621, 28000000
  br i1 %622, label %623, label %624

623:                                              ; preds = %620
  store i32 4, i32* %13, align 4
  br label %625

624:                                              ; preds = %620
  store i32 5, i32* %13, align 4
  br label %625

625:                                              ; preds = %624, %623
  br label %626

626:                                              ; preds = %625, %619
  br label %627

627:                                              ; preds = %626, %615
  br label %628

628:                                              ; preds = %627, %611
  br label %629

629:                                              ; preds = %628, %607
  %630 = load %struct.qt1010_priv*, %struct.qt1010_priv** %6, align 8
  %631 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = add nsw i32 %632, 14
  %634 = load i32, i32* %13, align 4
  %635 = add nsw i32 %633, %634
  %636 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 40
  %637 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %636, i32 0, i32 3
  store i32 %635, i32* %637, align 16
  %638 = load i32, i32* %10, align 4
  %639 = icmp slt i32 %638, 8000000
  br i1 %639, label %640, label %641

640:                                              ; preds = %629
  store i32 0, i32* %13, align 4
  br label %662

641:                                              ; preds = %629
  %642 = load i32, i32* %10, align 4
  %643 = icmp slt i32 %642, 12000000
  br i1 %643, label %644, label %645

644:                                              ; preds = %641
  store i32 1, i32* %13, align 4
  br label %661

645:                                              ; preds = %641
  %646 = load i32, i32* %10, align 4
  %647 = icmp slt i32 %646, 20000000
  br i1 %647, label %648, label %649

648:                                              ; preds = %645
  store i32 2, i32* %13, align 4
  br label %660

649:                                              ; preds = %645
  %650 = load i32, i32* %10, align 4
  %651 = icmp slt i32 %650, 24000000
  br i1 %651, label %652, label %653

652:                                              ; preds = %649
  store i32 3, i32* %13, align 4
  br label %659

653:                                              ; preds = %649
  %654 = load i32, i32* %10, align 4
  %655 = icmp slt i32 %654, 28000000
  br i1 %655, label %656, label %657

656:                                              ; preds = %653
  store i32 4, i32* %13, align 4
  br label %658

657:                                              ; preds = %653
  store i32 5, i32* %13, align 4
  br label %658

658:                                              ; preds = %657, %656
  br label %659

659:                                              ; preds = %658, %652
  br label %660

660:                                              ; preds = %659, %648
  br label %661

661:                                              ; preds = %660, %644
  br label %662

662:                                              ; preds = %661, %640
  %663 = load %struct.qt1010_priv*, %struct.qt1010_priv** %6, align 8
  %664 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %663, i32 0, i32 2
  %665 = load i32, i32* %664, align 4
  %666 = add nsw i32 %665, 13
  %667 = load i32, i32* %13, align 4
  %668 = add nsw i32 %666, %667
  %669 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 41
  %670 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %669, i32 0, i32 3
  store i32 %668, i32* %670, align 8
  %671 = load %struct.qt1010_priv*, %struct.qt1010_priv** %6, align 8
  %672 = getelementptr inbounds %struct.qt1010_priv, %struct.qt1010_priv* %671, i32 0, i32 3
  %673 = load i32, i32* %672, align 4
  %674 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 43
  %675 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %674, i32 0, i32 3
  store i32 %673, i32* %675, align 8
  %676 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 45
  %677 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %676, i32 0, i32 3
  store i32 146, i32* %677, align 8
  %678 = load i32, i32* %8, align 4
  %679 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 2
  %680 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %679, i32 0, i32 3
  %681 = load i32, i32* %680, align 16
  %682 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 4
  %683 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %682, i32 0, i32 3
  %684 = load i32, i32* %683, align 16
  %685 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 6
  %686 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %685, i32 0, i32 3
  %687 = load i32, i32* %686, align 16
  %688 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 7
  %689 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %688, i32 0, i32 3
  %690 = load i32, i32* %689, align 8
  %691 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 8
  %692 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %691, i32 0, i32 3
  %693 = load i32, i32* %692, align 16
  %694 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 10
  %695 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %694, i32 0, i32 3
  %696 = load i32, i32* %695, align 16
  %697 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 13
  %698 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %697, i32 0, i32 3
  %699 = load i32, i32* %698, align 8
  %700 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 14
  %701 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %700, i32 0, i32 3
  %702 = load i32, i32* %701, align 16
  %703 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 15
  %704 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %703, i32 0, i32 3
  %705 = load i32, i32* %704, align 8
  %706 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 35
  %707 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %706, i32 0, i32 3
  %708 = load i32, i32* %707, align 8
  %709 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 40
  %710 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %709, i32 0, i32 3
  %711 = load i32, i32* %710, align 16
  %712 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 41
  %713 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %712, i32 0, i32 3
  %714 = load i32, i32* %713, align 8
  %715 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 43
  %716 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %715, i32 0, i32 3
  %717 = load i32, i32* %716, align 8
  %718 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 45
  %719 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %718, i32 0, i32 3
  %720 = load i32, i32* %719, align 8
  %721 = call i32 @dprintk(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i32 %678, i32 %681, i32 %684, i32 %687, i32 %690, i32 %693, i32 %696, i32 %699, i32 %702, i32 %705, i32 %708, i32 %711, i32 %714, i32 %717, i32 %720)
  store i32 0, i32* %12, align 4
  br label %722

722:                                              ; preds = %762, %662
  %723 = load i32, i32* %12, align 4
  %724 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 0
  %725 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %724)
  %726 = icmp slt i32 %723, %725
  br i1 %726, label %727, label %765

727:                                              ; preds = %722
  %728 = load i32, i32* %12, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 %729
  %731 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %730, i32 0, i32 4
  %732 = load i64, i64* %731, align 8
  %733 = load i64, i64* @QT1010_WR, align 8
  %734 = icmp eq i64 %732, %733
  br i1 %734, label %735, label %748

735:                                              ; preds = %727
  %736 = load %struct.qt1010_priv*, %struct.qt1010_priv** %6, align 8
  %737 = load i32, i32* %12, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 %738
  %740 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %739, i32 0, i32 5
  %741 = load i32, i32* %740, align 8
  %742 = load i32, i32* %12, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 %743
  %745 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %744, i32 0, i32 3
  %746 = load i32, i32* %745, align 8
  %747 = call i32 @qt1010_writereg(%struct.qt1010_priv* %736, i32 %741, i32 %746)
  store i32 %747, i32* %7, align 4
  br label %756

748:                                              ; preds = %727
  %749 = load %struct.qt1010_priv*, %struct.qt1010_priv** %6, align 8
  %750 = load i32, i32* %12, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds [48 x %struct.TYPE_11__], [48 x %struct.TYPE_11__]* %15, i64 0, i64 %751
  %753 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %752, i32 0, i32 5
  %754 = load i32, i32* %753, align 8
  %755 = call i32 @qt1010_readreg(%struct.qt1010_priv* %749, i32 %754, i32* %13)
  store i32 %755, i32* %7, align 4
  br label %756

756:                                              ; preds = %748, %735
  %757 = load i32, i32* %7, align 4
  %758 = icmp ne i32 %757, 0
  br i1 %758, label %759, label %761

759:                                              ; preds = %756
  %760 = load i32, i32* %7, align 4
  store i32 %760, i32* %3, align 4
  br label %786

761:                                              ; preds = %756
  br label %762

762:                                              ; preds = %761
  %763 = load i32, i32* %12, align 4
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %12, align 4
  br label %722

765:                                              ; preds = %722
  %766 = load i64, i64* @debug, align 8
  %767 = icmp ne i64 %766, 0
  br i1 %767, label %768, label %771

768:                                              ; preds = %765
  %769 = load %struct.qt1010_priv*, %struct.qt1010_priv** %6, align 8
  %770 = call i32 @qt1010_dump_regs(%struct.qt1010_priv* %769)
  br label %771

771:                                              ; preds = %768, %765
  %772 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %773 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %772, i32 0, i32 0
  %774 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %773, i32 0, i32 0
  %775 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %774, align 8
  %776 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %775, null
  br i1 %776, label %777, label %785

777:                                              ; preds = %771
  %778 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %779 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %778, i32 0, i32 0
  %780 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %779, i32 0, i32 0
  %781 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %780, align 8
  %782 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %783 = bitcast %struct.dvb_frontend* %782 to %struct.dvb_frontend.0*
  %784 = call i32 %781(%struct.dvb_frontend.0* %783, i32 0)
  br label %785

785:                                              ; preds = %777, %771
  store i32 0, i32* %3, align 4
  br label %786

786:                                              ; preds = %785, %759
  %787 = load i32, i32* %3, align 4
  ret i32 %787
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @qt1010_writereg(%struct.qt1010_priv*, i32, i32) #1

declare dso_local i32 @qt1010_readreg(%struct.qt1010_priv*, i32, i32*) #1

declare dso_local i32 @qt1010_dump_regs(%struct.qt1010_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
