; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_rdx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_rdx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, i32 }
%struct.ldc_packet = type { i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"GOT RDX stype[%x] seqid[%x] env[%x] ackid[%x]\0A\00", align 1
@LDC_INFO = common dso_local global i64 0, align 8
@LDC_HS_COMPLETE = common dso_local global i32 0, align 4
@LDC_STATE_CONNECTED = common dso_local global i32 0, align 4
@LDC_EVENT_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_packet*)* @process_rdx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_rdx(%struct.ldc_channel* %0, %struct.ldc_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_packet*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_packet* %1, %struct.ldc_packet** %5, align 8
  %6 = load i32, i32* @HS, align 4
  %7 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %8 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %11 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %14 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %17 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ldcdbg(i32 %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %12, i32 %15, i32 %20)
  %22 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %23 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LDC_INFO, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %29 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %30 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @rx_seq_ok(%struct.ldc_channel* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %2
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %36 = call i32 @ldc_abort(%struct.ldc_channel* %35)
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %27
  %38 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %39 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %42 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @LDC_HS_COMPLETE, align 4
  %44 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %45 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %47 = load i32, i32* @LDC_STATE_CONNECTED, align 4
  %48 = call i32 @ldc_set_state(%struct.ldc_channel* %46, i32 %47)
  %49 = load i32, i32* @LDC_EVENT_UP, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %37, %34
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ldcdbg(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @rx_seq_ok(%struct.ldc_channel*, i32) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
