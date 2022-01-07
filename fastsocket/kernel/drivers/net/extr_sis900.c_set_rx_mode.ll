; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sis900.c_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sis900.c_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.sis900_private = type { i64 }

@SIS635A_900_REV = common dso_local global i64 0, align 8
@SIS900B_900_REV = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4
@RFPromiscuous = common dso_local global i32 0, align 4
@multicast_filter_limit = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@RFAAB = common dso_local global i32 0, align 4
@RFAAM = common dso_local global i32 0, align 4
@RFADDR_shift = common dso_local global i32 0, align 4
@rfcr = common dso_local global i64 0, align 8
@rfdr = common dso_local global i64 0, align 8
@RFEN = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@cr = common dso_local global i64 0, align 8
@TxDIS = common dso_local global i32 0, align 4
@RxDIS = common dso_local global i32 0, align 4
@txcfg = common dso_local global i64 0, align 8
@TxMLB = common dso_local global i32 0, align 4
@rxcfg = common dso_local global i64 0, align 8
@RxATX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sis900_private*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dev_mc_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call %struct.sis900_private* @netdev_priv(%struct.net_device* %15)
  store %struct.sis900_private* %16, %struct.sis900_private** %4, align 8
  %17 = bitcast [16 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 64, i1 false)
  %18 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %19 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIS635A_900_REV, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %25 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SIS900B_900_REV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %1
  store i32 16, i32* %7, align 4
  br label %31

30:                                               ; preds = %23
  store i32 8, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IFF_PROMISC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32, i32* @RFPromiscuous, align 4
  store i32 %39, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %48, %38
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %46
  store i32 65535, i32* %47, align 4
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %40

51:                                               ; preds = %40
  br label %123

52:                                               ; preds = %31
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @multicast_filter_limit, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IFF_ALLMULTI, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %58, %52
  %66 = load i32, i32* @RFAAB, align 4
  %67 = load i32, i32* @RFAAM, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %77, %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %75
  store i32 65535, i32* %76, align 4
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %69

80:                                               ; preds = %69
  br label %122

81:                                               ; preds = %58
  %82 = load i32, i32* @RFAAB, align 4
  store i32 %82, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 3
  %85 = load %struct.dev_mc_list*, %struct.dev_mc_list** %84, align 8
  store %struct.dev_mc_list* %85, %struct.dev_mc_list** %9, align 8
  br label %86

86:                                               ; preds = %115, %81
  %87 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %88 = icmp ne %struct.dev_mc_list* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br label %96

96:                                               ; preds = %89, %86
  %97 = phi i1 [ false, %86 ], [ %95, %89 ]
  br i1 %97, label %98, label %121

98:                                               ; preds = %96
  %99 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %100 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sis900_private*, %struct.sis900_private** %4, align 8
  %103 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @sis900_mcast_bitnr(i32 %101, i64 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, 15
  %108 = shl i32 1, %107
  %109 = load i32, i32* %10, align 4
  %110 = lshr i32 %109, 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %98
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  %118 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %119 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %118, i32 0, i32 1
  %120 = load %struct.dev_mc_list*, %struct.dev_mc_list** %119, align 8
  store %struct.dev_mc_list* %120, %struct.dev_mc_list** %9, align 8
  br label %86

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %121, %80
  br label %123

123:                                              ; preds = %122, %51
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %145, %123
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %148

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 4, %129
  %131 = load i32, i32* @RFADDR_shift, align 4
  %132 = shl i32 %130, %131
  %133 = load i64, i64* %3, align 8
  %134 = load i64, i64* @rfcr, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @outl(i32 %132, i64 %135)
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %3, align 8
  %142 = load i64, i64* @rfdr, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @outl(i32 %140, i64 %143)
  br label %145

145:                                              ; preds = %128
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %124

148:                                              ; preds = %124
  %149 = load i32, i32* @RFEN, align 4
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %149, %150
  %152 = load i64, i64* %3, align 8
  %153 = load i64, i64* @rfcr, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @outl(i32 %151, i64 %154)
  %156 = load %struct.net_device*, %struct.net_device** %2, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IFF_LOOPBACK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %201

162:                                              ; preds = %148
  %163 = load i64, i64* %3, align 8
  %164 = load i64, i64* @cr, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @inl(i64 %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @TxDIS, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @RxDIS, align 4
  %171 = or i32 %169, %170
  %172 = load i64, i64* %3, align 8
  %173 = load i64, i64* @cr, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @outl(i32 %171, i64 %174)
  %176 = load i64, i64* %3, align 8
  %177 = load i64, i64* @txcfg, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @inl(i64 %178)
  %180 = load i32, i32* @TxMLB, align 4
  %181 = or i32 %179, %180
  %182 = load i64, i64* %3, align 8
  %183 = load i64, i64* @txcfg, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @outl(i32 %181, i64 %184)
  %186 = load i64, i64* %3, align 8
  %187 = load i64, i64* @rxcfg, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @inl(i64 %188)
  %190 = load i32, i32* @RxATX, align 4
  %191 = or i32 %189, %190
  %192 = load i64, i64* %3, align 8
  %193 = load i64, i64* @rxcfg, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @outl(i32 %191, i64 %194)
  %196 = load i32, i32* %11, align 4
  %197 = load i64, i64* %3, align 8
  %198 = load i64, i64* @cr, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @outl(i32 %196, i64 %199)
  br label %201

201:                                              ; preds = %162, %148
  ret void
}

declare dso_local %struct.sis900_private* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sis900_mcast_bitnr(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
