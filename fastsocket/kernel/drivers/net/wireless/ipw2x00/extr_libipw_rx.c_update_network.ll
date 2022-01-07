; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_update_network.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_rx.c_update_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_network = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i64, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Network %pM info received off channel (%d vs. %d)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@NETWORK_HAS_QOS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"QoS the network %s is QoS supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"QoS the network is QoS supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libipw_network*, %struct.libipw_network*)* @update_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_network(%struct.libipw_network* %0, %struct.libipw_network* %1) #0 {
  %3 = alloca %struct.libipw_network*, align 8
  %4 = alloca %struct.libipw_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.libipw_network* %0, %struct.libipw_network** %3, align 8
  store %struct.libipw_network* %1, %struct.libipw_network** %4, align 8
  %7 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %8 = call i32 @libipw_network_reset(%struct.libipw_network* %7)
  %9 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %10 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %9, i32 0, i32 24
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %13 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %12, i32 0, i32 24
  store i32 %11, i32* %13, align 8
  %14 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %15 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %14, i32 0, i32 22
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %18 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %17, i32 0, i32 21
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %24 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %23, i32 0, i32 21
  %25 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %26 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %25, i32 0, i32 21
  %27 = call i32 @memcpy(%struct.TYPE_3__* %24, %struct.TYPE_3__* %26, i32 4)
  br label %40

28:                                               ; preds = %2
  %29 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %30 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %29, i32 0, i32 23
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %33 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %32, i32 0, i32 22
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %36 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %35, i32 0, i32 21
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @LIBIPW_DEBUG_SCAN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %28, %22
  %41 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %42 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %41, i32 0, i32 20
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %45 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %44, i32 0, i32 20
  store i32 %43, i32* %45, align 8
  %46 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %47 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %46, i32 0, i32 19
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %50 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %49, i32 0, i32 19
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %53 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(%struct.TYPE_3__* %48, %struct.TYPE_3__* %51, i32 %54)
  %56 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %57 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %60 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %62 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %61, i32 0, i32 18
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %65 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %64, i32 0, i32 18
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %68 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(%struct.TYPE_3__* %63, %struct.TYPE_3__* %66, i32 %69)
  %71 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %72 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %75 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %77 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %76, i32 0, i32 17
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %80 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %79, i32 0, i32 17
  store i32 %78, i32* %80, align 8
  %81 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %82 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %85 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %87 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %86, i32 0, i32 16
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %92 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %91, i32 0, i32 16
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %96 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %95, i32 0, i32 16
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %101 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %100, i32 0, i32 16
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  %104 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %105 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %104, i32 0, i32 15
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %108 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %107, i32 0, i32 15
  store i32 %106, i32* %108, align 8
  %109 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %110 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %109, i32 0, i32 14
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %113 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %112, i32 0, i32 14
  store i32 %111, i32* %113, align 4
  %114 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %115 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %118 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %117, i32 0, i32 13
  store i32 %116, i32* %118, align 8
  %119 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %120 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %123 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %122, i32 0, i32 12
  store i32 %121, i32* %123, align 4
  %124 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %125 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %128 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %127, i32 0, i32 11
  store i32 %126, i32* %128, align 8
  %129 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %130 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %129, i32 0, i32 10
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %133 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %132, i32 0, i32 10
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %136 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @memcpy(%struct.TYPE_3__* %131, %struct.TYPE_3__* %134, i32 %137)
  %139 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %140 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %143 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %145 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %144, i32 0, i32 9
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %148 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %147, i32 0, i32 9
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %151 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @memcpy(%struct.TYPE_3__* %146, %struct.TYPE_3__* %149, i32 %152)
  %154 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %155 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %158 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @jiffies, align 4
  %160 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %161 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 8
  %162 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %163 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %5, align 4
  %166 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %167 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %6, align 4
  %170 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %171 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @NETWORK_HAS_QOS_MASK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %40
  %177 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %178 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %177, i32 0, i32 5
  %179 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %180 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %179, i32 0, i32 5
  %181 = call i32 @memcpy(%struct.TYPE_3__* %178, %struct.TYPE_3__* %180, i32 4)
  br label %197

182:                                              ; preds = %40
  %183 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %184 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %188 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  %190 = load %struct.libipw_network*, %struct.libipw_network** %4, align 8
  %191 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %195 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  store i32 %193, i32* %196, align 4
  br label %197

197:                                              ; preds = %182, %176
  %198 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %199 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %216

203:                                              ; preds = %197
  %204 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %205 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %210 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (i8*, ...) @LIBIPW_DEBUG_QOS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  br label %215

213:                                              ; preds = %203
  %214 = call i32 (i8*, ...) @LIBIPW_DEBUG_QOS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %208
  br label %216

216:                                              ; preds = %215, %197
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %219 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  store i32 %217, i32* %220, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.libipw_network*, %struct.libipw_network** %3, align 8
  %223 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 2
  store i32 %221, i32* %224, align 4
  ret void
}

declare dso_local i32 @libipw_network_reset(%struct.libipw_network*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @LIBIPW_DEBUG_SCAN(i8*, i32, i32, i32) #1

declare dso_local i32 @LIBIPW_DEBUG_QOS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
