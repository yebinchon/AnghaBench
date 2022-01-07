; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_request_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_request_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_request = type { i32 }
%struct.uinput_device = type { %struct.uinput_request** }

@UINPUT_NUM_REQUESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uinput_request* (%struct.uinput_device*, i32)* @uinput_request_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uinput_request* @uinput_request_find(%struct.uinput_device* %0, i32 %1) #0 {
  %3 = alloca %struct.uinput_request*, align 8
  %4 = alloca %struct.uinput_device*, align 8
  %5 = alloca i32, align 4
  store %struct.uinput_device* %0, %struct.uinput_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @UINPUT_NUM_REQUESTS, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store %struct.uinput_request* null, %struct.uinput_request** %3, align 8
  br label %21

13:                                               ; preds = %9
  %14 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %15 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %14, i32 0, i32 0
  %16 = load %struct.uinput_request**, %struct.uinput_request*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.uinput_request*, %struct.uinput_request** %16, i64 %18
  %20 = load %struct.uinput_request*, %struct.uinput_request** %19, align 8
  store %struct.uinput_request* %20, %struct.uinput_request** %3, align 8
  br label %21

21:                                               ; preds = %13, %12
  %22 = load %struct.uinput_request*, %struct.uinput_request** %3, align 8
  ret %struct.uinput_request* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
