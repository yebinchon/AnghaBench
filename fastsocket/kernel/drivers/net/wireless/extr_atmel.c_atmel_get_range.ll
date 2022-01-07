; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.atmel_private = type { i64 }
%struct.iw_range = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i64, i8*, i8*, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i8*, i64 }
%struct.TYPE_7__ = type { i32, i32, i8*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@channel_table = common dso_local global %struct.TYPE_9__* null, align 8
@IW_QUAL_NOISE_INVALID = common dso_local global i8* null, align 8
@IW_POWER_ON = common dso_local global i8* null, align 8
@WIRELESS_EXT = common dso_local global i8* null, align 8
@IW_RETRY_LIMIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @atmel_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.atmel_private*, align 8
  %10 = alloca %struct.iw_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %14)
  store %struct.atmel_private* %15, %struct.atmel_private** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.iw_range*
  store %struct.iw_range* %17, %struct.iw_range** %10, align 8
  %18 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %19 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %18, i32 0, i32 0
  store i32 200, i32* %19, align 4
  %20 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %21 = call i32 @memset(%struct.iw_range* %20, i32 0, i32 200)
  %22 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %23 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %25 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %27 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %26, i32 0, i32 2
  store i32 0, i32* %27, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %62, %4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %35 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %36, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %33
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %50, %56
  %58 = add nsw i32 %57, 1
  %59 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %60 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %65

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %28

65:                                               ; preds = %44, %28
  %66 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %67 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %120

70:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %113, %70
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sle i32 %78, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %89 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %88, i32 0, i32 26
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %87, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @ieee80211_dsss_chan_to_freq(i32 %95)
  %97 = mul nsw i32 %96, 100000
  %98 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %99 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %98, i32 0, i32 26
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  %105 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %106 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %105, i32 0, i32 26
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %86
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %77

116:                                              ; preds = %77
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %119 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %65
  %121 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %122 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %121, i32 0, i32 25
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 100, i32* %123, align 8
  %124 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %125 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %124, i32 0, i32 25
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store i32 100, i32* %126, align 4
  %127 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %128 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %127, i32 0, i32 25
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load i8*, i8** @IW_QUAL_NOISE_INVALID, align 8
  %131 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %132 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %131, i32 0, i32 25
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  store i8* %130, i8** %133, align 8
  %134 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %135 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %134, i32 0, i32 24
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i32 50, i32* %136, align 8
  %137 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %138 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %137, i32 0, i32 24
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32 50, i32* %139, align 4
  %140 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %141 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %140, i32 0, i32 24
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load i8*, i8** @IW_QUAL_NOISE_INVALID, align 8
  %144 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %145 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %144, i32 0, i32 24
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  store i8* %143, i8** %146, align 8
  %147 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %148 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %147, i32 0, i32 23
  store i64 0, i64* %148, align 8
  %149 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %150 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 1000000, i32* %152, align 4
  %153 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %154 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 2000000, i32* %156, align 4
  %157 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %158 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 5500000, i32* %160, align 4
  %161 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %162 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 3
  store i32 11000000, i32* %164, align 4
  %165 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %166 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %165, i32 0, i32 5
  store i32 4, i32* %166, align 8
  %167 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %168 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %167, i32 0, i32 22
  store i64 0, i64* %168, align 8
  %169 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %170 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %169, i32 0, i32 6
  store i32 2347, i32* %170, align 4
  %171 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %172 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %171, i32 0, i32 7
  store i32 256, i32* %172, align 8
  %173 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %174 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %173, i32 0, i32 8
  store i32 2346, i32* %174, align 4
  %175 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %176 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %175, i32 0, i32 9
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 5, i32* %178, align 4
  %179 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %180 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %179, i32 0, i32 9
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  store i32 13, i32* %182, align 4
  %183 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %184 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %183, i32 0, i32 10
  store i32 2, i32* %184, align 8
  %185 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %186 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %185, i32 0, i32 11
  store i32 4, i32* %186, align 4
  %187 = load i8*, i8** @IW_POWER_ON, align 8
  %188 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %189 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %188, i32 0, i32 21
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** @IW_POWER_ON, align 8
  %191 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %192 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %191, i32 0, i32 20
  store i8* %190, i8** %192, align 8
  %193 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %194 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %193, i32 0, i32 19
  store i64 0, i64* %194, align 8
  %195 = load i8*, i8** @WIRELESS_EXT, align 8
  %196 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %197 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %196, i32 0, i32 18
  store i8* %195, i8** %197, align 8
  %198 = load i8*, i8** @WIRELESS_EXT, align 8
  %199 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %200 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %199, i32 0, i32 17
  store i8* %198, i8** %200, align 8
  %201 = load i8*, i8** @IW_RETRY_LIMIT, align 8
  %202 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %203 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %202, i32 0, i32 16
  store i8* %201, i8** %203, align 8
  %204 = load i8*, i8** @IW_RETRY_LIMIT, align 8
  %205 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %206 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %205, i32 0, i32 15
  store i8* %204, i8** %206, align 8
  %207 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %208 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %207, i32 0, i32 14
  store i64 0, i64* %208, align 8
  %209 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %210 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %209, i32 0, i32 12
  store i32 1, i32* %210, align 8
  %211 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %212 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %211, i32 0, i32 13
  store i32 65535, i32* %212, align 4
  ret i32 0
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @ieee80211_dsss_chan_to_freq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
