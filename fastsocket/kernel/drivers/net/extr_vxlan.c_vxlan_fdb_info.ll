; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.vxlan_dev = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.vxlan_fdb = type { i64, i64, %struct.nda_cacheinfo, i32, i32 }
%struct.nda_cacheinfo = type { i64, i8*, i64, i8* }
%struct.vxlan_rdst = type { i64, i64, i64, i64 }
%struct.nlmsghdr = type { i32 }
%struct.ndmsg = type { i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@RTM_GETNEIGH = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NDA_PORT = common dso_local global i32 0, align 4
@NDA_VNI = common dso_local global i32 0, align 4
@NDA_IFINDEX = common dso_local global i32 0, align 4
@NDA_CACHEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.vxlan_dev*, %struct.vxlan_fdb*, i32, i32, i32, i32, %struct.vxlan_rdst*)* @vxlan_fdb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_info(%struct.sk_buff* %0, %struct.vxlan_dev* %1, %struct.vxlan_fdb* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.vxlan_rdst* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.vxlan_dev*, align 8
  %12 = alloca %struct.vxlan_fdb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vxlan_rdst*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.nda_cacheinfo, align 8
  %20 = alloca %struct.nlmsghdr*, align 8
  %21 = alloca %struct.ndmsg*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.vxlan_dev* %1, %struct.vxlan_dev** %11, align 8
  store %struct.vxlan_fdb* %2, %struct.vxlan_fdb** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.vxlan_rdst* %7, %struct.vxlan_rdst** %17, align 8
  %24 = load i64, i64* @jiffies, align 8
  store i64 %24, i64* %18, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %25, i32 %26, i32 %27, i32 %28, i32 20, i32 %29)
  store %struct.nlmsghdr* %30, %struct.nlmsghdr** %20, align 8
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %32 = icmp eq %struct.nlmsghdr* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %8
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %195

36:                                               ; preds = %8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %38 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %37)
  store %struct.ndmsg* %38, %struct.ndmsg** %21, align 8
  %39 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %40 = call i32 @memset(%struct.ndmsg* %39, i32 0, i32 20)
  store i32 1, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @RTM_GETNEIGH, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %36
  %45 = load i32, i32* @AF_INET, align 4
  %46 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %47 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %49 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @INADDR_ANY, align 4
  %52 = call i64 @htonl(i32 %51)
  %53 = icmp ne i64 %50, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %22, align 4
  %55 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %56 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %55, i32 0, i32 2
  %57 = call i32 @is_zero_ether_addr(%struct.nda_cacheinfo* byval(%struct.nda_cacheinfo) align 8 %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %23, align 4
  br label %65

61:                                               ; preds = %36
  %62 = load i32, i32* @AF_BRIDGE, align 4
  %63 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %64 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %44
  %66 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %67 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %70 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %72 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %77 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %79 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %82 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @NDA_DST, align 4
  %84 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %85 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %23, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %65
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = load i32, i32* @NDA_LLADDR, align 4
  %91 = load i32, i32* @ETH_ALEN, align 4
  %92 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %93 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %92, i32 0, i32 2
  %94 = call i64 @nla_put(%struct.sk_buff* %89, i32 %90, i32 %91, %struct.nda_cacheinfo* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %189

97:                                               ; preds = %88, %65
  %98 = load i32, i32* %22, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = load i32, i32* @NDA_DST, align 4
  %103 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %104 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @nla_put_be32(%struct.sk_buff* %101, i32 %102, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %189

109:                                              ; preds = %100, %97
  %110 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %111 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %109
  %115 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %116 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %119 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %124 = load i32, i32* @NDA_PORT, align 4
  %125 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %126 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @nla_put_be16(%struct.sk_buff* %123, i32 %124, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %189

131:                                              ; preds = %122, %114, %109
  %132 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %133 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %136 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %134, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %131
  %141 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %142 = load i32, i32* @NDA_VNI, align 4
  %143 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %144 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @nla_put_u32(%struct.sk_buff* %141, i32 %142, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %189

149:                                              ; preds = %140, %131
  %150 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %151 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %156 = load i32, i32* @NDA_IFINDEX, align 4
  %157 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %158 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @nla_put_u32(%struct.sk_buff* %155, i32 %156, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %189

163:                                              ; preds = %154, %149
  %164 = load i64, i64* %18, align 8
  %165 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %166 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %164, %167
  %169 = call i8* @jiffies_to_clock_t(i64 %168)
  %170 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %19, i32 0, i32 3
  store i8* %169, i8** %170, align 8
  %171 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %19, i32 0, i32 2
  store i64 0, i64* %171, align 8
  %172 = load i64, i64* %18, align 8
  %173 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %174 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = sub i64 %172, %175
  %177 = call i8* @jiffies_to_clock_t(i64 %176)
  %178 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %19, i32 0, i32 1
  store i8* %177, i8** %178, align 8
  %179 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %19, i32 0, i32 0
  store i64 0, i64* %179, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %181 = load i32, i32* @NDA_CACHEINFO, align 4
  %182 = call i64 @nla_put(%struct.sk_buff* %180, i32 %181, i32 32, %struct.nda_cacheinfo* %19)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %163
  br label %189

185:                                              ; preds = %163
  %186 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %187 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %188 = call i32 @nlmsg_end(%struct.sk_buff* %186, %struct.nlmsghdr* %187)
  store i32 %188, i32* %9, align 4
  br label %195

189:                                              ; preds = %184, %162, %148, %130, %108, %96
  %190 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %191 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %192 = call i32 @nlmsg_cancel(%struct.sk_buff* %190, %struct.nlmsghdr* %191)
  %193 = load i32, i32* @EMSGSIZE, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %189, %185, %33
  %196 = load i32, i32* %9, align 4
  ret i32 %196
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.ndmsg*, i32, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @is_zero_ether_addr(%struct.nda_cacheinfo* byval(%struct.nda_cacheinfo) align 8) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.nda_cacheinfo*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i8* @jiffies_to_clock_t(i64) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
