; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.vxlan_dev = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.vxlan_rdst }
%struct.vxlan_rdst = type { i64, i64, i64 }
%struct.ifla_vxlan_port_range = type { i32, i32 }

@IFLA_VXLAN_ID = common dso_local global i32 0, align 4
@IFLA_VXLAN_GROUP = common dso_local global i32 0, align 4
@IFLA_VXLAN_LINK = common dso_local global i32 0, align 4
@IFLA_VXLAN_LOCAL = common dso_local global i32 0, align 4
@IFLA_VXLAN_TTL = common dso_local global i32 0, align 4
@IFLA_VXLAN_TOS = common dso_local global i32 0, align 4
@IFLA_VXLAN_LEARNING = common dso_local global i32 0, align 4
@VXLAN_F_LEARN = common dso_local global i32 0, align 4
@IFLA_VXLAN_PROXY = common dso_local global i32 0, align 4
@VXLAN_F_PROXY = common dso_local global i32 0, align 4
@IFLA_VXLAN_RSC = common dso_local global i32 0, align 4
@VXLAN_F_RSC = common dso_local global i32 0, align 4
@IFLA_VXLAN_L2MISS = common dso_local global i32 0, align 4
@VXLAN_F_L2MISS = common dso_local global i32 0, align 4
@IFLA_VXLAN_L3MISS = common dso_local global i32 0, align 4
@VXLAN_F_L3MISS = common dso_local global i32 0, align 4
@IFLA_VXLAN_AGEING = common dso_local global i32 0, align 4
@IFLA_VXLAN_LIMIT = common dso_local global i32 0, align 4
@IFLA_VXLAN_PORT = common dso_local global i32 0, align 4
@IFLA_VXLAN_PORT_RANGE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vxlan_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.vxlan_dev*, align 8
  %7 = alloca %struct.vxlan_rdst*, align 8
  %8 = alloca %struct.ifla_vxlan_port_range, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.vxlan_dev* %10, %struct.vxlan_dev** %6, align 8
  %11 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %12 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %11, i32 0, i32 9
  store %struct.vxlan_rdst* %12, %struct.vxlan_rdst** %7, align 8
  %13 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %8, i32 0, i32 0
  %14 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %15 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @htons(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %8, i32 0, i32 1
  %19 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %20 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @htons(i32 %21)
  store i32 %22, i32* %18, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @IFLA_VXLAN_ID, align 4
  %25 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %26 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @nla_put_u32(%struct.sk_buff* %23, i32 %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %191

31:                                               ; preds = %2
  %32 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %33 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @IFLA_VXLAN_GROUP, align 4
  %39 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %40 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @nla_put_be32(%struct.sk_buff* %37, i32 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %191

45:                                               ; preds = %36, %31
  %46 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %47 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i32, i32* @IFLA_VXLAN_LINK, align 4
  %53 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %54 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %191

59:                                               ; preds = %50, %45
  %60 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %61 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i32, i32* @IFLA_VXLAN_LOCAL, align 4
  %67 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %68 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @nla_put_be32(%struct.sk_buff* %65, i32 %66, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %191

73:                                               ; preds = %64, %59
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load i32, i32* @IFLA_VXLAN_TTL, align 4
  %76 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %77 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @nla_put_u8(%struct.sk_buff* %74, i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %183, label %81

81:                                               ; preds = %73
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load i32, i32* @IFLA_VXLAN_TOS, align 4
  %84 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %85 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @nla_put_u8(%struct.sk_buff* %82, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %183, label %89

89:                                               ; preds = %81
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* @IFLA_VXLAN_LEARNING, align 4
  %92 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %93 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @VXLAN_F_LEARN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i64 @nla_put_u8(%struct.sk_buff* %90, i32 %91, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %183, label %103

103:                                              ; preds = %89
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load i32, i32* @IFLA_VXLAN_PROXY, align 4
  %106 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %107 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @VXLAN_F_PROXY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @nla_put_u8(%struct.sk_buff* %104, i32 %105, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %183, label %117

117:                                              ; preds = %103
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load i32, i32* @IFLA_VXLAN_RSC, align 4
  %120 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %121 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @VXLAN_F_RSC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i64 @nla_put_u8(%struct.sk_buff* %118, i32 %119, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %183, label %131

131:                                              ; preds = %117
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = load i32, i32* @IFLA_VXLAN_L2MISS, align 4
  %134 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %135 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @VXLAN_F_L2MISS, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i64 @nla_put_u8(%struct.sk_buff* %132, i32 %133, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %183, label %145

145:                                              ; preds = %131
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = load i32, i32* @IFLA_VXLAN_L3MISS, align 4
  %148 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %149 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @VXLAN_F_L3MISS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i64 @nla_put_u8(%struct.sk_buff* %146, i32 %147, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %183, label %159

159:                                              ; preds = %145
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = load i32, i32* @IFLA_VXLAN_AGEING, align 4
  %162 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %163 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @nla_put_u32(%struct.sk_buff* %160, i32 %161, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %183, label %167

167:                                              ; preds = %159
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = load i32, i32* @IFLA_VXLAN_LIMIT, align 4
  %170 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %171 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @nla_put_u32(%struct.sk_buff* %168, i32 %169, i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %167
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = load i32, i32* @IFLA_VXLAN_PORT, align 4
  %178 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %179 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @nla_put_be16(%struct.sk_buff* %176, i32 %177, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %175, %167, %159, %145, %131, %117, %103, %89, %81, %73
  br label %191

184:                                              ; preds = %175
  %185 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %186 = load i32, i32* @IFLA_VXLAN_PORT_RANGE, align 4
  %187 = call i64 @nla_put(%struct.sk_buff* %185, i32 %186, i32 8, %struct.ifla_vxlan_port_range* %8)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %191

190:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  br label %194

191:                                              ; preds = %189, %183, %72, %58, %44, %30
  %192 = load i32, i32* @EMSGSIZE, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %191, %190
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.ifla_vxlan_port_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
