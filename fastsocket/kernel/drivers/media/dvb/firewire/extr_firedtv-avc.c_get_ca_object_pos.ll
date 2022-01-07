; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_get_ca_object_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_get_ca_object_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avc_response_frame = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avc_response_frame*)* @get_ca_object_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ca_object_pos(%struct.avc_response_frame* %0) #0 {
  %2 = alloca %struct.avc_response_frame*, align 8
  %3 = alloca i32, align 4
  store %struct.avc_response_frame* %0, %struct.avc_response_frame** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.avc_response_frame*, %struct.avc_response_frame** %2, align 8
  %5 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 7
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 128
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.avc_response_frame*, %struct.avc_response_frame** %2, align 8
  %13 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 7
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 127
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %11, %1
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 7
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
