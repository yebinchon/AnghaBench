; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32*, i32, %struct.dev_mc_list* }
%struct.fec_enet_private = type { i64 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@FEC_R_CNTRL = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@FEC_GRP_HASH_TABLE_HIGH = common dso_local global i64 0, align 8
@FEC_GRP_HASH_TABLE_LOW = common dso_local global i64 0, align 8
@CRC32_POLY = common dso_local global i32 0, align 4
@HASH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.dev_mc_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %12)
  store %struct.fec_enet_private* %13, %struct.fec_enet_private** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_PROMISC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %22 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FEC_R_CNTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %31 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FEC_R_CNTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  br label %199

36:                                               ; preds = %1
  %37 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %38 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FEC_R_CNTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, -9
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %47 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FEC_R_CNTRL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IFF_ALLMULTI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %36
  %59 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %60 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FEC_GRP_HASH_TABLE_HIGH, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 -1, i64 %63)
  %65 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %66 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FEC_GRP_HASH_TABLE_LOW, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 -1, i64 %69)
  br label %199

71:                                               ; preds = %36
  %72 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %73 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FEC_GRP_HASH_TABLE_HIGH, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 0, i64 %76)
  %78 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %79 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FEC_GRP_HASH_TABLE_LOW, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 0, i64 %82)
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 2
  %86 = load %struct.dev_mc_list*, %struct.dev_mc_list** %85, align 8
  store %struct.dev_mc_list* %86, %struct.dev_mc_list** %4, align 8
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %193, %71
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %199

93:                                               ; preds = %87
  %94 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %95 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  br label %193

102:                                              ; preds = %93
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %140, %102
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %106 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %103
  %110 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %111 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %134, %109
  %118 = load i32, i32* %7, align 4
  %119 = icmp ult i32 %118, 8
  br i1 %119, label %120, label %139

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = lshr i32 %121, 1
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = xor i32 %123, %124
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @CRC32_POLY, align 4
  br label %131

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 0, %130 ]
  %133 = xor i32 %122, %132
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = lshr i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %117

139:                                              ; preds = %117
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %103

143:                                              ; preds = %103
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @HASH_BITS, align 4
  %146 = sub nsw i32 32, %145
  %147 = lshr i32 %144, %146
  %148 = and i32 %147, 63
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %11, align 1
  %150 = load i8, i8* %11, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp sgt i32 %151, 31
  br i1 %152, label %153, label %173

153:                                              ; preds = %143
  %154 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %155 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @FEC_GRP_HASH_TABLE_HIGH, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @readl(i64 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i8, i8* %11, align 1
  %161 = zext i8 %160 to i32
  %162 = sub nsw i32 %161, 32
  %163 = shl i32 1, %162
  %164 = load i32, i32* %10, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %168 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @FEC_GRP_HASH_TABLE_HIGH, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 %166, i64 %171)
  br label %192

173:                                              ; preds = %143
  %174 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %175 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @FEC_GRP_HASH_TABLE_LOW, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @readl(i64 %178)
  store i32 %179, i32* %10, align 4
  %180 = load i8, i8* %11, align 1
  %181 = zext i8 %180 to i32
  %182 = shl i32 1, %181
  %183 = load i32, i32* %10, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %187 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @FEC_GRP_HASH_TABLE_LOW, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @writel(i32 %185, i64 %190)
  br label %192

192:                                              ; preds = %173, %153
  br label %193

193:                                              ; preds = %192, %101
  %194 = load i32, i32* %6, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %6, align 4
  %196 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %197 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %196, i32 0, i32 2
  %198 = load %struct.dev_mc_list*, %struct.dev_mc_list** %197, align 8
  store %struct.dev_mc_list* %198, %struct.dev_mc_list** %4, align 8
  br label %87

199:                                              ; preds = %20, %58, %87
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
