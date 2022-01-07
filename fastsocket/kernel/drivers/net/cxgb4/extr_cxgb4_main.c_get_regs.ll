; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.adapter = type { i32 }

@get_regs.reg_ranges = internal constant [434 x i32] [i32 4104, i32 4360, i32 4480, i32 4532, i32 4604, i32 4668, i32 4864, i32 5948, i32 6144, i32 6396, i32 12288, i32 12504, i32 12512, i32 22820, i32 22880, i32 22996, i32 23040, i32 23288, i32 24576, i32 24728, i32 24832, i32 24912, i32 25088, i32 25096, i32 25152, i32 25160, i32 25216, i32 25400, i32 25456, i32 25484, i32 25600, i32 25660, i32 25856, i32 25892, i32 27136, i32 27192, i32 27232, i32 27256, i32 27392, i32 27524, i32 27632, i32 27780, i32 27888, i32 28036, i32 28144, i32 28292, i32 28400, i32 28548, i32 28656, i32 28804, i32 28912, i32 29060, i32 29168, i32 29316, i32 29424, i32 29572, i32 29680, i32 29776, i32 29952, i32 30000, i32 30208, i32 30236, i32 30336, i32 30412, i32 30464, i32 30616, i32 30656, i32 30716, i32 30976, i32 31228, i32 31488, i32 31800, i32 32000, i32 32508, i32 36288, i32 36380, i32 36400, i32 36472, i32 36512, i32 36716, i32 36800, i32 36980, i32 37116, i32 37116, i32 37888, i32 37976, i32 38400, i32 38588, i32 38912, i32 38920, i32 38944, i32 38972, i32 38992, i32 39012, i32 39936, i32 40044, i32 40064, i32 40172, i32 40192, i32 40300, i32 40320, i32 40428, i32 40448, i32 40556, i32 40576, i32 40684, i32 40704, i32 40812, i32 40832, i32 40940, i32 53252, i32 53308, i32 57280, i32 57312, i32 57344, i32 60028, i32 61440, i32 70032, i32 102464, i32 102508, i32 102520, i32 102528, i32 102540, i32 102692, i32 102736, i32 102832, i32 102864, i32 102888, i32 102968, i32 102988, i32 103416, i32 103540, i32 103568, i32 103672, i32 104448, i32 106288, i32 106496, i32 106604, i32 106672, i32 106784, i32 106792, i32 106808, i32 106896, i32 106948, i32 107004, i32 107004, i32 122944, i32 122956, i32 123524, i32 123532, i32 123584, i32 123584, i32 123616, i32 123616, i32 123648, i32 123780, i32 123840, i32 123848, i32 123968, i32 123980, i32 124548, i32 124556, i32 124608, i32 124608, i32 124640, i32 124640, i32 124672, i32 124804, i32 124864, i32 124872, i32 124992, i32 125004, i32 125572, i32 125580, i32 125632, i32 125632, i32 125664, i32 125664, i32 125696, i32 125828, i32 125888, i32 125896, i32 126016, i32 126028, i32 126596, i32 126604, i32 126656, i32 126656, i32 126688, i32 126688, i32 126720, i32 126852, i32 126912, i32 126920, i32 127040, i32 127052, i32 127620, i32 127628, i32 127680, i32 127680, i32 127712, i32 127712, i32 127744, i32 127876, i32 127936, i32 127944, i32 128064, i32 128076, i32 128644, i32 128652, i32 128704, i32 128704, i32 128736, i32 128736, i32 128768, i32 128900, i32 128960, i32 128968, i32 129088, i32 129100, i32 129668, i32 129676, i32 129728, i32 129728, i32 129760, i32 129760, i32 129792, i32 129924, i32 129984, i32 129992, i32 130112, i32 130124, i32 130692, i32 130700, i32 130752, i32 130752, i32 130784, i32 130784, i32 130816, i32 130948, i32 131008, i32 131016, i32 131072, i32 131116, i32 131328, i32 131388, i32 131472, i32 131528, i32 131584, i32 131864, i32 132096, i32 132392, i32 132416, i32 132628, i32 135168, i32 135232, i32 135244, i32 135264, i32 135360, i32 135404, i32 135680, i32 135784, i32 135792, i32 135812, i32 135932, i32 136072, i32 136192, i32 136196, i32 136448, i32 136472, i32 136492, i32 136508, i32 136528, i32 136532, i32 136704, i32 136704, i32 136712, i32 136744, i32 136752, i32 136764, i32 136960, i32 136988, i32 137088, i32 137100, i32 137216, i32 138296, i32 138368, i32 138620, i32 138752, i32 138756, i32 139264, i32 139308, i32 139520, i32 139580, i32 139664, i32 139720, i32 139776, i32 140056, i32 140288, i32 140584, i32 140608, i32 140820, i32 143360, i32 143424, i32 143436, i32 143456, i32 143552, i32 143596, i32 143872, i32 143976, i32 143984, i32 144004, i32 144124, i32 144264, i32 144384, i32 144388, i32 144640, i32 144664, i32 144684, i32 144700, i32 144720, i32 144724, i32 144896, i32 144896, i32 144904, i32 144936, i32 144944, i32 144956, i32 145152, i32 145180, i32 145280, i32 145292, i32 145408, i32 146488, i32 146560, i32 146812, i32 146944, i32 146948, i32 147456, i32 147500, i32 147712, i32 147772, i32 147856, i32 147912, i32 147968, i32 148248, i32 148480, i32 148776, i32 148800, i32 149012, i32 151552, i32 151616, i32 151628, i32 151648, i32 151744, i32 151788, i32 152064, i32 152168, i32 152176, i32 152196, i32 152316, i32 152456, i32 152576, i32 152580, i32 152832, i32 152856, i32 152876, i32 152892, i32 152912, i32 152916, i32 153088, i32 153088, i32 153096, i32 153128, i32 153136, i32 153148, i32 153344, i32 153372, i32 153472, i32 153484, i32 153600, i32 154680, i32 154752, i32 155004, i32 155136, i32 155140, i32 155648, i32 155692, i32 155904, i32 155964, i32 156048, i32 156104, i32 156160, i32 156440, i32 156672, i32 156968, i32 156992, i32 157204, i32 159744, i32 159808, i32 159820, i32 159840, i32 159936, i32 159980, i32 160256, i32 160360, i32 160368, i32 160388, i32 160508, i32 160648, i32 160768, i32 160772, i32 161024, i32 161048, i32 161068, i32 161084, i32 161104, i32 161108, i32 161280, i32 161280, i32 161288, i32 161320, i32 161328, i32 161340, i32 161536, i32 161564, i32 161664, i32 161676, i32 161792, i32 162872, i32 162944, i32 163196, i32 163328, i32 163332], align 16
@T4_REGMAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.adapter* @netdev2adap(%struct.net_device* %9)
  store %struct.adapter* %10, %struct.adapter** %8, align 8
  %11 = load %struct.adapter*, %struct.adapter** %8, align 8
  %12 = call i32 @mk_adap_vers(%struct.adapter* %11)
  %13 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @T4_REGMAP_SIZE, align 4
  %17 = call i32 @memset(i8* %15, i32 0, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %35, %3
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([434 x i32], [434 x i32]* @get_regs.reg_ranges, i64 0, i64 0))
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.adapter*, %struct.adapter** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [434 x i32], [434 x i32]* @get_regs.reg_ranges, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [434 x i32], [434 x i32]* @get_regs.reg_ranges, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @reg_block_dump(%struct.adapter* %23, i8* %24, i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %7, align 4
  br label %18

38:                                               ; preds = %18
  ret void
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @mk_adap_vers(%struct.adapter*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @reg_block_dump(%struct.adapter*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
