; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_set_attention_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_set_attention_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32 }

@SET_ATTN_OFF = common dso_local global i32 0, align 4
@SET_ATTN_ON = common dso_local global i32 0, align 4
@SET_ATTN_BLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot*, i32)* @hpc_set_attention_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpc_set_attention_status(%struct.slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %14 [
    i32 0, label %8
    i32 1, label %10
    i32 2, label %12
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @SET_ATTN_OFF, align 4
  store i32 %9, i32* %6, align 4
  br label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @SET_ATTN_ON, align 4
  store i32 %11, i32* %6, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @SET_ATTN_BLINK, align 4
  store i32 %13, i32* %6, align 4
  br label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %22

15:                                               ; preds = %12, %10, %8
  %16 = load %struct.slot*, %struct.slot** %4, align 8
  %17 = load %struct.slot*, %struct.slot** %4, align 8
  %18 = getelementptr inbounds %struct.slot, %struct.slot* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @shpc_write_cmd(%struct.slot* %16, i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @shpc_write_cmd(%struct.slot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
