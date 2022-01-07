; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_data_get_tx_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_data_get_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_packet = type { i32 }
%struct.ldc_channel = type { i32, %struct.ldc_packet* }

@LDC_PACKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ldc_packet* (%struct.ldc_channel*, i64*)* @data_get_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ldc_packet* @data_get_tx_packet(%struct.ldc_channel* %0, i64* %1) #0 {
  %3 = alloca %struct.ldc_packet*, align 8
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ldc_packet*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %10 = call i64 @head_for_data(%struct.ldc_channel* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %12 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %13 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @tx_advance(%struct.ldc_channel* %11, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.ldc_packet* null, %struct.ldc_packet** %3, align 8
  br label %34

20:                                               ; preds = %2
  %21 = load i64, i64* %8, align 8
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  %23 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %23, i32 0, i32 1
  %25 = load %struct.ldc_packet*, %struct.ldc_packet** %24, align 8
  store %struct.ldc_packet* %25, %struct.ldc_packet** %6, align 8
  %26 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %27 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %28 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LDC_PACKET_SIZE, align 4
  %31 = sdiv i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %26, i64 %32
  store %struct.ldc_packet* %33, %struct.ldc_packet** %3, align 8
  br label %34

34:                                               ; preds = %20, %19
  %35 = load %struct.ldc_packet*, %struct.ldc_packet** %3, align 8
  ret %struct.ldc_packet* %35
}

declare dso_local i64 @head_for_data(%struct.ldc_channel*) #1

declare dso_local i64 @tx_advance(%struct.ldc_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
