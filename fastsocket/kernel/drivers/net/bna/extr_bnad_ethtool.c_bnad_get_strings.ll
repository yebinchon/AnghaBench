; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_get_strings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnad = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@BNAD_ETHTOOL_STATS_NUM = common dso_local global i32 0, align 4
@bnad_net_stats_strings = common dso_local global i32* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"txf%d_ucast_octets\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"txf%d_ucast\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"txf%d_ucast_vlan\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"txf%d_mcast_octets\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"txf%d_mcast\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"txf%d_mcast_vlan\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"txf%d_bcast_octets\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"txf%d_bcast\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"txf%d_bcast_vlan\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"txf%d_errors\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"txf%d_filter_vlan\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"txf%d_filter_mac_sa\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"rxf%d_ucast_octets\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"rxf%d_ucast\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"rxf%d_ucast_vlan\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"rxf%d_mcast_octets\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"rxf%d_mcast\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"rxf%d_mcast_vlan\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"rxf%d_bcast_octets\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"rxf%d_bcast\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"rxf%d_bcast_vlan\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"rxf%d_frame_drops\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"cq%d_producer_index\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"cq%d_consumer_index\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"cq%d_hw_producer_index\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"cq%d_intr\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"cq%d_poll\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"cq%d_schedule\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"cq%d_keep_poll\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"cq%d_complete\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"rxq%d_packets\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"rxq%d_bytes\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"rxq%d_packets_with_error\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"rxq%d_allocbuf_failed\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"rxq%d_producer_index\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"rxq%d_consumer_index\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"txq%d_packets\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"txq%d_bytes\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"txq%d_producer_index\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"txq%d_consumer_index\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"txq%d_hw_consumer_index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @bnad_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bnad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.bnad* @netdev_priv(%struct.net_device* %12)
  store %struct.bnad* %13, %struct.bnad** %7, align 8
  %14 = load %struct.bnad*, %struct.bnad** %7, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 4
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %579 [
    i32 128, label %18
  ]

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BNAD_ETHTOOL_STATS_NUM, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load i32*, i32** @bnad_net_stats_strings, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strlen(i32 %28)
  %30 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %31 = icmp slt i32 %29, %30
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** @bnad_net_stats_strings, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %42 = call i32 @memcpy(i32* %35, i32 %40, i32 %41)
  %43 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %6, align 8
  br label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %19

