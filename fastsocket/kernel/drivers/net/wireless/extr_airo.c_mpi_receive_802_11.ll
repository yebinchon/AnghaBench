; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_mpi_receive_802_11.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_mpi_receive_802_11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_16__*, i32*, %struct.TYPE_18__*, %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i64 }
%struct.sk_buff = type { i32, i32, i32*, i32 }
%struct.rx_hdr = type { i64*, i64, i64 }

@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Bad size %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"gaplen too big. Problems will follow...\00", align 1
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@PKTSIZE = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*)* @mpi_receive_802_11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_receive_802_11(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rx_hdr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %13 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  store i8* %18, i8** %11, align 8
  %19 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %20 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memcpy_fromio(%struct.TYPE_17__* %3, i32 %24, i32 16)
  %26 = bitcast %struct.rx_hdr* %8 to i8*
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @memcpy(i8* %26, i8* %27, i32 24)
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 24
  store i8* %30, i8** %11, align 8
  %31 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %8, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @le16_to_cpu(i64 %32)
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %8, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %36, %1
  %39 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %40 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %8, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.rx_hdr, %struct.rx_hdr* %8, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le16_to_cpu(i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @AIRO_DEF_MTU, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %54 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %53, i32 0, i32 2
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, ...) @airo_print_err(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %161

60:                                               ; preds = %45
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %161

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = call i32 @get_unaligned(i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @header_len(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 2
  %74 = call %struct.sk_buff* @dev_alloc_skb(i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %4, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %64
  %78 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %79 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %78, i32 0, i32 2
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %161

85:                                               ; preds = %64
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i64 @skb_put(%struct.sk_buff* %86, i32 %89)
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %10, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = bitcast i32* %92 to i8*
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @memcpy(i8* %93, i8* %94, i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %11, align 8
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 24
  br i1 %102, label %103, label %106

103:                                              ; preds = %85
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 6
  store i8* %105, i8** %11, align 8
  br label %106

106:                                              ; preds = %103, %85
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @get_unaligned_le16(i8* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  store i8* %110, i8** %11, align 8
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %106
  %114 = load i32, i32* %9, align 4
  %115 = icmp sle i32 %114, 8
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = load i8*, i8** %11, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %11, align 8
  br label %128

121:                                              ; preds = %113
  %122 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %123 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %122, i32 0, i32 2
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @airo_print_err(i32 %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %121, %116
  br label %129

129:                                              ; preds = %128, %106
  %130 = load i32*, i32** %10, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8*, i8** %11, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @memcpy(i8* %134, i8* %135, i32 %136)
  %138 = load i32, i32* %5, align 4
  %139 = load i8*, i8** %11, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %11, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = call i32 @skb_reset_mac_header(%struct.sk_buff* %142)
  %144 = load i32, i32* @PACKET_OTHERHOST, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  %147 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %148 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 2
  store i32* %149, i32** %151, align 8
  %152 = load i32, i32* @ETH_P_802_2, align 4
  %153 = call i32 @htons(i32 %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @CHECKSUM_NONE, align 4
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %160 = call i32 @netif_rx(%struct.sk_buff* %159)
  br label %161

161:                                              ; preds = %129, %77, %63, %52
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 2
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* @PKTSIZE, align 4
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  store i32 %168, i32* %169, align 4
  %170 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %171 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %170, i32 0, i32 0
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @memcpy_toio(i32 %175, %struct.TYPE_17__* %3, i32 16)
  br label %177

177:                                              ; preds = %165, %161
  ret void
}

declare dso_local i32 @memcpy_fromio(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @airo_print_err(i32, i8*, ...) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @header_len(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @memcpy_toio(i32, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
