; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_control_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_process_control_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32 }
%struct.ldc_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_packet*)* @process_control_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_control_frame(%struct.ldc_channel* %0, %struct.ldc_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_packet*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_packet* %1, %struct.ldc_packet** %5, align 8
  %6 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %7 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 128, label %9
    i32 129, label %13
    i32 130, label %17
    i32 131, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %11 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %12 = call i32 @process_version(%struct.ldc_channel* %10, %struct.ldc_packet* %11)
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %15 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %16 = call i32 @process_rts(%struct.ldc_channel* %14, %struct.ldc_packet* %15)
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %19 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %20 = call i32 @process_rtr(%struct.ldc_channel* %18, %struct.ldc_packet* %19)
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %23 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %24 = call i32 @process_rdx(%struct.ldc_channel* %22, %struct.ldc_packet* %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %27 = call i32 @ldc_abort(%struct.ldc_channel* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %21, %17, %13, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @process_version(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @process_rts(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @process_rtr(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @process_rdx(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @ldc_abort(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
