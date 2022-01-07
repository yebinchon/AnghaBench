; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_send_data_nack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_send_data_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32 }
%struct.ldc_packet = type { i32, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@LDC_NACK = common dso_local global i32 0, align 4
@LDC_CTRL_MSK = common dso_local global i32 0, align 4
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"SEND DATA NACK type[0x%x] ctl[0x%x] seq[0x%x] ack[0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_packet*)* @send_data_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_data_nack(%struct.ldc_channel* %0, %struct.ldc_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_packet*, align 8
  %6 = alloca %struct.ldc_packet*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_packet* %1, %struct.ldc_packet** %5, align 8
  %9 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %10 = call %struct.ldc_packet* @data_get_tx_packet(%struct.ldc_channel* %9, i64* %7)
  store %struct.ldc_packet* %10, %struct.ldc_packet** %6, align 8
  %11 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %12 = icmp ne %struct.ldc_packet* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %18 = call i32 @memset(%struct.ldc_packet* %17, i32 0, i32 24)
  %19 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %20 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %23 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @LDC_NACK, align 4
  %25 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %26 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %28 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LDC_CTRL_MSK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %33 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %35 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %39 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %41 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %44 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @HS, align 4
  %48 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %49 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %52 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %55 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %58 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ldcdbg(i32 %47, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i64 %56, i32 %61)
  %63 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %64 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @send_tx_packet(%struct.ldc_channel* %63, %struct.ldc_packet* %64, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %16
  %70 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %71 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %69, %16
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.ldc_packet* @data_get_tx_packet(%struct.ldc_channel*, i64*) #1

declare dso_local i32 @memset(%struct.ldc_packet*, i32, i32) #1

declare dso_local i32 @ldcdbg(i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @send_tx_packet(%struct.ldc_channel*, %struct.ldc_packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
