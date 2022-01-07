; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i64, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.cb = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.config }
%struct.config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@cb_config = common dso_local global i32 0, align 4
@promiscuous = common dso_local global i32 0, align 4
@multicast_all = common dso_local global i32 0, align 4
@wol_magic = common dso_local global i32 0, align 4
@mac_82558_D101_A4 = common dso_local global i64 0, align 8
@mac_82559_D101M = common dso_local global i64 0, align 8
@mac_82551_10 = common dso_local global i64 0, align 8
@hw = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"[00-07]=%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"[08-15]=%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"[16-23]=%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nic*, %struct.cb*, %struct.sk_buff*)* @e100_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_configure(%struct.nic* %0, %struct.cb* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nic*, align 8
  %5 = alloca %struct.cb*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.config*, align 8
  %8 = alloca i32*, align 8
  store %struct.nic* %0, %struct.nic** %4, align 8
  store %struct.cb* %1, %struct.cb** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.cb*, %struct.cb** %5, align 8
  %10 = getelementptr inbounds %struct.cb, %struct.cb* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.config* %11, %struct.config** %7, align 8
  %12 = load %struct.config*, %struct.config** %7, align 8
  %13 = bitcast %struct.config* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* @cb_config, align 4
  %15 = call i32 @cpu_to_le16(i32 %14)
  %16 = load %struct.cb*, %struct.cb** %5, align 8
  %17 = getelementptr inbounds %struct.cb, %struct.cb* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.config*, %struct.config** %7, align 8
  %19 = call i32 @memset(%struct.config* %18, i32 0, i32 152)
  %20 = load %struct.config*, %struct.config** %7, align 8
  %21 = getelementptr inbounds %struct.config, %struct.config* %20, i32 0, i32 0
  store i32 22, i32* %21, align 8
  %22 = load %struct.config*, %struct.config** %7, align 8
  %23 = getelementptr inbounds %struct.config, %struct.config* %22, i32 0, i32 1
  store i32 8, i32* %23, align 4
  %24 = load %struct.config*, %struct.config** %7, align 8
  %25 = getelementptr inbounds %struct.config, %struct.config* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.config*, %struct.config** %7, align 8
  %27 = getelementptr inbounds %struct.config, %struct.config* %26, i32 0, i32 3
  store i32 1, i32* %27, align 4
  %28 = load %struct.config*, %struct.config** %7, align 8
  %29 = getelementptr inbounds %struct.config, %struct.config* %28, i32 0, i32 4
  store i32 1, i32* %29, align 8
  %30 = load %struct.config*, %struct.config** %7, align 8
  %31 = getelementptr inbounds %struct.config, %struct.config* %30, i32 0, i32 5
  store i32 1, i32* %31, align 4
  %32 = load %struct.config*, %struct.config** %7, align 8
  %33 = getelementptr inbounds %struct.config, %struct.config* %32, i32 0, i32 6
  store i32 3, i32* %33, align 8
  %34 = load %struct.nic*, %struct.nic** %4, align 8
  %35 = call i64 @e100_phy_supports_mii(%struct.nic* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.config*, %struct.config** %7, align 8
  %39 = getelementptr inbounds %struct.config, %struct.config* %38, i32 0, i32 7
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %3
  %41 = load %struct.config*, %struct.config** %7, align 8
  %42 = getelementptr inbounds %struct.config, %struct.config* %41, i32 0, i32 8
  store i32 6, i32* %42, align 8
  %43 = load %struct.config*, %struct.config** %7, align 8
  %44 = getelementptr inbounds %struct.config, %struct.config* %43, i32 0, i32 9
  store i32 1, i32* %44, align 4
  %45 = load %struct.config*, %struct.config** %7, align 8
  %46 = getelementptr inbounds %struct.config, %struct.config* %45, i32 0, i32 10
  store i32 2, i32* %46, align 8
  %47 = load %struct.config*, %struct.config** %7, align 8
  %48 = getelementptr inbounds %struct.config, %struct.config* %47, i32 0, i32 11
  store i32 6, i32* %48, align 4
  %49 = load %struct.config*, %struct.config** %7, align 8
  %50 = getelementptr inbounds %struct.config, %struct.config* %49, i32 0, i32 12
  store i32 242, i32* %50, align 8
  %51 = load %struct.config*, %struct.config** %7, align 8
  %52 = getelementptr inbounds %struct.config, %struct.config* %51, i32 0, i32 13
  store i32 1, i32* %52, align 4
  %53 = load %struct.config*, %struct.config** %7, align 8
  %54 = getelementptr inbounds %struct.config, %struct.config* %53, i32 0, i32 14
  store i32 1, i32* %54, align 8
  %55 = load %struct.config*, %struct.config** %7, align 8
  %56 = getelementptr inbounds %struct.config, %struct.config* %55, i32 0, i32 15
  store i32 0, i32* %56, align 4
  %57 = load %struct.config*, %struct.config** %7, align 8
  %58 = getelementptr inbounds %struct.config, %struct.config* %57, i32 0, i32 16
  store i32 64, i32* %58, align 8
  %59 = load %struct.config*, %struct.config** %7, align 8
  %60 = getelementptr inbounds %struct.config, %struct.config* %59, i32 0, i32 17
  store i32 1, i32* %60, align 4
  %61 = load %struct.config*, %struct.config** %7, align 8
  %62 = getelementptr inbounds %struct.config, %struct.config* %61, i32 0, i32 18
  store i32 7, i32* %62, align 8
  %63 = load %struct.config*, %struct.config** %7, align 8
  %64 = getelementptr inbounds %struct.config, %struct.config* %63, i32 0, i32 19
  store i32 1, i32* %64, align 4
  %65 = load %struct.config*, %struct.config** %7, align 8
  %66 = getelementptr inbounds %struct.config, %struct.config* %65, i32 0, i32 20
  store i32 1, i32* %66, align 8
  %67 = load %struct.config*, %struct.config** %7, align 8
  %68 = getelementptr inbounds %struct.config, %struct.config* %67, i32 0, i32 21
  store i32 31, i32* %68, align 4
  %69 = load %struct.config*, %struct.config** %7, align 8
  %70 = getelementptr inbounds %struct.config, %struct.config* %69, i32 0, i32 22
  store i32 1, i32* %70, align 8
  %71 = load %struct.config*, %struct.config** %7, align 8
  %72 = getelementptr inbounds %struct.config, %struct.config* %71, i32 0, i32 23
  store i32 5, i32* %72, align 4
  %73 = load %struct.nic*, %struct.nic** %4, align 8
  %74 = getelementptr inbounds %struct.nic, %struct.nic* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.config*, %struct.config** %7, align 8
  %77 = getelementptr inbounds %struct.config, %struct.config* %76, i32 0, i32 35
  store i32 %75, i32* %77, align 8
  %78 = load %struct.nic*, %struct.nic** %4, align 8
  %79 = getelementptr inbounds %struct.nic, %struct.nic* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.config*, %struct.config** %7, align 8
  %82 = getelementptr inbounds %struct.config, %struct.config* %81, i32 0, i32 34
  store i64 %80, i64* %82, align 8
  %83 = load %struct.nic*, %struct.nic** %4, align 8
  %84 = getelementptr inbounds %struct.nic, %struct.nic* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %40
  %89 = load %struct.nic*, %struct.nic** %4, align 8
  %90 = getelementptr inbounds %struct.nic, %struct.nic* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.config*, %struct.config** %7, align 8
  %96 = getelementptr inbounds %struct.config, %struct.config* %95, i32 0, i32 24
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %88, %40
  %98 = load %struct.nic*, %struct.nic** %4, align 8
  %99 = getelementptr inbounds %struct.nic, %struct.nic* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @promiscuous, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %97
  %105 = load %struct.nic*, %struct.nic** %4, align 8
  %106 = getelementptr inbounds %struct.nic, %struct.nic* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104, %97
  %110 = load %struct.config*, %struct.config** %7, align 8
  %111 = getelementptr inbounds %struct.config, %struct.config* %110, i32 0, i32 25
  store i32 1, i32* %111, align 4
  %112 = load %struct.config*, %struct.config** %7, align 8
  %113 = getelementptr inbounds %struct.config, %struct.config* %112, i32 0, i32 5
  store i32 0, i32* %113, align 4
  %114 = load %struct.config*, %struct.config** %7, align 8
  %115 = getelementptr inbounds %struct.config, %struct.config* %114, i32 0, i32 26
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %109, %104
  %117 = load %struct.nic*, %struct.nic** %4, align 8
  %118 = getelementptr inbounds %struct.nic, %struct.nic* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @multicast_all, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.config*, %struct.config** %7, align 8
  %125 = getelementptr inbounds %struct.config, %struct.config* %124, i32 0, i32 27
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %116
  %127 = load %struct.nic*, %struct.nic** %4, align 8
  %128 = getelementptr inbounds %struct.nic, %struct.nic* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @netif_running(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %126
  %133 = load %struct.nic*, %struct.nic** %4, align 8
  %134 = getelementptr inbounds %struct.nic, %struct.nic* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @wol_magic, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.config*, %struct.config** %7, align 8
  %141 = getelementptr inbounds %struct.config, %struct.config* %140, i32 0, i32 28
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %132
  %143 = load %struct.nic*, %struct.nic** %4, align 8
  %144 = getelementptr inbounds %struct.nic, %struct.nic* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @mac_82558_D101_A4, align 8
  %147 = icmp sge i64 %145, %146
  br i1 %147, label %148, label %180

148:                                              ; preds = %142
  %149 = load %struct.config*, %struct.config** %7, align 8
  %150 = getelementptr inbounds %struct.config, %struct.config* %149, i32 0, i32 29
  store i32 1, i32* %150, align 4
  %151 = load %struct.config*, %struct.config** %7, align 8
  %152 = getelementptr inbounds %struct.config, %struct.config* %151, i32 0, i32 30
  store i32 1, i32* %152, align 8
  %153 = load %struct.config*, %struct.config** %7, align 8
  %154 = getelementptr inbounds %struct.config, %struct.config* %153, i32 0, i32 3
  store i32 0, i32* %154, align 4
  %155 = load %struct.config*, %struct.config** %7, align 8
  %156 = getelementptr inbounds %struct.config, %struct.config* %155, i32 0, i32 31
  store i32 1, i32* %156, align 4
  %157 = load %struct.nic*, %struct.nic** %4, align 8
  %158 = getelementptr inbounds %struct.nic, %struct.nic* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @mac_82559_D101M, align 8
  %161 = icmp sge i64 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %148
  %163 = load %struct.config*, %struct.config** %7, align 8
  %164 = getelementptr inbounds %struct.config, %struct.config* %163, i32 0, i32 32
  store i32 1, i32* %164, align 8
  %165 = load %struct.nic*, %struct.nic** %4, align 8
  %166 = getelementptr inbounds %struct.nic, %struct.nic* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @mac_82551_10, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %162
  %171 = load %struct.config*, %struct.config** %7, align 8
  %172 = getelementptr inbounds %struct.config, %struct.config* %171, i32 0, i32 0
  store i32 32, i32* %172, align 8
  %173 = load %struct.config*, %struct.config** %7, align 8
  %174 = getelementptr inbounds %struct.config, %struct.config* %173, i32 0, i32 33
  store i32 1, i32* %174, align 4
  br label %175

175:                                              ; preds = %170, %162
  br label %179

176:                                              ; preds = %148
  %177 = load %struct.config*, %struct.config** %7, align 8
  %178 = getelementptr inbounds %struct.config, %struct.config* %177, i32 0, i32 4
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %175
  br label %180

180:                                              ; preds = %179, %142
  %181 = load %struct.nic*, %struct.nic** %4, align 8
  %182 = load i32, i32* @hw, align 4
  %183 = load i32, i32* @KERN_DEBUG, align 4
  %184 = load %struct.nic*, %struct.nic** %4, align 8
  %185 = getelementptr inbounds %struct.nic, %struct.nic* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32*, i32** %8, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %8, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %8, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 4
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %8, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 5
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 6
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %8, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 7
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @netif_printk(%struct.nic* %181, i32 %182, i32 %183, i32 %186, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %189, i32 %192, i32 %195, i32 %198, i32 %201, i32 %204, i32 %207, i32 %210)
  %212 = load %struct.nic*, %struct.nic** %4, align 8
  %213 = load i32, i32* @hw, align 4
  %214 = load i32, i32* @KERN_DEBUG, align 4
  %215 = load %struct.nic*, %struct.nic** %4, align 8
  %216 = getelementptr inbounds %struct.nic, %struct.nic* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32*, i32** %8, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 8
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %8, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 9
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %8, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 10
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %8, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 11
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %8, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 12
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %8, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 13
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %8, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 14
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %8, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 15
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @netif_printk(%struct.nic* %212, i32 %213, i32 %214, i32 %217, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %220, i32 %223, i32 %226, i32 %229, i32 %232, i32 %235, i32 %238, i32 %241)
  %243 = load %struct.nic*, %struct.nic** %4, align 8
  %244 = load i32, i32* @hw, align 4
  %245 = load i32, i32* @KERN_DEBUG, align 4
  %246 = load %struct.nic*, %struct.nic** %4, align 8
  %247 = getelementptr inbounds %struct.nic, %struct.nic* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32*, i32** %8, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 16
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %8, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 17
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %8, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 18
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %8, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 19
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 20
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %8, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 21
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %8, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 22
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %8, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 23
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @netif_printk(%struct.nic* %243, i32 %244, i32 %245, i32 %248, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %251, i32 %254, i32 %257, i32 %260, i32 %263, i32 %266, i32 %269, i32 %272)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(%struct.config*, i32, i32) #1

declare dso_local i64 @e100_phy_supports_mii(%struct.nic*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
