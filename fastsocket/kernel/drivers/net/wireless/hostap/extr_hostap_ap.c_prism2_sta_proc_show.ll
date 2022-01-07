; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_sta_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_sta_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.sta_info* }
%struct.sta_info = type { i32, i32*, i32, %struct.TYPE_8__, i64, %struct.TYPE_6__*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8, i32, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.seq_file*, i32)* }

@.str = private unnamed_addr constant [104 x i8] c"%s=%pM\0Ausers=%d\0Aaid=%d\0Aflags=0x%04x%s%s%s%s%s%s%s\0Acapability=0x%02x\0Alisten_interval=%d\0Asupported_rates=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"STA\00", align 1
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" AUTH\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c" ASSOC\00", align 1
@WLAN_STA_PS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" PS\00", align 1
@WLAN_STA_TIM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" TIM\00", align 1
@WLAN_STA_PERM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c" PERM\00", align 1
@WLAN_STA_AUTHORIZED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c" AUTHORIZED\00", align 1
@WLAN_STA_PENDING_POLL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c" POLL\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%d%sMbps \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.13 = private unnamed_addr constant [289 x i8] c"\0Ajiffies=%lu\0Alast_auth=%lu\0Alast_assoc=%lu\0Alast_rx=%lu\0Alast_tx=%lu\0Arx_packets=%lu\0Atx_packets=%lu\0Arx_bytes=%lu\0Atx_bytes=%lu\0Abuffer_count=%d\0Alast_rx: silence=%d dBm signal=%d dBm rate=%d%s Mbps\0Atx_rate=%d\0Atx[1M]=%d\0Atx[2M]=%d\0Atx[5.5M]=%d\0Atx[11M]=%d\0Arx[1M]=%d\0Arx[2M]=%d\0Arx[5.5M]=%d\0Arx[11M]=%d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"channel=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ssid=\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"<%02x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @prism2_sta_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_sta_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  store %struct.sta_info* %9, %struct.sta_info** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %17 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 24
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 23
  %22 = call i32 @atomic_read(i32* %21)
  %23 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 22
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @WLAN_STA_AUTH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %37 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %45 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @WLAN_STA_PS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %53 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WLAN_STA_TIM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %61 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @WLAN_STA_PERM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %69 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %77 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %78 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @WLAN_STA_PENDING_POLL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %85 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %86 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %85, i32 0, i32 21
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %89 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %88, i32 0, i32 20
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19, i32 %22, i32 %25, i32 %28, i8* %36, i8* %44, i8* %52, i8* %60, i8* %68, i8* %76, i8* %84, i32 %87, i32 %90)
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %129, %2
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ult i64 %94, 8
  br i1 %95, label %96, label %132

96:                                               ; preds = %92
  %97 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %96
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %108 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 127
  %115 = sdiv i32 %114, 2
  %116 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %117 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %127 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %115, i8* %126)
  br label %128

128:                                              ; preds = %105, %96
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %92

132:                                              ; preds = %92
  %133 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %134 = load i32, i32* @jiffies, align 4
  %135 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %136 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %135, i32 0, i32 19
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %139 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %138, i32 0, i32 18
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %142 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %141, i32 0, i32 17
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %145 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %144, i32 0, i32 16
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %148 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %147, i32 0, i32 15
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %151 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %150, i32 0, i32 14
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %154 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %153, i32 0, i32 13
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %157 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %160 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %159, i32 0, i32 11
  %161 = call i32 @skb_queue_len(i32* %160)
  %162 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %163 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %162, i32 0, i32 10
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %166 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %169 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = sdiv i32 %170, 10
  %172 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %173 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = srem i32 %174, 10
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %179 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %180 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %183 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %182, i32 0, i32 7
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %188 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %187, i32 0, i32 7
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %193 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %192, i32 0, i32 7
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %198 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %197, i32 0, i32 7
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %203 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %202, i32 0, i32 6
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %208 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %207, i32 0, i32 6
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %213 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %212, i32 0, i32 6
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %218 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %217, i32 0, i32 6
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.13, i64 0, i64 0), i32 %134, i32 %137, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155, i32 %158, i32 %161, i32 %164, i32 %167, i32 %171, i8* %178, i32 %181, i32 %186, i32 %191, i32 %196, i32 %201, i32 %206, i32 %211, i32 %216, i32 %221)
  %223 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %224 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %223, i32 0, i32 5
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = icmp ne %struct.TYPE_6__* %225, null
  br i1 %226, label %227, label %258

227:                                              ; preds = %132
  %228 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %229 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %228, i32 0, i32 5
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = icmp ne %struct.TYPE_5__* %232, null
  br i1 %233, label %234, label %258

234:                                              ; preds = %227
  %235 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %236 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %235, i32 0, i32 5
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32 (%struct.seq_file*, i32)*, i32 (%struct.seq_file*, i32)** %240, align 8
  %242 = icmp ne i32 (%struct.seq_file*, i32)* %241, null
  br i1 %242, label %243, label %258

243:                                              ; preds = %234
  %244 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %245 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %244, i32 0, i32 5
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32 (%struct.seq_file*, i32)*, i32 (%struct.seq_file*, i32)** %249, align 8
  %251 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %252 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %253 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %252, i32 0, i32 5
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 %250(%struct.seq_file* %251, i32 %256)
  br label %258

258:                                              ; preds = %243, %234, %227, %132
  %259 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %260 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %345

263:                                              ; preds = %258
  %264 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %265 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i8, i8* %267, align 8
  %269 = sext i8 %268 to i32
  %270 = icmp sge i32 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %263
  %272 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %273 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %274 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i8, i8* %276, align 8
  %278 = sext i8 %277 to i32
  %279 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %271, %263
  %281 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %282 = call i32 @seq_puts(%struct.seq_file* %281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %283

283:                                              ; preds = %339, %280
  %284 = load i32, i32* %6, align 4
  %285 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %286 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp slt i32 %284, %289
  br i1 %290, label %291, label %342

291:                                              ; preds = %283
  %292 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %293 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = icmp sge i32 %300, 32
  br i1 %301, label %302, label %326

302:                                              ; preds = %291
  %303 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %304 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp slt i32 %311, 127
  br i1 %312, label %313, label %326

313:                                              ; preds = %302
  %314 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %315 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %316 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 2
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = trunc i32 %323 to i8
  %325 = call i32 @seq_putc(%struct.seq_file* %314, i8 signext %324)
  br label %338

326:                                              ; preds = %302, %291
  %327 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %328 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %329 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %336)
  br label %338

338:                                              ; preds = %326, %313
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %6, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %6, align 4
  br label %283

342:                                              ; preds = %283
  %343 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %344 = call i32 @seq_putc(%struct.seq_file* %343, i8 signext 10)
  br label %345

345:                                              ; preds = %342, %258
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
