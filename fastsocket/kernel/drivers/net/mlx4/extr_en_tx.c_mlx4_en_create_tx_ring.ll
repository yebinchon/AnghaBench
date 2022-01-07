; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_create_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_create_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_12__, %struct.mlx4_en_dev* }
%struct.TYPE_12__ = type { i32 }
%struct.mlx4_en_dev = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_14__, i32, %struct.TYPE_16__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }

@inline_thold = common dso_local global i32 0, align 4
@MAX_INLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed allocating tx_info ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Allocated tx_info ring at addr:%p size:%d\0A\00", align 1
@MAX_DESC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed allocating bounce buffer\0A\00", align 1
@MLX4_EN_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed allocating hwq resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to map TX buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"Allocated TX ring (addr:%p) - buf:%p size:%d buf_size:%d dma:%llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed allocating qp %d\0A\00", align 1
@mlx4_en_sqp_event = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"working without blueflame (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_create_tx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_tx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_en_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %7, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 1
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %16, align 8
  store %struct.mlx4_en_dev* %17, %struct.mlx4_en_dev** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @inline_thold, align 4
  %29 = load i32, i32* @MAX_INLINE, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  store i32 %30, i32* @inline_thold, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32* @vmalloc(i32 %35)
  %37 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %37, i32 0, i32 5
  store i32* %36, i32** %38, align 8
  %39 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %5
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %45 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %227

48:                                               ; preds = %5
  %49 = load i32, i32* @DRV, align 4
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %51 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %49, %struct.mlx4_en_priv* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %53, i32 %54)
  %56 = load i32, i32* @MAX_DESC_SIZE, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32* @kmalloc(i32 %56, i32 %57)
  %59 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %59, i32 0, i32 6
  store i32* %58, i32** %60, align 8
  %61 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %48
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %67 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %219

70:                                               ; preds = %48
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %71, %74
  %76 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %77 = call i32 @ALIGN(i32 %75, i32 %76)
  %78 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %83, i32 0, i32 8
  %85 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = mul nsw i32 2, %88
  %90 = call i32 @mlx4_alloc_hwq_res(i32 %82, %struct.TYPE_14__* %84, i32 %87, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %70
  %94 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %95 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %212

96:                                               ; preds = %70
  %97 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = call i32 @mlx4_en_map_buffer(%struct.TYPE_15__* %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %105 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %202

106:                                              ; preds = %96
  %107 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %113, i32 0, i32 12
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @DRV, align 4
  %116 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %117 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %118 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %118, i32 0, i32 12
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %122 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %115, %struct.mlx4_en_priv* %116, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), %struct.mlx4_en_tx_ring* %117, i32 %120, i32 %123, i32 %126, i64 %132)
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %136 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %138 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %141 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %144 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %143, i32 0, i32 11
  %145 = call i32 @mlx4_qp_alloc(i32 %139, i32 %142, %struct.TYPE_13__* %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %106
  %149 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %150 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %151 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  br label %197

154:                                              ; preds = %106
  %155 = load i32, i32* @mlx4_en_sqp_event, align 4
  %156 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %157 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %156, i32 0, i32 11
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %160 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %163 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %162, i32 0, i32 10
  %164 = call i32 @mlx4_bf_alloc(i32 %161, %struct.TYPE_16__* %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %154
  %168 = load i32, i32* @DRV, align 4
  %169 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i32 (i32, %struct.mlx4_en_priv*, i8*, ...) @en_dbg(i32 %168, %struct.mlx4_en_priv* %169, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  %172 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %173 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %172, i32 0, i32 2
  %174 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %175 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %174, i32 0, i32 10
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store %struct.TYPE_11__* %173, %struct.TYPE_11__** %176, align 8
  %177 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %178 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %181 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %180, i32 0, i32 10
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 4
  %185 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %186 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %185, i32 0, i32 4
  store i32 0, i32* %186, align 8
  br label %190

187:                                              ; preds = %154
  %188 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %189 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %188, i32 0, i32 4
  store i32 1, i32* %189, align 8
  br label %190

190:                                              ; preds = %187, %167
  %191 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %192 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %196 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %195, i32 0, i32 9
  store i32 %194, i32* %196, align 8
  store i32 0, i32* %6, align 4
  br label %227

197:                                              ; preds = %148
  %198 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %199 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %198, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = call i32 @mlx4_en_unmap_buffer(%struct.TYPE_15__* %200)
  br label %202

202:                                              ; preds = %197, %103
  %203 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %204 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %207 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %206, i32 0, i32 8
  %208 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %209 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @mlx4_free_hwq_res(i32 %205, %struct.TYPE_14__* %207, i32 %210)
  br label %212

212:                                              ; preds = %202, %93
  %213 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %214 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %213, i32 0, i32 6
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @kfree(i32* %215)
  %217 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %218 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %217, i32 0, i32 6
  store i32* null, i32** %218, align 8
  br label %219

219:                                              ; preds = %212, %65
  %220 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %221 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @vfree(i32* %222)
  %224 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %8, align 8
  %225 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %224, i32 0, i32 5
  store i32* null, i32** %225, align 8
  %226 = load i32, i32* %14, align 4
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %219, %190, %43
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mlx4_alloc_hwq_res(i32, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @mlx4_en_map_buffer(%struct.TYPE_15__*) #1

declare dso_local i32 @mlx4_qp_alloc(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @mlx4_bf_alloc(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @mlx4_en_unmap_buffer(%struct.TYPE_15__*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
