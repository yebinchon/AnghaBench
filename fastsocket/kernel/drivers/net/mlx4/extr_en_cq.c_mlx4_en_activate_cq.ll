; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_cq.c_mlx4_en_activate_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_cq.c_mlx4_en_activate_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.mlx4_en_cq*, %struct.TYPE_10__*, %struct.mlx4_en_dev* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i8* }
%struct.mlx4_en_dev = type { i32, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.mlx4_en_cq = type { i64, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64*, i64* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i64* }
%struct.cpu_rmap = type { i32 }

@RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Failed Assigning an EQ to %s ,Falling back to legacy EQ's\0A\00", align 1
@mlx4_en_tx_irq = common dso_local global i32 0, align 4
@mlx4_en_rx_irq = common dso_local global i32 0, align 4
@mlx4_en_cq_event = common dso_local global i32 0, align 4
@mlx4_en_poll_rx_cq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [25 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.cpu_rmap*, align 8
  %13 = alloca %struct.mlx4_en_cq*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 6
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %15, align 8
  store %struct.mlx4_en_dev* %16, %struct.mlx4_en_dev** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %18 = call %struct.cpu_rmap* @mlx4_en_rx_cpu_rmap(%struct.mlx4_en_priv* %17)
  store %struct.cpu_rmap* %18, %struct.cpu_rmap** %12, align 8
  %19 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  store i64* %33, i64** %36, align 8
  %37 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  store i64* %42, i64** %45, align 8
  %46 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  store i64 0, i64* %53, align 8
  %54 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memset(i32 %56, i32 0, i32 %59)
  %61 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %147

66:                                               ; preds = %3
  %67 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %125

74:                                               ; preds = %66
  %75 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %124, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 0
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %81, i32 0, i32 5
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %85, i32 %88)
  %90 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 0
  %94 = load %struct.cpu_rmap*, %struct.cpu_rmap** %12, align 8
  %95 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %96 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %95, i32 0, i32 1
  %97 = call i64 @mlx4_assign_eq(%struct.TYPE_16__* %92, i8* %93, %struct.cpu_rmap* %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %79
  %100 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %106 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %110 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = urem i64 %108, %115
  %117 = trunc i64 %116 to i32
  %118 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %121 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 0
  %122 = call i32 @mlx4_warn(%struct.mlx4_en_dev* %120, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %99, %79
  br label %124

124:                                              ; preds = %123, %74
  br label %146

125:                                              ; preds = %66
  %126 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %127 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %132 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %130, %133
  %135 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %136 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %135, i32 0, i32 1
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = urem i64 %134, %141
  %143 = trunc i64 %142 to i32
  %144 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %145 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %125, %124
  br label %164

147:                                              ; preds = %3
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %150 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = srem i32 %148, %151
  store i32 %152, i32* %7, align 4
  %153 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %154 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %153, i32 0, i32 4
  %155 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %155, i64 %157
  store %struct.mlx4_en_cq* %158, %struct.mlx4_en_cq** %13, align 8
  %159 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %13, align 8
  %160 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %163 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %147, %146
  %165 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %166 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %164
  %170 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %171 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %170, i32 0, i32 3
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %174 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %181 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %169, %164
  %183 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %184 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %189 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %204, label %193

193:                                              ; preds = %187, %182
  %194 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %195 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %193
  %199 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %200 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198, %187
  store i32 1, i32* %11, align 4
  br label %205

205:                                              ; preds = %204, %198, %193
  %206 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %207 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %206, i32 0, i32 1
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %210 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %213 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %216 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %215, i32 0, i32 0
  %217 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %218 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %223 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %222, i32 0, i32 5
  %224 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %225 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @mlx4_cq_alloc(%struct.TYPE_16__* %208, i32 %211, i32* %214, i32* %216, i32 %221, %struct.TYPE_17__* %223, i32 %226, i32 0, i32 %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %205
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %4, align 4
  br label %267

233:                                              ; preds = %205
  %234 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %235 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, i32* @mlx4_en_tx_irq, align 4
  br label %242

240:                                              ; preds = %233
  %241 = load i32, i32* @mlx4_en_rx_irq, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  %244 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %245 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  store i32 %243, i32* %246, align 4
  %247 = load i32, i32* @mlx4_en_cq_event, align 4
  %248 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %249 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 0
  store i32 %247, i32* %250, align 8
  %251 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %252 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %266, label %255

255:                                              ; preds = %242
  %256 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %257 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %260 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %259, i32 0, i32 3
  %261 = load i32, i32* @mlx4_en_poll_rx_cq, align 4
  %262 = call i32 @netif_napi_add(i32 %258, i32* %260, i32 %261, i32 64)
  %263 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %264 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %263, i32 0, i32 3
  %265 = call i32 @napi_enable(i32* %264)
  br label %266

266:                                              ; preds = %255, %242
  store i32 0, i32* %4, align 4
  br label %267

267:                                              ; preds = %266, %231
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local %struct.cpu_rmap* @mlx4_en_rx_cpu_rmap(%struct.mlx4_en_priv*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i64 @mlx4_assign_eq(%struct.TYPE_16__*, i8*, %struct.cpu_rmap*, i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_en_dev*, i8*, i8*) #1

declare dso_local i32 @mlx4_cq_alloc(%struct.TYPE_16__*, i32, i32*, i32*, i32, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
