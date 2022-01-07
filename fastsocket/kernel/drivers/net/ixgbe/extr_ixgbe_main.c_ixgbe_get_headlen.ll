; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_get_headlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_get_headlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i8* }
%struct.ethhdr = type { i64 }
%struct.vlan_hdr = type { i64 }
%struct.iphdr = type { i32, i32 }
%struct.ipv6hdr = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@ETH_P_FCOE = common dso_local global i32 0, align 4
@FCOE_HEADER_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @ixgbe_get_headlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_headlen(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.anon, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ETH_HLEN, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %3, align 4
  br label %228

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast %union.anon* %6 to i8**
  store i8* %16, i8** %17, align 8
  %18 = bitcast %union.anon* %6 to %struct.ethhdr**
  %19 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %20 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* @ETH_HLEN, align 4
  %23 = bitcast %union.anon* %6 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %23, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @ETH_P_8021Q, align 4
  %29 = call i64 @__constant_htons(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %15
  %32 = bitcast %union.anon* %6 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @VLAN_HLEN, align 4
  %40 = sub i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %3, align 4
  br label %228

45:                                               ; preds = %31
  %46 = bitcast %union.anon* %6 to %struct.vlan_hdr**
  %47 = load %struct.vlan_hdr*, %struct.vlan_hdr** %46, align 8
  %48 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i32, i32* @VLAN_HLEN, align 4
  %51 = bitcast %union.anon* %6 to i8**
  %52 = load i8*, i8** %51, align 8
  %53 = zext i32 %50 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %51, align 8
  br label %55

55:                                               ; preds = %45, %15
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @ETH_P_IP, align 4
  %58 = call i64 @__constant_htons(i32 %57)
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %107

60:                                               ; preds = %55
  %61 = bitcast %union.anon* %6 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = sub i64 %68, 8
  %70 = icmp ugt i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %3, align 4
  br label %228

73:                                               ; preds = %60
  %74 = bitcast %union.anon* %6 to i8**
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 15
  %80 = shl i32 %79, 2
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %82, 8
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = bitcast %union.anon* %6 to i8**
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %3, align 4
  br label %228

92:                                               ; preds = %73
  %93 = bitcast %union.anon* %6 to %struct.iphdr**
  %94 = load %struct.iphdr*, %struct.iphdr** %93, align 8
  %95 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IP_OFFSET, align 4
  %98 = call i32 @htons(i32 %97)
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = bitcast %union.anon* %6 to %struct.iphdr**
  %103 = load %struct.iphdr*, %struct.iphdr** %102, align 8
  %104 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %101, %92
  br label %139

107:                                              ; preds = %55
  %108 = load i64, i64* %7, align 8
  %109 = load i32, i32* @ETH_P_IPV6, align 4
  %110 = call i64 @__constant_htons(i32 %109)
  %111 = icmp eq i64 %108, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %107
  %113 = bitcast %union.anon* %6 to i8**
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = sub i64 %120, 4
  %122 = icmp ugt i64 %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %3, align 4
  br label %228

125:                                              ; preds = %112
  %126 = bitcast %union.anon* %6 to %struct.ipv6hdr**
  %127 = load %struct.ipv6hdr*, %struct.ipv6hdr** %126, align 8
  %128 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %8, align 4
  store i32 4, i32* %9, align 4
  br label %138

130:                                              ; preds = %107
  %131 = bitcast %union.anon* %6 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %3, align 4
  br label %228

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %106
  %140 = load i32, i32* %9, align 4
  %141 = bitcast %union.anon* %6 to i8**
  %142 = load i8*, i8** %141, align 8
  %143 = sext i32 %140 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %141, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @IPPROTO_TCP, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %186

148:                                              ; preds = %139
  %149 = bitcast %union.anon* %6 to i8**
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = load i32, i32* %5, align 4
  %156 = zext i32 %155 to i64
  %157 = sub i64 %156, 4
  %158 = icmp ugt i64 %154, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %148
  %160 = load i32, i32* %5, align 4
  store i32 %160, i32* %3, align 4
  br label %228

161:                                              ; preds = %148
  %162 = bitcast %union.anon* %6 to i8**
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 12
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 240
  %168 = ashr i32 %167, 2
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %170, 4
  br i1 %171, label %172, label %180

172:                                              ; preds = %161
  %173 = bitcast %union.anon* %6 to i8**
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %3, align 4
  br label %228

180:                                              ; preds = %161
  %181 = load i32, i32* %9, align 4
  %182 = bitcast %union.anon* %6 to i8**
  %183 = load i8*, i8** %182, align 8
  %184 = sext i32 %181 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %182, align 8
  br label %208

186:                                              ; preds = %139
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @IPPROTO_UDP, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %207

190:                                              ; preds = %186
  %191 = bitcast %union.anon* %6 to i8**
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** %4, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = load i32, i32* %5, align 4
  %198 = zext i32 %197 to i64
  %199 = sub i64 %198, 4
  %200 = icmp ugt i64 %196, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %190
  %202 = load i32, i32* %5, align 4
  store i32 %202, i32* %3, align 4
  br label %228

203:                                              ; preds = %190
  %204 = bitcast %union.anon* %6 to i8**
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 4
  store i8* %206, i8** %204, align 8
  br label %207

207:                                              ; preds = %203, %186
  br label %208

208:                                              ; preds = %207, %180
  %209 = bitcast %union.anon* %6 to i8**
  %210 = load i8*, i8** %209, align 8
  %211 = load i8*, i8** %4, align 8
  %212 = ptrtoint i8* %210 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = load i32, i32* %5, align 4
  %216 = zext i32 %215 to i64
  %217 = icmp slt i64 %214, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %208
  %219 = bitcast %union.anon* %6 to i8**
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** %4, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %3, align 4
  br label %228

226:                                              ; preds = %208
  %227 = load i32, i32* %5, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %226, %218, %201, %172, %159, %130, %123, %84, %71, %43, %13
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i64 @__constant_htons(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
