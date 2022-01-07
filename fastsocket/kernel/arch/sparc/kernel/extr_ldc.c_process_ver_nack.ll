; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_ver_nack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_ver_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32 }
%struct.ldc_version = type { i64, i64 }
%struct.ldc_packet = type { i32 }

@LDC_INFO = common dso_local global i32 0, align 4
@LDC_VERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_version*)* @process_ver_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ver_nack(%struct.ldc_channel* %0, %struct.ldc_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_version*, align 8
  %6 = alloca %struct.ldc_version*, align 8
  %7 = alloca %struct.ldc_packet*, align 8
  %8 = alloca i64, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_version* %1, %struct.ldc_version** %5, align 8
  %9 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %10 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %15 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %20 = call i32 @ldc_abort(%struct.ldc_channel* %19)
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %13, %2
  %22 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %23 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.ldc_version* @find_by_major(i64 %24)
  store %struct.ldc_version* %25, %struct.ldc_version** %6, align 8
  %26 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %27 = icmp ne %struct.ldc_version* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %30 = call i32 @ldc_abort(%struct.ldc_channel* %29)
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %21
  %32 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %33 = load i32, i32* @LDC_INFO, align 4
  %34 = load i32, i32* @LDC_VERS, align 4
  %35 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %36 = call %struct.ldc_packet* @handshake_compose_ctrl(%struct.ldc_channel* %32, i32 %33, i32 %34, %struct.ldc_version* %35, i32 16, i64* %8)
  store %struct.ldc_packet* %36, %struct.ldc_packet** %7, align 8
  %37 = load %struct.ldc_packet*, %struct.ldc_packet** %7, align 8
  %38 = icmp ne %struct.ldc_packet* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %41 = call i32 @ldc_abort(%struct.ldc_channel* %40)
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %31
  %43 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %44 = load %struct.ldc_packet*, %struct.ldc_packet** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @send_tx_packet(%struct.ldc_channel* %43, %struct.ldc_packet* %44, i64 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %39, %28, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

declare dso_local %struct.ldc_version* @find_by_major(i64) #1

declare dso_local %struct.ldc_packet* @handshake_compose_ctrl(%struct.ldc_channel*, i32, i32, %struct.ldc_version*, i32, i64*) #1

declare dso_local i32 @send_tx_packet(%struct.ldc_channel*, %struct.ldc_packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
