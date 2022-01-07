; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_corkscrew_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c515.c_corkscrew_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.pnp_dev = type { i32 }
%struct.corkscrew_private = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"3c515\00", align 1
@MAX_UNITS = common dso_local global i32 0, align 4
@options = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: 3Com %s at %#3x,\00", align 1
@EEPROM_Read = common dso_local global i64 0, align 8
@Wn0EepromCmd = common dso_local global i32 0, align 4
@Wn0EepromData = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c" ***INVALID CHECKSUM %4.4x*** \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %pM\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c", DMA %d allocation failed\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c", DMA %d\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c", IRQ %d\0A\00", align 1
@corkscrew_debug = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c" *** Warning: this IRQ is unlikely to work! ***\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"5:3\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"3:1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"3:5\00", align 1
@__const.corkscrew_setup.ram_split = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)], align 16
@Wn3_Options = common dso_local global i32 0, align 4
@Wn3_Config = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [56 x i8] c"  Internal config register is %4.4x, transceivers %#x.\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"  %dK %s-wide RAM %s Rx:Tx split, %s%s interface.\0A\00", align 1
@Ram_size = common dso_local global i32 0, align 4
@Ram_width = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@Ram_split = common dso_local global i32 0, align 4
@Ram_split_shift = common dso_local global i32 0, align 4
@Autoselect = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"autoselect/\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@media_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@Xcvr = common dso_local global i32 0, align 4
@Xcvr_shift = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [47 x i8] c"  Media override to transceiver type %d (%s).\0A\00", align 1
@netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@netdev_ethtool_ops = common dso_local global i32 0, align 4
@root_corkscrew_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.pnp_dev*, i32)* @corkscrew_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corkscrew_setup(%struct.net_device* %0, i32 %1, %struct.pnp_dev* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pnp_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.corkscrew_private*, align 8
  %10 = alloca [64 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [4 x i8*], align 16
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pnp_dev* %2, %struct.pnp_dev** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.corkscrew_private* @netdev_priv(%struct.net_device* %18)
  store %struct.corkscrew_private* %19, %struct.corkscrew_private** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 8194
  %22 = call i32 @inw(i32 %21)
  %23 = and i32 %22, 15
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 8192
  %32 = call i32 @inw(i32 %31)
  %33 = and i32 %32, 7
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %37 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %42 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %45 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %44, i32 0, i32 13
  store %struct.net_device* %43, %struct.net_device** %45, align 8
  %46 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %47 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MAX_UNITS, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %56 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %55, i32 0, i32 1
  store i32 -1, i32* %56, align 8
  br label %65

57:                                               ; preds = %50
  %58 = load i32*, i32** @options, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %64 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %57, %54
  br label %66

66:                                               ; preds = %65, %4
  %67 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %68 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %66
  %72 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %73 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 7
  %76 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %77 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %79 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %84 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %83, i32 0, i32 2
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %71
  %86 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %87 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 8
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %94 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %96 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 16
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  %102 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %103 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  br label %111

104:                                              ; preds = %66
  %105 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %106 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %105, i32 0, i32 2
  store i32 7, i32* %106, align 4
  %107 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %108 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %107, i32 0, i32 3
  store i32 0, i32* %108, align 8
  %109 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %110 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %109, i32 0, i32 4
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %104, %85
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %116 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %114, i8* %117, i32 %118)
  %120 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %121 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %120, i32 0, i32 11
  %122 = call i32 @spin_lock_init(i32* %121)
  %123 = call i32 @EL3WINDOW(i32 0)
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %184, %111
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 24
  br i1 %126, label %127, label %187

127:                                              ; preds = %124
  %128 = load %struct.net_device*, %struct.net_device** %5, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = zext i32 %130 to i64
  %132 = inttoptr i64 %131 to i32*
  store i32* %132, i32** %14, align 8
  %133 = load i64, i64* @EEPROM_Read, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %133, %135
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @Wn0EepromCmd, align 4
  %139 = add nsw i32 %137, %138
  %140 = call i32 @outw(i64 %136, i32 %139)
  store i32 4, i32* %15, align 4
  br label %141

141:                                              ; preds = %154, %127
  %142 = load i32, i32* %15, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = call i32 @udelay(i32 162)
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @Wn0EepromCmd, align 4
  %148 = add nsw i32 %146, %147
  %149 = call i32 @inw(i32 %148)
  %150 = and i32 %149, 512
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %157

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %15, align 4
  br label %141

157:                                              ; preds = %152, %141
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @Wn0EepromData, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i32 @inw(i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %163
  store i32 %161, i32* %164, align 4
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %11, align 4
  %170 = xor i32 %169, %168
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %171, 3
  br i1 %172, label %173, label %183

173:                                              ; preds = %157
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @htons(i32 %177)
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %178, i32* %182, align 4
  br label %183

183:                                              ; preds = %173, %157
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %124

187:                                              ; preds = %124
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = lshr i32 %189, 8
  %191 = xor i32 %188, %190
  %192 = and i32 %191, 255
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @pr_cont(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %195, %187
  %199 = load %struct.net_device*, %struct.net_device** %5, align 8
  %200 = getelementptr inbounds %struct.net_device, %struct.net_device* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  %203 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 16
  %204 = load i32, i32* %203, align 16
  %205 = icmp eq i32 %204, 4551
  br i1 %205, label %206, label %225

206:                                              ; preds = %198
  %207 = load %struct.net_device*, %struct.net_device** %5, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @request_dma(i32 %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %206
  %213 = load %struct.net_device*, %struct.net_device** %5, align 8
  %214 = getelementptr inbounds %struct.net_device, %struct.net_device* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @pr_cont(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %215)
  %217 = load %struct.net_device*, %struct.net_device** %5, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 2
  store i32 0, i32* %218, align 8
  br label %224

219:                                              ; preds = %206
  %220 = load %struct.net_device*, %struct.net_device** %5, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %219, %212
  br label %225

225:                                              ; preds = %224, %198
  %226 = load %struct.net_device*, %struct.net_device** %5, align 8
  %227 = getelementptr inbounds %struct.net_device, %struct.net_device* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %228)
  %230 = load i32, i32* @corkscrew_debug, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %225
  %233 = load %struct.net_device*, %struct.net_device** %5, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp sle i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %232
  %238 = load %struct.net_device*, %struct.net_device** %5, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %240, 15
  br i1 %241, label %242, label %244

242:                                              ; preds = %237, %232
  %243 = call i32 @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %237, %225
  %245 = bitcast [4 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %245, i8* align 16 bitcast ([4 x i8*]* @__const.corkscrew_setup.ram_split to i8*), i64 32, i1 false)
  %246 = call i32 @EL3WINDOW(i32 3)
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @Wn3_Options, align 4
  %249 = add nsw i32 %247, %248
  %250 = call i32 @inw(i32 %249)
  %251 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %252 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* @Wn3_Config, align 8
  %256 = add nsw i64 %254, %255
  %257 = call i32 @inl(i64 %256)
  store i32 %257, i32* %17, align 4
  %258 = load i32, i32* @corkscrew_debug, align 4
  %259 = icmp sgt i32 %258, 1
  br i1 %259, label %260, label %267

260:                                              ; preds = %244
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* @Wn3_Options, align 4
  %264 = add nsw i32 %262, %263
  %265 = call i32 @inw(i32 %264)
  %266 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 %261, i32 %265)
  br label %267

267:                                              ; preds = %260, %244
  %268 = load i32, i32* %17, align 4
  %269 = shl i32 8, %268
  %270 = load i32, i32* @Ram_size, align 4
  %271 = and i32 %269, %270
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* @Ram_width, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* @Ram_split, align 4
  %280 = and i32 %278, %279
  %281 = load i32, i32* @Ram_split_shift, align 4
  %282 = ashr i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 %283
  %285 = load i8*, i8** %284, align 8
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* @Autoselect, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** @media_tbl, align 8
  %293 = load i32, i32* %17, align 4
  %294 = load i32, i32* @Xcvr, align 4
  %295 = and i32 %293, %294
  %296 = load i32, i32* @Xcvr_shift, align 4
  %297 = ashr i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %271, i8* %277, i8* %285, i8* %291, i32 %301)
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* @Xcvr, align 4
  %305 = and i32 %303, %304
  %306 = load i32, i32* @Xcvr_shift, align 4
  %307 = ashr i32 %305, %306
  %308 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %309 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %308, i32 0, i32 6
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* %17, align 4
  %311 = load i32, i32* @Autoselect, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  %314 = zext i1 %313 to i64
  %315 = select i1 %313, i32 1, i32 0
  %316 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %317 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %316, i32 0, i32 7
  store i32 %315, i32* %317, align 8
  %318 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %319 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %318, i32 0, i32 6
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.net_device*, %struct.net_device** %5, align 8
  %322 = getelementptr inbounds %struct.net_device, %struct.net_device* %321, i32 0, i32 5
  store i32 %320, i32* %322, align 4
  %323 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %324 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 7
  br i1 %326, label %327, label %345

327:                                              ; preds = %267
  %328 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %329 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** @media_tbl, align 8
  %332 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %333 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 %330, i32 %338)
  %340 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %341 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.net_device*, %struct.net_device** %5, align 8
  %344 = getelementptr inbounds %struct.net_device, %struct.net_device* %343, i32 0, i32 5
  store i32 %342, i32* %344, align 4
  br label %345

