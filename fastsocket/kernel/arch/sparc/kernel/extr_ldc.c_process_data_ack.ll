; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_data_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_data_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i64, %struct.ldc_packet* }
%struct.ldc_packet = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@LDC_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_packet*)* @process_data_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_data_ack(%struct.ldc_channel* %0, %struct.ldc_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_packet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ldc_packet*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_packet* %1, %struct.ldc_packet** %5, align 8
  %9 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %10 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %13 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %2, %46
  %18 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %19 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %18, i32 0, i32 2
  %20 = load %struct.ldc_packet*, %struct.ldc_packet** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @LDC_PACKET_SIZE, align 8
  %23 = udiv i64 %21, %22
  %24 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %20, i64 %23
  store %struct.ldc_packet* %24, %struct.ldc_packet** %8, align 8
  %25 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @tx_advance(%struct.ldc_channel* %25, i64 %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %29 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %36 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  store i32 0, i32* %3, align 4
  br label %47

37:                                               ; preds = %17
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %40 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %45 = call i32 @ldc_abort(%struct.ldc_channel* %44)
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %37
  br label %17

47:                                               ; preds = %43, %33
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @tx_advance(%struct.ldc_channel*, i64) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
