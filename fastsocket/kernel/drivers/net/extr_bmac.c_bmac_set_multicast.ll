; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BHASH0 = common dso_local global i32 0, align 4
@BHASH1 = common dso_local global i32 0, align 4
@BHASH2 = common dso_local global i32 0, align 4
@BHASH3 = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RXCFG = common dso_local global i32 0, align 4
@RxPromiscEnable = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bmac_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmac_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_mc_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 2
  %11 = load %struct.dev_mc_list*, %struct.dev_mc_list** %10, align 8
  store %struct.dev_mc_list* %11, %struct.dev_mc_list** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_ALLMULTI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 64
  br i1 %22, label %23, label %36

23:                                               ; preds = %18, %1
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = load i32, i32* @BHASH0, align 4
  %26 = call i32 @bmwrite(%struct.net_device* %24, i32 %25, i32 65535)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @BHASH1, align 4
  %29 = call i32 @bmwrite(%struct.net_device* %27, i32 %28, i32 65535)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @BHASH2, align 4
  %32 = call i32 @bmwrite(%struct.net_device* %30, i32 %31, i32 65535)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* @BHASH3, align 4
  %35 = call i32 @bmwrite(%struct.net_device* %33, i32 %34, i32 65535)
  br label %143

36:                                               ; preds = %18
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IFF_PROMISC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i32, i32* @RXCFG, align 4
  %46 = call zeroext i16 @bmread(%struct.net_device* %44, i32 %45)
  store i16 %46, i16* %6, align 2
  %47 = load i16, i16* @RxPromiscEnable, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %6, align 2
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i32, i32* @RXCFG, align 4
  %55 = load i16, i16* %6, align 2
  %56 = zext i16 %55 to i32
  %57 = call i32 @bmwrite(%struct.net_device* %53, i32 %54, i32 %56)
  br label %142

58:                                               ; preds = %36
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i32, i32* @RXCFG, align 4
  %61 = call zeroext i16 @bmread(%struct.net_device* %59, i32 %60)
  store i16 %61, i16* %6, align 2
  %62 = load i16, i16* @RxPromiscEnable, align 2
  %63 = zext i16 %62 to i32
  %64 = xor i32 %63, -1
  %65 = load i16, i16* %6, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %6, align 2
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = load i32, i32* @RXCFG, align 4
  %71 = load i16, i16* %6, align 2
  %72 = zext i16 %71 to i32
  %73 = call i32 @bmwrite(%struct.net_device* %69, i32 %70, i32 %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %81, %58
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %79
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %74

84:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %118, %84
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %85
  %92 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %93 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %4, align 8
  %95 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %96 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %95, i32 0, i32 1
  %97 = load %struct.dev_mc_list*, %struct.dev_mc_list** %96, align 8
  store %struct.dev_mc_list* %97, %struct.dev_mc_list** %3, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %91
  br label %118

104:                                              ; preds = %91
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @ether_crc_le(i32 6, i8* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = ashr i32 %107, 26
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 15
  %111 = shl i32 1, %110
  %112 = load i32, i32* %7, align 4
  %113 = ashr i32 %112, 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %111
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %104, %103
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %85

121:                                              ; preds = %85
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = load i32, i32* @BHASH0, align 4
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = call i32 @bmwrite(%struct.net_device* %122, i32 %123, i32 %125)
  %127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %128 = load i32, i32* @BHASH1, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @bmwrite(%struct.net_device* %127, i32 %128, i32 %130)
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = load i32, i32* @BHASH2, align 4
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @bmwrite(%struct.net_device* %132, i32 %133, i32 %135)
  %137 = load %struct.net_device*, %struct.net_device** %2, align 8
  %138 = load i32, i32* @BHASH3, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @bmwrite(%struct.net_device* %137, i32 %138, i32 %140)
  br label %142

142:                                              ; preds = %121, %43
  br label %143

143:                                              ; preds = %142, %23
  ret void
}

declare dso_local i32 @bmwrite(%struct.net_device*, i32, i32) #1

declare dso_local zeroext i16 @bmread(%struct.net_device*, i32) #1

declare dso_local i32 @ether_crc_le(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