345:                                              ; preds = %327, %267
  %346 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 16
  %347 = load i32, i32* %346, align 16
  %348 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %349 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %348, i32 0, i32 8
  store i32 %347, i32* %349, align 4
  %350 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %351 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %350, i32 0, i32 8
  %352 = load i32, i32* %351, align 4
  %353 = and i32 %352, 32
  %354 = icmp ne i32 %353, 0
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i32 1, i32 0
  %357 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %358 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %357, i32 0, i32 9
  store i32 %356, i32* %358, align 8
  %359 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %360 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %359, i32 0, i32 8
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 32
  %363 = icmp ne i32 %362, 0
  %364 = zext i1 %363 to i64
  %365 = select i1 %363, i32 1, i32 0
  %366 = load %struct.corkscrew_private*, %struct.corkscrew_private** %9, align 8
  %367 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %366, i32 0, i32 10
  store i32 %365, i32* %367, align 4
  %368 = load %struct.net_device*, %struct.net_device** %5, align 8
  %369 = getelementptr inbounds %struct.net_device, %struct.net_device* %368, i32 0, i32 8
  store i32* @netdev_ops, i32** %369, align 8
  %370 = load i32, i32* @HZ, align 4
  %371 = mul nsw i32 400, %370
  %372 = sdiv i32 %371, 1000
  %373 = load %struct.net_device*, %struct.net_device** %5, align 8
  %374 = getelementptr inbounds %struct.net_device, %struct.net_device* %373, i32 0, i32 6
  store i32 %372, i32* %374, align 8
  %375 = load %struct.net_device*, %struct.net_device** %5, align 8
  %376 = getelementptr inbounds %struct.net_device, %struct.net_device* %375, i32 0, i32 7
  store i32* @netdev_ethtool_ops, i32** %376, align 8
  %377 = load %struct.net_device*, %struct.net_device** %5, align 8
  %378 = call i32 @register_netdev(%struct.net_device* %377)
  ret i32 %378
}

declare dso_local %struct.corkscrew_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @outw(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @pr_cont(i8*, i32) #1

declare dso_local i64 @request_dma(i32, i8*) #1

declare dso_local i32 @pr_warning(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
