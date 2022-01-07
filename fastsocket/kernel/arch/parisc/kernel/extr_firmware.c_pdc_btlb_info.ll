; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_firmware.c_pdc_btlb_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_firmware.c_pdc_btlb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_btlb_info = type { i64 }

@pdc_lock = common dso_local global i32 0, align 4
@PDC_BLOCK_TLB = common dso_local global i32 0, align 4
@PDC_BTLB_INFO = common dso_local global i32 0, align 4
@pdc_result = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdc_btlb_info(%struct.pdc_btlb_info* %0) #0 {
  %2 = alloca %struct.pdc_btlb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.pdc_btlb_info* %0, %struct.pdc_btlb_info** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @pdc_lock, i64 %5)
  %7 = load i32, i32* @PDC_BLOCK_TLB, align 4
  %8 = load i32, i32* @PDC_BTLB_INFO, align 4
  %9 = load i32, i32* @pdc_result, align 4
  %10 = call i32 @__pa(i32 %9)
  %11 = call i32 @mem_pdc_call(i32 %7, i32 %8, i32 %10, i32 0)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.pdc_btlb_info*, %struct.pdc_btlb_info** %2, align 8
  %13 = load i32, i32* @pdc_result, align 4
  %14 = call i32 @memcpy(%struct.pdc_btlb_info* %12, i32 %13, i32 8)
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @pdc_lock, i64 %15)
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.pdc_btlb_info*, %struct.pdc_btlb_info** %2, align 8
  %21 = getelementptr inbounds %struct.pdc_btlb_info, %struct.pdc_btlb_info* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mem_pdc_call(i32, i32, i32, i32) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @memcpy(%struct.pdc_btlb_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
