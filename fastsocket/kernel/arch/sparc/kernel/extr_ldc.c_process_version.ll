; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32 }
%struct.ldc_packet = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ldc_version = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_packet*)* @process_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_version(%struct.ldc_channel* %0, %struct.ldc_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_packet*, align 8
  %6 = alloca %struct.ldc_version*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_packet* %1, %struct.ldc_packet** %5, align 8
  %7 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %8 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ldc_version*
  store %struct.ldc_version* %11, %struct.ldc_version** %6, align 8
  %12 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %13 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %27 [
    i32 129, label %15
    i32 130, label %19
    i32 128, label %23
  ]

15:                                               ; preds = %2
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %17 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %18 = call i32 @process_ver_info(%struct.ldc_channel* %16, %struct.ldc_version* %17)
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %21 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %22 = call i32 @process_ver_ack(%struct.ldc_channel* %20, %struct.ldc_version* %21)
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %25 = load %struct.ldc_version*, %struct.ldc_version** %6, align 8
  %26 = call i32 @process_ver_nack(%struct.ldc_channel* %24, %struct.ldc_version* %25)
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %29 = call i32 @ldc_abort(%struct.ldc_channel* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %23, %19, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @process_ver_info(%struct.ldc_channel*, %struct.ldc_version*) #1

declare dso_local i32 @process_ver_ack(%struct.ldc_channel*, %struct.ldc_version*) #1

declare dso_local i32 @process_ver_nack(%struct.ldc_channel*, %struct.ldc_version*) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
