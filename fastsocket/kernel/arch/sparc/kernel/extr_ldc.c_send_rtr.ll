; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_send_rtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_send_rtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ldc_packet = type { i64, i32 }

@LDC_INFO = common dso_local global i32 0, align 4
@LDC_RTR = common dso_local global i32 0, align 4
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SEND RTR env[0x%x] seqid[0x%x]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*)* @send_rtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_rtr(%struct.ldc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ldc_channel*, align 8
  %4 = alloca %struct.ldc_packet*, align 8
  %5 = alloca i64, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %3, align 8
  %6 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %7 = load i32, i32* @LDC_INFO, align 4
  %8 = load i32, i32* @LDC_RTR, align 4
  %9 = call %struct.ldc_packet* @handshake_compose_ctrl(%struct.ldc_channel* %6, i32 %7, i32 %8, i32* null, i32 0, i64* %5)
  store %struct.ldc_packet* %9, %struct.ldc_packet** %4, align 8
  %10 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %11 = icmp ne %struct.ldc_packet* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %14 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %18 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %20 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @HS, align 4
  %22 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %23 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %26 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ldcdbg(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %27)
  %29 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %30 = load %struct.ldc_packet*, %struct.ldc_packet** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @send_tx_packet(%struct.ldc_channel* %29, %struct.ldc_packet* %30, i64 %31)
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ldc_packet* @handshake_compose_ctrl(%struct.ldc_channel*, i32, i32, i32*, i32, i64*) #1

declare dso_local i32 @ldcdbg(i32, i8*, i32, i64) #1

declare dso_local i32 @send_tx_packet(%struct.ldc_channel*, %struct.ldc_packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
