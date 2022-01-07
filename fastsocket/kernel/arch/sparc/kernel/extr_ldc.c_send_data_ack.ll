; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_send_data_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_send_data_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32 }
%struct.ldc_packet = type { %struct.TYPE_4__, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LDC_DATA = common dso_local global i32 0, align 4
@LDC_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ldc_channel*)* @send_data_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_data_ack(%struct.ldc_channel* %0) #0 {
  %2 = alloca %struct.ldc_channel*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ldc_packet*, align 8
  %5 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %2, align 8
  %6 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %7 = call %struct.ldc_packet* @data_get_tx_packet(%struct.ldc_channel* %6, i64* %3)
  store %struct.ldc_packet* %7, %struct.ldc_packet** %4, align 8
  %8 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %9 = call i64 @likely(%struct.ldc_packet* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %13 = call i32 @memset(%struct.ldc_packet* %12, i32 0, i32 32)
  %14 = load i32, i32* @LDC_DATA, align 4
  %15 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %16 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @LDC_ACK, align 4
  %18 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %19 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %21 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %23 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %27 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %29 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %32 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %36 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @send_tx_packet(%struct.ldc_channel* %35, %struct.ldc_packet* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %11
  %42 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %43 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %41, %11
  br label %47

47:                                               ; preds = %46, %1
  ret void
}

declare dso_local %struct.ldc_packet* @data_get_tx_packet(%struct.ldc_channel*, i64*) #1

declare dso_local i64 @likely(%struct.ldc_packet*) #1

declare dso_local i32 @memset(%struct.ldc_packet*, i32, i32) #1

declare dso_local i32 @send_tx_packet(%struct.ldc_channel*, %struct.ldc_packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
