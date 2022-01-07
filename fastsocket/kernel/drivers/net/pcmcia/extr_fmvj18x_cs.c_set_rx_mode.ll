; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_fmvj18x_cs.c_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_fmvj18x_cs.c_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }

@CONFIG_0 = common dso_local global i64 0, align 8
@sram_config = common dso_local global i64 0, align 8
@CONFIG0_RST = common dso_local global i32 0, align 4
@CONFIG0_RST_1 = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RX_MODE = common dso_local global i64 0, align 8
@MC_FILTERBREAK = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CONFIG_1 = common dso_local global i64 0, align 8
@MAR_ADR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dev_mc_list*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @CONFIG_0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inb(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @local_irq_save(i32 %19)
  %21 = load i64, i64* @sram_config, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i32, i32* @CONFIG0_RST, align 4
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @CONFIG_0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %24, i64 %28)
  br label %37

30:                                               ; preds = %1
  %31 = load i32, i32* @CONFIG0_RST_1, align 4
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* @CONFIG_0, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i32 %31, i64 %35)
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %46 = call i32 @memset(i32* %45, i32 255, i32 32)
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @RX_MODE, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i32 3, i64 %50)
  br label %134

52:                                               ; preds = %37
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MC_FILTERBREAK, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_ALLMULTI, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58, %52
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %67 = call i32 @memset(i32* %66, i32 255, i32 32)
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* @RX_MODE, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 2, i64 %71)
  br label %133

73:                                               ; preds = %58
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %80 = call i32 @memset(i32* %79, i32 0, i32 32)
  %81 = load i32, i32* %3, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* @RX_MODE, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb(i32 1, i64 %84)
  br label %132

86:                                               ; preds = %73
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %88 = call i32 @memset(i32* %87, i32 0, i32 32)
  store i32 0, i32* %6, align 4
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 3
  %91 = load %struct.dev_mc_list*, %struct.dev_mc_list** %90, align 8
  store %struct.dev_mc_list* %91, %struct.dev_mc_list** %9, align 8
  br label %92

92:                                               ; preds = %120, %86
  %93 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %94 = icmp ne %struct.dev_mc_list* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  br label %102

102:                                              ; preds = %95, %92
  %103 = phi i1 [ false, %92 ], [ %101, %95 ]
  br i1 %103, label %104, label %126

104:                                              ; preds = %102
  %105 = load i32, i32* @ETH_ALEN, align 4
  %106 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %107 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ether_crc_le(i32 %105, i32 %108)
  %110 = ashr i32 %109, 26
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %111, 7
  %113 = shl i32 1, %112
  %114 = load i32, i32* %10, align 4
  %115 = lshr i32 %114, 3
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %104
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  %123 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %124 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %123, i32 0, i32 1
  %125 = load %struct.dev_mc_list*, %struct.dev_mc_list** %124, align 8
  store %struct.dev_mc_list* %125, %struct.dev_mc_list** %9, align 8
  br label %92

126:                                              ; preds = %102
  %127 = load i32, i32* %3, align 4
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* @RX_MODE, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outb(i32 2, i64 %130)
  br label %132

132:                                              ; preds = %126, %78
  br label %133

133:                                              ; preds = %132, %65
  br label %134

134:                                              ; preds = %133, %44
  %135 = load i32, i32* %3, align 4
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* @CONFIG_1, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @inb(i64 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %3, align 4
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* @CONFIG_1, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @outb(i32 228, i64 %143)
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %161, %134
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 8
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %3, align 4
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* @MAR_ADR, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %156, %158
  %160 = call i32 @outb(i32 %152, i64 %159)
  br label %161

161:                                              ; preds = %148
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %145

164:                                              ; preds = %145
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %3, align 4
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* @CONFIG_1, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @outb(i32 %165, i64 %169)
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %3, align 4
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* @CONFIG_0, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @outb(i32 %171, i64 %175)
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @local_irq_restore(i32 %177)
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_crc_le(i32, i32) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
