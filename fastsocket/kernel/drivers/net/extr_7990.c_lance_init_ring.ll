; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.lance_private = type { i32, i32, i64, i64, i64, i64, i64, %struct.lance_init_block*, %struct.lance_init_block* }
%struct.lance_init_block = type { i32, i32, i32, i32, i64*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__***, %struct.TYPE_2__***, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32, i64, i64 }

@LE_MO_PROM = common dso_local global i32 0, align 4
@DEBUG_IRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"TX rings:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%d: 0x%8.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"RX rings:\0A\00", align 1
@LE_R1_OWN = common dso_local global i32 0, align 4
@RX_BUFF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"RX ptr: %8.8x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"TX ptr: %8.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lance_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca %struct.lance_init_block*, align 8
  %5 = alloca %struct.lance_init_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.lance_private* @netdev_priv(%struct.net_device* %8)
  store %struct.lance_private* %9, %struct.lance_private** %3, align 8
  %10 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %11 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %10, i32 0, i32 8
  %12 = load %struct.lance_init_block*, %struct.lance_init_block** %11, align 8
  store %struct.lance_init_block* %12, %struct.lance_init_block** %4, align 8
  %13 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %14 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %13, i32 0, i32 7
  %15 = load %struct.lance_init_block*, %struct.lance_init_block** %14, align 8
  store %struct.lance_init_block* %15, %struct.lance_init_block** %5, align 8
  %16 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %17 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %19 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %21 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %23 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @LE_MO_PROM, align 4
  %25 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %26 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %25, i32 0, i32 10
  store volatile i32 %24, i32* %26, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %44, %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %39 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %38, i32 0, i32 9
  %40 = load volatile i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %27

47:                                               ; preds = %27
  %48 = load i64, i64* @DEBUG_IRING, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %54 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %117, %52
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %58 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 1, %59
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %120

62:                                               ; preds = %55
  %63 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %64 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %63, i32 0, i32 8
  %65 = load volatile %struct.TYPE_2__***, %struct.TYPE_2__**** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %65, i64 %67
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 0
  %71 = call i32 @LANCE_ADDR(%struct.TYPE_2__** %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %74 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %73, i32 0, i32 5
  %75 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 16
  %82 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %83 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %82, i32 0, i32 5
  %84 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %81, i32* %88, align 4
  %89 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %90 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %89, i32 0, i32 5
  %91 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 8
  store i64 0, i64* %95, align 8
  %96 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %97 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %96, i32 0, i32 5
  %98 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i32 61440, i32* %102, align 8
  %103 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %104 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %103, i32 0, i32 5
  %105 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 7
  store i64 0, i64* %109, align 8
  %110 = load i64, i64* @DEBUG_IRING, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %62
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %62
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %55

120:                                              ; preds = %55
  %121 = load i64, i64* @DEBUG_IRING, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %120
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %192, %125
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %129 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 1, %130
  %132 = icmp slt i32 %127, %131
  br i1 %132, label %133, label %195

133:                                              ; preds = %126
  %134 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %135 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %134, i32 0, i32 7
  %136 = load volatile %struct.TYPE_2__***, %struct.TYPE_2__**** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %136, i64 %138
  %140 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %140, i64 0
  %142 = call i32 @LANCE_ADDR(%struct.TYPE_2__** %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %145 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %144, i32 0, i32 6
  %146 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 3
  store i32 %143, i32* %150, align 4
  %151 = load i32, i32* %6, align 4
  %152 = ashr i32 %151, 16
  %153 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %154 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %153, i32 0, i32 6
  %155 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 4
  store i32 %152, i32* %159, align 8
  %160 = load i32, i32* @LE_R1_OWN, align 4
  %161 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %162 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %161, i32 0, i32 6
  %163 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 6
  store i32 %160, i32* %167, align 8
  %168 = load i32, i32* @RX_BUFF_SIZE, align 4
  %169 = sub nsw i32 0, %168
  %170 = or i32 %169, 61440
  %171 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %172 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %171, i32 0, i32 6
  %173 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 2
  store i32 %170, i32* %177, align 8
  %178 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %179 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %178, i32 0, i32 6
  %180 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 5
  store i64 0, i64* %184, align 8
  %185 = load i64, i64* @DEBUG_IRING, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %133
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %6, align 4
  %190 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %187, %133
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %126

195:                                              ; preds = %126
  %196 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %197 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %196, i32 0, i32 6
  %198 = call i32 @LANCE_ADDR(%struct.TYPE_2__** %197)
  store i32 %198, i32* %6, align 4
  %199 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %200 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = shl i32 %201, 13
  %203 = load i32, i32* %6, align 4
  %204 = ashr i32 %203, 16
  %205 = or i32 %202, %204
  %206 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %207 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %206, i32 0, i32 0
  store volatile i32 %205, i32* %207, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %210 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %209, i32 0, i32 1
  store volatile i32 %208, i32* %210, align 4
  %211 = load i64, i64* @DEBUG_IRING, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %195
  %214 = load i32, i32* %6, align 4
  %215 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %213, %195
  %217 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %218 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %217, i32 0, i32 5
  %219 = call i32 @LANCE_ADDR(%struct.TYPE_2__** %218)
  store i32 %219, i32* %6, align 4
  %220 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %221 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = shl i32 %222, 13
  %224 = load i32, i32* %6, align 4
  %225 = ashr i32 %224, 16
  %226 = or i32 %223, %225
  %227 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %228 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %227, i32 0, i32 2
  store volatile i32 %226, i32* %228, align 8
  %229 = load i32, i32* %6, align 4
  %230 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %231 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %230, i32 0, i32 3
  store volatile i32 %229, i32* %231, align 4
  %232 = load i64, i64* @DEBUG_IRING, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %216
  %235 = load i32, i32* %6, align 4
  %236 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %234, %216
  %238 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %239 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %238, i32 0, i32 4
  %240 = load volatile i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 0
  store i64 0, i64* %241, align 8
  %242 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %243 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %242, i32 0, i32 4
  %244 = load volatile i64*, i64** %243, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 1
  store i64 0, i64* %245, align 8
  %246 = call i32 (...) @PRINT_RINGS()
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @LANCE_ADDR(%struct.TYPE_2__**) #1

declare dso_local i32 @PRINT_RINGS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
