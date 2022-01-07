; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_log_rx_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_log_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i16 }
%struct.fst_port_info = type { i16 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@RX_OFLO = common dso_local global i8 0, align 1
@DBG_ASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Rx fifo error on card %d port %d buffer %d\0A\00", align 1
@RX_CRC = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Rx crc error on card %d port %d\0A\00", align 1
@RX_FRAM = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Rx frame error on card %d port %d\0A\00", align 1
@RX_STP = common dso_local global i8 0, align 1
@RX_ENP = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Rx length error (%d) on card %d port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, %struct.fst_port_info*, i8, i32, i16)* @fst_log_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_log_rx_error(%struct.fst_card_info* %0, %struct.fst_port_info* %1, i8 zeroext %2, i32 %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.fst_card_info*, align 8
  %7 = alloca %struct.fst_port_info*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca %struct.net_device*, align 8
  store %struct.fst_card_info* %0, %struct.fst_card_info** %6, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i16 %4, i16* %10, align 2
  %12 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %13 = call %struct.net_device* @port_to_dev(%struct.fst_port_info* %12)
  store %struct.net_device* %13, %struct.net_device** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %11, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @RX_OFLO, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %5
  %26 = load %struct.net_device*, %struct.net_device** %11, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @DBG_ASS, align 4
  %32 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %33 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 2
  %35 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %36 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 2
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i8*, i16, i16, ...) @dbg(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i16 zeroext %34, i16 zeroext %37, i32 %38)
  br label %40

40:                                               ; preds = %25, %5
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @RX_CRC, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %11, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @DBG_ASS, align 4
  %54 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %55 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %54, i32 0, i32 0
  %56 = load i16, i16* %55, align 2
  %57 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %58 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 2
  %60 = call i32 (i32, i8*, i16, i16, ...) @dbg(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %56, i16 zeroext %59)
  br label %61

61:                                               ; preds = %47, %40
  %62 = load i8, i8* %8, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @RX_FRAM, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load %struct.net_device*, %struct.net_device** %11, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @DBG_ASS, align 4
  %75 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %76 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %75, i32 0, i32 0
  %77 = load i16, i16* %76, align 2
  %78 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %79 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %78, i32 0, i32 0
  %80 = load i16, i16* %79, align 2
  %81 = call i32 (i32, i8*, i16, i16, ...) @dbg(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %77, i16 zeroext %80)
  br label %82

82:                                               ; preds = %68, %61
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @RX_STP, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @RX_ENP, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %86, %88
  %90 = icmp eq i32 %84, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %82
  %92 = load %struct.net_device*, %struct.net_device** %11, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @DBG_ASS, align 4
  %98 = load i16, i16* %10, align 2
  %99 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %100 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %99, i32 0, i32 0
  %101 = load i16, i16* %100, align 2
  %102 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %103 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %102, i32 0, i32 0
  %104 = load i16, i16* %103, align 2
  %105 = zext i16 %104 to i32
  %106 = call i32 (i32, i8*, i16, i16, ...) @dbg(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %98, i16 zeroext %101, i32 %105)
  br label %107

107:                                              ; preds = %91, %82
  ret void
}

declare dso_local %struct.net_device* @port_to_dev(%struct.fst_port_info*) #1

declare dso_local i32 @dbg(i32, i8*, i16 zeroext, i16 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
