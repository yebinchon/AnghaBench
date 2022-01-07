; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_i596_rx_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_i596_rx_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i596_private = type { i32 }
%struct.i596_rfd = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@RFD_STAT_OK = common dso_local global i32 0, align 4
@CMD_EOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Received on EOL\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: i596_rx Memory squeeze, dropping packet.\0A\00", align 1
@RFD_COLLISION = common dso_local global i32 0, align 4
@RFD_SHORT_FRAME_ERR = common dso_local global i32 0, align 4
@RFD_DMA_ERR = common dso_local global i32 0, align 4
@RFD_NOBUFS_ERR = common dso_local global i32 0, align 4
@RFD_ALIGN_ERR = common dso_local global i32 0, align 4
@RFD_CRC_ERR = common dso_local global i32 0, align 4
@RFD_LENGTH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.i596_private*, %struct.i596_rfd*, i32*)* @i596_rx_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i596_rx_one(%struct.net_device* %0, %struct.i596_private* %1, %struct.i596_rfd* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.i596_private*, align 8
  %8 = alloca %struct.i596_rfd*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.i596_private* %1, %struct.i596_private** %7, align 8
  store %struct.i596_rfd* %2, %struct.i596_rfd** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %13 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RFD_STAT_OK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %4
  %19 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %20 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 16383
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.sk_buff* @dev_alloc_skb(i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %11, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %29 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CMD_EOL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %18
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %18
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = icmp eq %struct.sk_buff* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  store i32 1, i32* %5, align 4
  br label %172

49:                                               ; preds = %36
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @skb_put(%struct.sk_buff* %50, i32 %51)
  %53 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %54 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @memcpy(i32 %52, i32 %55, i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = call i32 @eth_type_trans(%struct.sk_buff* %58, %struct.net_device* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = call i32 @netif_rx(%struct.sk_buff* %63)
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %167

70:                                               ; preds = %4
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %77 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RFD_COLLISION, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %70
  %89 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %90 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RFD_SHORT_FRAME_ERR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %103 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RFD_DMA_ERR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %116 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @RFD_NOBUFS_ERR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %114
  %128 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %129 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RFD_ALIGN_ERR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %127
  %141 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %142 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RFD_CRC_ERR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %147, %140
  %154 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %155 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @RFD_LENGTH_ERR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %153
  br label %167

167:                                              ; preds = %166, %49
  %168 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %169 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  %170 = load %struct.i596_rfd*, %struct.i596_rfd** %8, align 8
  %171 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %170, i32 0, i32 0
  store i32 0, i32* %171, align 4
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %167, %39
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
