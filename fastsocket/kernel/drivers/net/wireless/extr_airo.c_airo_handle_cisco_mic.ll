; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_handle_cisco_mic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_handle_cisco_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32, i32, i32 }

@FLAG_MIC_CAPABLE = common dso_local global i32 0, align 4
@JOB_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*)* @airo_handle_cisco_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_handle_cisco_mic(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  %3 = load i32, i32* @FLAG_MIC_CAPABLE, align 4
  %4 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %5 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %4, i32 0, i32 2
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @JOB_MIC, align 4
  %10 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %11 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %10, i32 0, i32 1
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %14 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %13, i32 0, i32 0
  %15 = call i32 @wake_up_interruptible(i32* %14)
  br label %16

16:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
