; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.catc = type { i32*, i32*, i32 }

@RxEnable = common dso_local global i32 0, align 4
@RxPolarity = common dso_local global i32 0, align 4
@RxMultiCast = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RxPromisc = common dso_local global i32 0, align 4
@AltRxPromisc = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@RxUnit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Setting RX mode to %2.2X %2.2X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @catc_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catc_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.catc*, align 8
  %4 = alloca %struct.dev_mc_list*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.catc* @netdev_priv(%struct.net_device* %9)
  store %struct.catc* %10, %struct.catc** %3, align 8
  %11 = load i32, i32* @RxEnable, align 4
  %12 = load i32, i32* @RxPolarity, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RxMultiCast, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 255, i32 6)
  %18 = load %struct.catc*, %struct.catc** %3, align 8
  %19 = getelementptr inbounds %struct.catc, %struct.catc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @memset(i32* %20, i32 0, i32 64)
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %23 = load %struct.catc*, %struct.catc** %3, align 8
  %24 = getelementptr inbounds %struct.catc, %struct.catc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @catc_multicast(i32* %22, i32* %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.catc*, %struct.catc** %3, align 8
  %31 = getelementptr inbounds %struct.catc, %struct.catc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @catc_multicast(i32* %29, i32* %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_PROMISC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %1
  %41 = load %struct.catc*, %struct.catc** %3, align 8
  %42 = getelementptr inbounds %struct.catc, %struct.catc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @memset(i32* %43, i32 255, i32 64)
  %45 = load %struct.catc*, %struct.catc** %3, align 8
  %46 = getelementptr inbounds %struct.catc, %struct.catc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @RxPromisc, align 4
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @AltRxPromisc, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %1
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IFF_ALLMULTI, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.catc*, %struct.catc** %3, align 8
  %66 = getelementptr inbounds %struct.catc, %struct.catc* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @memset(i32* %67, i32 255, i32 64)
  br label %130

69:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 3
  %72 = load %struct.dev_mc_list*, %struct.dev_mc_list** %71, align 8
  store %struct.dev_mc_list* %72, %struct.dev_mc_list** %4, align 8
  br label %73

73:                                               ; preds = %123, %69
  %74 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %75 = icmp ne %struct.dev_mc_list* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br label %82

82:                                               ; preds = %76, %73
  %83 = phi i1 [ false, %73 ], [ %81, %76 ]
  br i1 %83, label %84, label %129

84:                                               ; preds = %82
  %85 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %86 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ether_crc_le(i32 6, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.catc*, %struct.catc** %3, align 8
  %90 = getelementptr inbounds %struct.catc, %struct.catc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 7
  %96 = shl i32 1, %95
  %97 = load %struct.catc*, %struct.catc** %3, align 8
  %98 = getelementptr inbounds %struct.catc, %struct.catc* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 3
  %102 = and i32 %101, 63
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %96
  store i32 %106, i32* %104, align 4
  br label %122

107:                                              ; preds = %84
  %108 = load i32, i32* %8, align 4
  %109 = ashr i32 %108, 26
  %110 = and i32 %109, 7
  %111 = shl i32 1, %110
  %112 = load %struct.catc*, %struct.catc** %3, align 8
  %113 = getelementptr inbounds %struct.catc, %struct.catc* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 29
  %117 = sub nsw i32 7, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %111
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %107, %93
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  %126 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %127 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %126, i32 0, i32 1
  %128 = load %struct.dev_mc_list*, %struct.dev_mc_list** %127, align 8
  store %struct.dev_mc_list* %128, %struct.dev_mc_list** %4, align 8
  br label %73

129:                                              ; preds = %82
  br label %130

130:                                              ; preds = %129, %64
  %131 = load %struct.catc*, %struct.catc** %3, align 8
  %132 = getelementptr inbounds %struct.catc, %struct.catc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %130
  %136 = load %struct.catc*, %struct.catc** %3, align 8
  %137 = load i32, i32* @RxUnit, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @catc_set_reg_async(%struct.catc* %136, i32 %137, i32 %138)
  %140 = load %struct.catc*, %struct.catc** %3, align 8
  %141 = load %struct.catc*, %struct.catc** %3, align 8
  %142 = getelementptr inbounds %struct.catc, %struct.catc* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @catc_write_mem_async(%struct.catc* %140, i32 64128, i32* %143, i32 64)
  br label %181

145:                                              ; preds = %130
  %146 = load %struct.catc*, %struct.catc** %3, align 8
  %147 = load %struct.catc*, %struct.catc** %3, align 8
  %148 = getelementptr inbounds %struct.catc, %struct.catc* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @f5u011_mchash_async(%struct.catc* %146, i32* %149)
  %151 = load %struct.catc*, %struct.catc** %3, align 8
  %152 = getelementptr inbounds %struct.catc, %struct.catc* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %180

158:                                              ; preds = %145
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.catc*, %struct.catc** %3, align 8
  %161 = getelementptr inbounds %struct.catc, %struct.catc* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %159, i32* %163, align 4
  %164 = load %struct.catc*, %struct.catc** %3, align 8
  %165 = getelementptr inbounds %struct.catc, %struct.catc* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.catc*, %struct.catc** %3, align 8
  %170 = getelementptr inbounds %struct.catc, %struct.catc* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %168, i32 %173)
  %175 = load %struct.catc*, %struct.catc** %3, align 8
  %176 = load %struct.catc*, %struct.catc** %3, align 8
  %177 = getelementptr inbounds %struct.catc, %struct.catc* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @f5u011_rxmode_async(%struct.catc* %175, i32* %178)
  br label %180

180:                                              ; preds = %158, %145
  br label %181

181:                                              ; preds = %180, %135
  ret void
}

declare dso_local %struct.catc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @catc_multicast(i32*, i32*) #1

declare dso_local i32 @ether_crc_le(i32, i32) #1

declare dso_local i32 @catc_set_reg_async(%struct.catc*, i32, i32) #1

declare dso_local i32 @catc_write_mem_async(%struct.catc*, i32, i32*, i32) #1

declare dso_local i32 @f5u011_mchash_async(%struct.catc*, i32*) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @f5u011_rxmode_async(%struct.catc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
