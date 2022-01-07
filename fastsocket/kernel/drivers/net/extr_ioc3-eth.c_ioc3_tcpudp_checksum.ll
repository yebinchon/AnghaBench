; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_tcpudp_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_tcpudp_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i64 }
%struct.iphdr = type { i32, i32, i32, i32, i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32)* @ioc3_tcpudp_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_tcpudp_checksum(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %14)
  store %struct.ethhdr* %15, %struct.ethhdr** %7, align 8
  %16 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %17 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @ETH_P_IP, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %211

24:                                               ; preds = %3
  %25 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %26 = bitcast %struct.ethhdr* %25 to i8*
  %27 = load i32, i32* @ETH_HLEN, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to %struct.iphdr*
  store %struct.iphdr* %30, %struct.iphdr** %11, align 8
  %31 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IP_MF, align 4
  %35 = load i32, i32* @IP_OFFSET, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @htons(i32 %36)
  %38 = and i32 %33, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %211

41:                                               ; preds = %24
  %42 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @IPPROTO_TCP, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @IPPROTO_UDP, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %211

53:                                               ; preds = %48, %41
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %56 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %59 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 2
  %62 = sub nsw i32 %57, %61
  %63 = add nsw i32 %54, %62
  %64 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %65 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @htons(i32 %66)
  %68 = add nsw i32 %63, %67
  %69 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %70 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 16
  %73 = add nsw i32 %68, %72
  %74 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %75 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 65535
  %78 = add nsw i32 %73, %77
  %79 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %80 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 16
  %83 = add nsw i32 %78, %82
  %84 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %85 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 65535
  %88 = add nsw i32 %83, %87
  store i32 %88, i32* %8, align 4
  %89 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %90 = bitcast %struct.ethhdr* %89 to i32*
  store i32* %90, i32** %12, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 6
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, 65535
  %120 = load i32, i32* %9, align 4
  %121 = ashr i32 %120, 16
  %122 = add nsw i32 %119, %121
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, 65535
  %125 = load i32, i32* %9, align 4
  %126 = ashr i32 %125, 16
  %127 = add nsw i32 %124, %126
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = xor i32 65535, %128
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %133 = bitcast %struct.ethhdr* %132 to i8*
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8* %136, i8** %13, align 8
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, 1
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %53
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = shl i32 %144, 8
  %146 = load i8*, i8** %13, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %145, %149
  %151 = xor i32 65535, %150
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %8, align 4
  %154 = load i8*, i8** %13, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = shl i32 %157, 8
  %159 = load i8*, i8** %13, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %158, %162
  %164 = xor i32 65535, %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %8, align 4
  br label %194

167:                                              ; preds = %53
  %168 = load i8*, i8** %13, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl i32 %171, 8
  %173 = load i8*, i8** %13, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %172, %176
  %178 = xor i32 65535, %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %8, align 4
  %181 = load i8*, i8** %13, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = shl i32 %184, 8
  %186 = load i8*, i8** %13, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 3
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = or i32 %185, %189
  %191 = xor i32 65535, %190
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %167, %140
  %195 = load i32, i32* %8, align 4
  %196 = and i32 %195, 65535
  %197 = load i32, i32* %8, align 4
  %198 = ashr i32 %197, 16
  %199 = add nsw i32 %196, %198
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = and i32 %200, 65535
  %202 = load i32, i32* %8, align 4
  %203 = ashr i32 %202, 16
  %204 = add nsw i32 %201, %203
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 65535
  br i1 %206, label %207, label %211

207:                                              ; preds = %194
  %208 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %23, %40, %52, %207, %194
  ret void
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
