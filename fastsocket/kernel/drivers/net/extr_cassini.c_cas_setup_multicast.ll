; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_setup_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_setup_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32*, %struct.dev_mc_list* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@MAC_RX_CFG_PROMISC_EN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAC_RX_CFG_HASH_FILTER_EN = common dso_local global i32 0, align 4
@CAS_MC_EXACT_MATCH_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*)* @cas_setup_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_setup_multicast(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_mc_list*, align 8
  %8 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.cas*, %struct.cas** %2, align 8
  %10 = getelementptr inbounds %struct.cas, %struct.cas* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_PROMISC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @MAC_RX_CFG_PROMISC_EN, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %211

21:                                               ; preds = %1
  %22 = load %struct.cas*, %struct.cas** %2, align 8
  %23 = getelementptr inbounds %struct.cas, %struct.cas* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IFF_ALLMULTI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.cas*, %struct.cas** %2, align 8
  %36 = getelementptr inbounds %struct.cas, %struct.cas* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @REG_MAC_HASH_TABLEN(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @writel(i32 65535, i64 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %31

45:                                               ; preds = %31
  %46 = load i32, i32* @MAC_RX_CFG_HASH_FILTER_EN, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %210

49:                                               ; preds = %21
  %50 = load %struct.cas*, %struct.cas** %2, align 8
  %51 = getelementptr inbounds %struct.cas, %struct.cas* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.dev_mc_list*, %struct.dev_mc_list** %53, align 8
  store %struct.dev_mc_list* %54, %struct.dev_mc_list** %7, align 8
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %157, %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @CAS_MC_EXACT_MATCH_SIZE, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %160

59:                                               ; preds = %55
  %60 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %61 = icmp ne %struct.dev_mc_list* %60, null
  br i1 %61, label %90, label %62

62:                                               ; preds = %59
  %63 = load %struct.cas*, %struct.cas** %2, align 8
  %64 = getelementptr inbounds %struct.cas, %struct.cas* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %66, 3
  %68 = add nsw i32 %67, 0
  %69 = call i64 @REG_MAC_ADDRN(i32 %68)
  %70 = add nsw i64 %65, %69
  %71 = call i32 @writel(i32 0, i64 %70)
  %72 = load %struct.cas*, %struct.cas** %2, align 8
  %73 = getelementptr inbounds %struct.cas, %struct.cas* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %75, 3
  %77 = add nsw i32 %76, 1
  %78 = call i64 @REG_MAC_ADDRN(i32 %77)
  %79 = add nsw i64 %74, %78
  %80 = call i32 @writel(i32 0, i64 %79)
  %81 = load %struct.cas*, %struct.cas** %2, align 8
  %82 = getelementptr inbounds %struct.cas, %struct.cas* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %84, 3
  %86 = add nsw i32 %85, 2
  %87 = call i64 @REG_MAC_ADDRN(i32 %86)
  %88 = add nsw i64 %83, %87
  %89 = call i32 @writel(i32 0, i64 %88)
  br label %157

90:                                               ; preds = %59
  %91 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %92 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %98 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %96, %101
  %103 = load %struct.cas*, %struct.cas** %2, align 8
  %104 = getelementptr inbounds %struct.cas, %struct.cas* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = mul nsw i32 %106, 3
  %108 = add nsw i32 %107, 0
  %109 = call i64 @REG_MAC_ADDRN(i32 %108)
  %110 = add nsw i64 %105, %109
  %111 = call i32 @writel(i32 %102, i64 %110)
  %112 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %113 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 8
  %118 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %119 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %117, %122
  %124 = load %struct.cas*, %struct.cas** %2, align 8
  %125 = getelementptr inbounds %struct.cas, %struct.cas* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = mul nsw i32 %127, 3
  %129 = add nsw i32 %128, 1
  %130 = call i64 @REG_MAC_ADDRN(i32 %129)
  %131 = add nsw i64 %126, %130
  %132 = call i32 @writel(i32 %123, i64 %131)
  %133 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %134 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 8
  %139 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %140 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %138, %143
  %145 = load %struct.cas*, %struct.cas** %2, align 8
  %146 = getelementptr inbounds %struct.cas, %struct.cas* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = mul nsw i32 %148, 3
  %150 = add nsw i32 %149, 2
  %151 = call i64 @REG_MAC_ADDRN(i32 %150)
  %152 = add nsw i64 %147, %151
  %153 = call i32 @writel(i32 %144, i64 %152)
  %154 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %155 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %154, i32 0, i32 1
  %156 = load %struct.dev_mc_list*, %struct.dev_mc_list** %155, align 8
  store %struct.dev_mc_list* %156, %struct.dev_mc_list** %7, align 8
  br label %157

157:                                              ; preds = %90, %62
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %55

160:                                              ; preds = %55
  %161 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %162 = call i32 @memset(i32* %161, i32 0, i32 64)
  br label %163

163:                                              ; preds = %166, %160
  %164 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %165 = icmp ne %struct.dev_mc_list* %164, null
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = load i32, i32* @ETH_ALEN, align 4
  %168 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %169 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @ether_crc_le(i32 %167, i32* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = ashr i32 %172, 24
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = and i32 %174, 15
  %176 = sub nsw i32 15, %175
  %177 = shl i32 1, %176
  %178 = load i32, i32* %6, align 4
  %179 = ashr i32 %178, 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %177
  store i32 %183, i32* %181, align 4
  %184 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %185 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %184, i32 0, i32 1
  %186 = load %struct.dev_mc_list*, %struct.dev_mc_list** %185, align 8
  store %struct.dev_mc_list* %186, %struct.dev_mc_list** %7, align 8
  br label %163

187:                                              ; preds = %163
  store i32 0, i32* %8, align 4
  br label %188

188:                                              ; preds = %203, %187
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %189, 16
  br i1 %190, label %191, label %206

191:                                              ; preds = %188
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.cas*, %struct.cas** %2, align 8
  %197 = getelementptr inbounds %struct.cas, %struct.cas* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = call i64 @REG_MAC_HASH_TABLEN(i32 %199)
  %201 = add nsw i64 %198, %200
  %202 = call i32 @writel(i32 %195, i64 %201)
  br label %203

203:                                              ; preds = %191
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %188

206:                                              ; preds = %188
  %207 = load i32, i32* @MAC_RX_CFG_HASH_FILTER_EN, align 4
  %208 = load i32, i32* %3, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %206, %45
  br label %211

211:                                              ; preds = %210, %17
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @REG_MAC_HASH_TABLEN(i32) #1

declare dso_local i64 @REG_MAC_ADDRN(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_crc_le(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
