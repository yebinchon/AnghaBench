; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_rtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_rtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ldc_packet = type { i64, i64, i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"GOT RTR stype[%x] seqid[%x] env[%x]\0A\00", align 1
@LDC_INFO = common dso_local global i64 0, align 8
@LDC_HS_COMPLETE = common dso_local global i32 0, align 4
@LDC_STATE_CONNECTED = common dso_local global i32 0, align 4
@LDC_EVENT_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_packet*)* @process_rtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_rtr(%struct.ldc_channel* %0, %struct.ldc_packet* %1) #0 {
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
  %11 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %14 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ldcdbg(i32 %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %12, i64 %15)
  %17 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %18 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LDC_INFO, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %24 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22, %2
  %32 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %33 = call i32 @ldc_abort(%struct.ldc_channel* %32)
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %22
  %35 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %36 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %39 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @LDC_HS_COMPLETE, align 4
  %41 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %42 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %44 = load i32, i32* @LDC_STATE_CONNECTED, align 4
  %45 = call i32 @ldc_set_state(%struct.ldc_channel* %43, i32 %44)
  %46 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %47 = call i32 @send_rdx(%struct.ldc_channel* %46)
  %48 = load i32, i32* @LDC_EVENT_UP, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %34, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ldcdbg(i32, i8*, i64, i32, i64) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

declare dso_local i32 @send_rdx(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