50:                                               ; preds = %19
  %51 = load %struct.bnad*, %struct.bnad** %7, align 8
  %52 = getelementptr inbounds %struct.bnad, %struct.bnad* %51, i32 0, i32 7
  %53 = call i32 @bna_tx_rid_mask(i32* %52)
  store i32 %53, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %149, %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %152

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %146

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @sprintf(i32* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @sprintf(i32* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %6, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @sprintf(i32* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %6, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @sprintf(i32* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %6, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @sprintf(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %6, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @sprintf(i32* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %6, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @sprintf(i32* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %6, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @sprintf(i32* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %6, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @sprintf(i32* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %6, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @sprintf(i32* %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %6, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @sprintf(i32* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %6, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @sprintf(i32* %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %6, align 8
  br label %146

146:                                              ; preds = %61, %57
  %147 = load i32, i32* %11, align 4
  %148 = ashr i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %54

152:                                              ; preds = %54
  %153 = load %struct.bnad*, %struct.bnad** %7, align 8
  %154 = getelementptr inbounds %struct.bnad, %struct.bnad* %153, i32 0, i32 7
  %155 = call i32 @bna_rx_rid_mask(i32* %154)
  store i32 %155, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %237, %152
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %240

159:                                              ; preds = %156
  %160 = load i32, i32* %11, align 4
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %234

163:                                              ; preds = %159
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @sprintf(i32* %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %6, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @sprintf(i32* %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %6, align 8
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @sprintf(i32* %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %6, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @sprintf(i32* %185, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %189 = load i32*, i32** %6, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %6, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @sprintf(i32* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %196 = load i32*, i32** %6, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %6, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @sprintf(i32* %199, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32* %205, i32** %6, align 8
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @sprintf(i32* %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %210 = load i32*, i32** %6, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32* %212, i32** %6, align 8
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @sprintf(i32* %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %6, align 8
  %220 = load i32*, i32** %6, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @sprintf(i32* %220, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %224 = load i32*, i32** %6, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32* %226, i32** %6, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @sprintf(i32* %227, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %228)
  %230 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %231 = load i32*, i32** %6, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32* %233, i32** %6, align 8
  br label %234

234:                                              ; preds = %163, %159
  %235 = load i32, i32* %11, align 4
  %236 = ashr i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %8, align 4
  br label %156

240:                                              ; preds = %156
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %241

241:                                              ; preds = %328, %240
  %242 = load i32, i32* %8, align 4
  %243 = load %struct.bnad*, %struct.bnad** %7, align 8
  %244 = getelementptr inbounds %struct.bnad, %struct.bnad* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %331

247:                                              ; preds = %241
  %248 = load %struct.bnad*, %struct.bnad** %7, align 8
  %249 = getelementptr inbounds %struct.bnad, %struct.bnad* %248, i32 0, i32 6
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %247
  br label %328

258:                                              ; preds = %247
  store i32 0, i32* %9, align 4
  br label %259

259:                                              ; preds = %324, %258
  %260 = load i32, i32* %9, align 4
  %261 = load %struct.bnad*, %struct.bnad** %7, align 8
  %262 = getelementptr inbounds %struct.bnad, %struct.bnad* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %327

265:                                              ; preds = %259
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %10, align 4
  %268 = call i32 @sprintf(i32* %266, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %270 = load i32*, i32** %6, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32* %272, i32** %6, align 8
  %273 = load i32*, i32** %6, align 8
  %274 = load i32, i32* %10, align 4
  %275 = call i32 @sprintf(i32* %273, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %277 = load i32*, i32** %6, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %6, align 8
  %280 = load i32*, i32** %6, align 8
  %281 = load i32, i32* %10, align 4
  %282 = call i32 @sprintf(i32* %280, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 %281)
  %283 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %284 = load i32*, i32** %6, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  store i32* %286, i32** %6, align 8
  %287 = load i32*, i32** %6, align 8
  %288 = load i32, i32* %10, align 4
  %289 = call i32 @sprintf(i32* %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %288)
  %290 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %291 = load i32*, i32** %6, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32* %293, i32** %6, align 8
  %294 = load i32*, i32** %6, align 8
  %295 = load i32, i32* %10, align 4
  %296 = call i32 @sprintf(i32* %294, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 %295)
  %297 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %298 = load i32*, i32** %6, align 8
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  store i32* %300, i32** %6, align 8
  %301 = load i32*, i32** %6, align 8
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @sprintf(i32* %301, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %305 = load i32*, i32** %6, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  store i32* %307, i32** %6, align 8
  %308 = load i32*, i32** %6, align 8
  %309 = load i32, i32* %10, align 4
  %310 = call i32 @sprintf(i32* %308, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i32 %309)
  %311 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %312 = load i32*, i32** %6, align 8
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  store i32* %314, i32** %6, align 8
  %315 = load i32*, i32** %6, align 8
  %316 = load i32, i32* %10, align 4
  %317 = call i32 @sprintf(i32* %315, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 %316)
  %318 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %319 = load i32*, i32** %6, align 8
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i32, i32* %319, i64 %320
  store i32* %321, i32** %6, align 8
  %322 = load i32, i32* %10, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %10, align 4
  br label %324

324:                                              ; preds = %265
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %9, align 4
  br label %259

327:                                              ; preds = %259
  br label %328

328:                                              ; preds = %327, %257
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %8, align 4
  br label %241

331:                                              ; preds = %241
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %332

332:                                              ; preds = %505, %331
  %333 = load i32, i32* %8, align 4
  %334 = load %struct.bnad*, %struct.bnad** %7, align 8
  %335 = getelementptr inbounds %struct.bnad, %struct.bnad* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %508

338:                                              ; preds = %332
  %339 = load %struct.bnad*, %struct.bnad** %7, align 8
  %340 = getelementptr inbounds %struct.bnad, %struct.bnad* %339, i32 0, i32 6
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %340, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %338
  br label %505

349:                                              ; preds = %338
  store i32 0, i32* %9, align 4
  br label %350

350:                                              ; preds = %501, %349
  %351 = load i32, i32* %9, align 4
  %352 = load %struct.bnad*, %struct.bnad** %7, align 8
  %353 = getelementptr inbounds %struct.bnad, %struct.bnad* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = icmp slt i32 %351, %354
  br i1 %355, label %356, label %504

356:                                              ; preds = %350
  %357 = load i32*, i32** %6, align 8
  %358 = load i32, i32* %10, align 4
  %359 = call i32 @sprintf(i32* %357, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 %358)
  %360 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %361 = load i32*, i32** %6, align 8
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i32, i32* %361, i64 %362
  store i32* %363, i32** %6, align 8
  %364 = load i32*, i32** %6, align 8
  %365 = load i32, i32* %10, align 4
  %366 = call i32 @sprintf(i32* %364, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 %365)
  %367 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %368 = load i32*, i32** %6, align 8
  %369 = sext i32 %367 to i64
  %370 = getelementptr inbounds i32, i32* %368, i64 %369
  store i32* %370, i32** %6, align 8
  %371 = load i32*, i32** %6, align 8
  %372 = load i32, i32* %10, align 4
  %373 = call i32 @sprintf(i32* %371, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i32 %372)
  %374 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %375 = load i32*, i32** %6, align 8
  %376 = sext i32 %374 to i64
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  store i32* %377, i32** %6, align 8
  %378 = load i32*, i32** %6, align 8
  %379 = load i32, i32* %10, align 4
  %380 = call i32 @sprintf(i32* %378, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i32 %379)
  %381 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %382 = load i32*, i32** %6, align 8
  %383 = sext i32 %381 to i64
  %384 = getelementptr inbounds i32, i32* %382, i64 %383
  store i32* %384, i32** %6, align 8
  %385 = load i32*, i32** %6, align 8
  %386 = load i32, i32* %10, align 4
  %387 = call i32 @sprintf(i32* %385, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i32 %386)
  %388 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %389 = load i32*, i32** %6, align 8
  %390 = sext i32 %388 to i64
  %391 = getelementptr inbounds i32, i32* %389, i64 %390
  store i32* %391, i32** %6, align 8
  %392 = load i32*, i32** %6, align 8
  %393 = load i32, i32* %10, align 4
  %394 = call i32 @sprintf(i32* %392, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i32 %393)
  %395 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %396 = load i32*, i32** %6, align 8
  %397 = sext i32 %395 to i64
  %398 = getelementptr inbounds i32, i32* %396, i64 %397
  store i32* %398, i32** %6, align 8
  %399 = load i32, i32* %10, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %10, align 4
  %401 = load %struct.bnad*, %struct.bnad** %7, align 8
  %402 = getelementptr inbounds %struct.bnad, %struct.bnad* %401, i32 0, i32 6
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %402, align 8
  %404 = load i32, i32* %8, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_8__*, %struct.TYPE_8__** %407, align 8
  %409 = load i32, i32* %9, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %412, align 8
  %414 = icmp ne %struct.TYPE_7__* %413, null
  br i1 %414, label %415, label %500

415:                                              ; preds = %356
  %416 = load %struct.bnad*, %struct.bnad** %7, align 8
  %417 = getelementptr inbounds %struct.bnad, %struct.bnad* %416, i32 0, i32 6
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %417, align 8
  %419 = load i32, i32* %8, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %422, align 8
  %424 = load i32, i32* %9, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 0
  %428 = load %struct.TYPE_7__*, %struct.TYPE_7__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %430, i64 1
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %431, align 8
  %433 = icmp ne %struct.TYPE_6__* %432, null
  br i1 %433, label %434, label %500

434:                                              ; preds = %415
  %435 = load %struct.bnad*, %struct.bnad** %7, align 8
  %436 = getelementptr inbounds %struct.bnad, %struct.bnad* %435, i32 0, i32 6
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %436, align 8
  %438 = load i32, i32* %8, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %441, align 8
  %443 = load i32, i32* %9, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 0
  %447 = load %struct.TYPE_7__*, %struct.TYPE_7__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 0
  %449 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %449, i64 1
  %451 = load %struct.TYPE_6__*, %struct.TYPE_6__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %500

455:                                              ; preds = %434
  %456 = load i32*, i32** %6, align 8
  %457 = load i32, i32* %10, align 4
  %458 = call i32 @sprintf(i32* %456, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 %457)
  %459 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %460 = load i32*, i32** %6, align 8
  %461 = sext i32 %459 to i64
  %462 = getelementptr inbounds i32, i32* %460, i64 %461
  store i32* %462, i32** %6, align 8
  %463 = load i32*, i32** %6, align 8
  %464 = load i32, i32* %10, align 4
  %465 = call i32 @sprintf(i32* %463, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 %464)
  %466 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %467 = load i32*, i32** %6, align 8
  %468 = sext i32 %466 to i64
  %469 = getelementptr inbounds i32, i32* %467, i64 %468
  store i32* %469, i32** %6, align 8
  %470 = load i32*, i32** %6, align 8
  %471 = load i32, i32* %10, align 4
  %472 = call i32 @sprintf(i32* %470, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i32 %471)
  %473 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %474 = load i32*, i32** %6, align 8
  %475 = sext i32 %473 to i64
  %476 = getelementptr inbounds i32, i32* %474, i64 %475
  store i32* %476, i32** %6, align 8
  %477 = load i32*, i32** %6, align 8
  %478 = load i32, i32* %10, align 4
  %479 = call i32 @sprintf(i32* %477, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i32 %478)
  %480 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %481 = load i32*, i32** %6, align 8
  %482 = sext i32 %480 to i64
  %483 = getelementptr inbounds i32, i32* %481, i64 %482
  store i32* %483, i32** %6, align 8
  %484 = load i32*, i32** %6, align 8
  %485 = load i32, i32* %10, align 4
  %486 = call i32 @sprintf(i32* %484, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i32 %485)
  %487 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %488 = load i32*, i32** %6, align 8
  %489 = sext i32 %487 to i64
  %490 = getelementptr inbounds i32, i32* %488, i64 %489
  store i32* %490, i32** %6, align 8
  %491 = load i32*, i32** %6, align 8
  %492 = load i32, i32* %10, align 4
  %493 = call i32 @sprintf(i32* %491, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i32 %492)
  %494 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %495 = load i32*, i32** %6, align 8
  %496 = sext i32 %494 to i64
  %497 = getelementptr inbounds i32, i32* %495, i64 %496
  store i32* %497, i32** %6, align 8
  %498 = load i32, i32* %10, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %10, align 4
  br label %500

500:                                              ; preds = %455, %434, %415, %356
  br label %501

501:                                              ; preds = %500
  %502 = load i32, i32* %9, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %9, align 4
  br label %350

504:                                              ; preds = %350
  br label %505

505:                                              ; preds = %504, %348
  %506 = load i32, i32* %8, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %8, align 4
  br label %332

508:                                              ; preds = %332
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %509

509:                                              ; preds = %575, %508
  %510 = load i32, i32* %8, align 4
  %511 = load %struct.bnad*, %struct.bnad** %7, align 8
  %512 = getelementptr inbounds %struct.bnad, %struct.bnad* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = icmp slt i32 %510, %513
  br i1 %514, label %515, label %578

515:                                              ; preds = %509
  %516 = load %struct.bnad*, %struct.bnad** %7, align 8
  %517 = getelementptr inbounds %struct.bnad, %struct.bnad* %516, i32 0, i32 5
  %518 = load %struct.TYPE_9__*, %struct.TYPE_9__** %517, align 8
  %519 = load i32, i32* %8, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %526, label %525

525:                                              ; preds = %515
  br label %575

526:                                              ; preds = %515
  store i32 0, i32* %9, align 4
  br label %527

527:                                              ; preds = %571, %526
  %528 = load i32, i32* %9, align 4
  %529 = load %struct.bnad*, %struct.bnad** %7, align 8
  %530 = getelementptr inbounds %struct.bnad, %struct.bnad* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 4
  %532 = icmp slt i32 %528, %531
  br i1 %532, label %533, label %574

533:                                              ; preds = %527
  %534 = load i32*, i32** %6, align 8
  %535 = load i32, i32* %10, align 4
  %536 = call i32 @sprintf(i32* %534, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 %535)
  %537 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %538 = load i32*, i32** %6, align 8
  %539 = sext i32 %537 to i64
  %540 = getelementptr inbounds i32, i32* %538, i64 %539
  store i32* %540, i32** %6, align 8
  %541 = load i32*, i32** %6, align 8
  %542 = load i32, i32* %10, align 4
  %543 = call i32 @sprintf(i32* %541, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 %542)
  %544 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %545 = load i32*, i32** %6, align 8
  %546 = sext i32 %544 to i64
  %547 = getelementptr inbounds i32, i32* %545, i64 %546
  store i32* %547, i32** %6, align 8
  %548 = load i32*, i32** %6, align 8
  %549 = load i32, i32* %10, align 4
  %550 = call i32 @sprintf(i32* %548, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i32 %549)
  %551 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %552 = load i32*, i32** %6, align 8
  %553 = sext i32 %551 to i64
  %554 = getelementptr inbounds i32, i32* %552, i64 %553
  store i32* %554, i32** %6, align 8
  %555 = load i32*, i32** %6, align 8
  %556 = load i32, i32* %10, align 4
  %557 = call i32 @sprintf(i32* %555, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i32 %556)
  %558 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %559 = load i32*, i32** %6, align 8
  %560 = sext i32 %558 to i64
  %561 = getelementptr inbounds i32, i32* %559, i64 %560
  store i32* %561, i32** %6, align 8
  %562 = load i32*, i32** %6, align 8
  %563 = load i32, i32* %10, align 4
  %564 = call i32 @sprintf(i32* %562, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0), i32 %563)
  %565 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %566 = load i32*, i32** %6, align 8
  %567 = sext i32 %565 to i64
  %568 = getelementptr inbounds i32, i32* %566, i64 %567
  store i32* %568, i32** %6, align 8
  %569 = load i32, i32* %10, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %10, align 4
  br label %571

571:                                              ; preds = %533
  %572 = load i32, i32* %9, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %9, align 4
  br label %527

574:                                              ; preds = %527
  br label %575

575:                                              ; preds = %574, %525
  %576 = load i32, i32* %8, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %8, align 4
  br label %509

578:                                              ; preds = %509
  br label %580

579:                                              ; preds = %3
  br label %580

580:                                              ; preds = %579, %578
  %581 = load %struct.bnad*, %struct.bnad** %7, align 8
  %582 = getelementptr inbounds %struct.bnad, %struct.bnad* %581, i32 0, i32 4
  %583 = call i32 @mutex_unlock(i32* %582)
  ret void
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @bna_tx_rid_mask(i32*) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @bna_rx_rid_mask(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
