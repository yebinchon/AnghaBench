; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qe_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qe_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }
%struct.sunqe = type { i32, i64 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MREGS_IACONFIG_ACHNGE = common dso_local global i32 0, align 4
@MREGS_IACONFIG_LARESET = common dso_local global i32 0, align 4
@MREGS_IACONFIG = common dso_local global i64 0, align 8
@MREGS_FILTER = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4
@MREGS_MCONFIG_PROMISC = common dso_local global i32 0, align 4
@MREGS_MCONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @qe_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sunqe*, align 8
  %4 = alloca %struct.dev_mc_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.sunqe* @netdev_priv(%struct.net_device* %12)
  store %struct.sunqe* %13, %struct.sunqe** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  %16 = load %struct.dev_mc_list*, %struct.dev_mc_list** %15, align 8
  store %struct.dev_mc_list* %16, %struct.dev_mc_list** %4, align 8
  %17 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %18 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @netif_stop_queue(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_ALLMULTI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 64
  br i1 %32, label %33, label %76

33:                                               ; preds = %28, %1
  %34 = load i32, i32* @MREGS_IACONFIG_ACHNGE, align 4
  %35 = load i32, i32* @MREGS_IACONFIG_LARESET, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %38 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MREGS_IACONFIG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @sbus_writeb(i32 %36, i64 %41)
  br label %43

43:                                               ; preds = %53, %33
  %44 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %45 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MREGS_IACONFIG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @sbus_readb(i64 %48)
  %50 = load i32, i32* @MREGS_IACONFIG_ACHNGE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = call i32 (...) @barrier()
  br label %43

55:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %61 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MREGS_FILTER, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @sbus_writeb(i32 255, i64 %64)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %71 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MREGS_IACONFIG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @sbus_writeb(i32 0, i64 %74)
  br label %186

76:                                               ; preds = %28
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IFF_PROMISC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @MREGS_MCONFIG_PROMISC, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %185

87:                                               ; preds = %76
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %89 = bitcast i32* %88 to i8*
  %90 = bitcast i8* %89 to i32*
  store i32* %90, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %98, %87
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %96
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %91

101:                                              ; preds = %91
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %135, %101
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %102
  %109 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %110 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %6, align 8
  %112 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %113 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %112, i32 0, i32 1
  %114 = load %struct.dev_mc_list*, %struct.dev_mc_list** %113, align 8
  store %struct.dev_mc_list* %114, %struct.dev_mc_list** %4, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %108
  br label %135

121:                                              ; preds = %108
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @ether_crc_le(i32 6, i8* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = ashr i32 %124, 26
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, 15
  %128 = shl i32 1, %127
  %129 = load i32, i32* %8, align 4
  %130 = ashr i32 %129, 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %121, %120
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %102

138:                                              ; preds = %102
  %139 = load i32, i32* @MREGS_IACONFIG_ACHNGE, align 4
  %140 = load i32, i32* @MREGS_IACONFIG_LARESET, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %143 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @MREGS_IACONFIG, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @sbus_writeb(i32 %141, i64 %146)
  br label %148

148:                                              ; preds = %158, %138
  %149 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %150 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @MREGS_IACONFIG, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @sbus_readb(i64 %153)
  %155 = load i32, i32* @MREGS_IACONFIG_ACHNGE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %148
  %159 = call i32 (...) @barrier()
  br label %148

160:                                              ; preds = %148
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %175, %160
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %178

164:                                              ; preds = %161
  %165 = load i32*, i32** %10, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %10, align 8
  %167 = load i32, i32* %165, align 4
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %170 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @MREGS_FILTER, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @sbus_writeb(i32 %168, i64 %173)
  br label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %161

178:                                              ; preds = %161
  %179 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %180 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @MREGS_IACONFIG, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @sbus_writeb(i32 0, i64 %183)
  br label %185

185:                                              ; preds = %178, %83
  br label %186

186:                                              ; preds = %185, %69
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %189 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %191 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %194 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MREGS_MCONFIG, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @sbus_writeb(i32 %192, i64 %197)
  %199 = load %struct.net_device*, %struct.net_device** %2, align 8
  %200 = call i32 @netif_wake_queue(%struct.net_device* %199)
  ret void
}

declare dso_local %struct.sunqe* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @sbus_writeb(i32, i64) #1

declare dso_local i32 @sbus_readb(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @ether_crc_le(i32, i8*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
