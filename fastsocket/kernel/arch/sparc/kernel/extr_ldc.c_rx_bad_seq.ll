; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_rx_bad_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_rx_bad_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, i64 }
%struct.ldc_packet = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_packet*, %struct.ldc_packet*)* @rx_bad_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_bad_seq(%struct.ldc_channel* %0, %struct.ldc_packet* %1, %struct.ldc_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca %struct.ldc_packet*, align 8
  %7 = alloca %struct.ldc_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %5, align 8
  store %struct.ldc_packet* %1, %struct.ldc_packet** %6, align 8
  store %struct.ldc_packet* %2, %struct.ldc_packet** %7, align 8
  %9 = load %struct.ldc_packet*, %struct.ldc_packet** %7, align 8
  %10 = icmp ne %struct.ldc_packet* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.ldc_packet*, %struct.ldc_packet** %7, align 8
  %13 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %17 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %11, %3
  %19 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %20 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %21 = call i32 @send_data_nack(%struct.ldc_channel* %19, %struct.ldc_packet* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %38

26:                                               ; preds = %18
  %27 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %28 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %29 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @__set_rx_head(%struct.ldc_channel* %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %36 = call i32 @ldc_abort(%struct.ldc_channel* %35)
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %34, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @send_data_nack(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @__set_rx_head(%struct.ldc_channel*, i32) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
