; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_disable_MAC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_disable_MAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@FLAG_ENABLED = common dso_local global i32 0, align 4
@MAC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*, i32)* @disable_MAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_MAC(%struct.airo_info* %0, i32 %1) #0 {
  %3 = alloca %struct.airo_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %11 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %10, i32 0, i32 0
  %12 = call i64 @down_interruptible(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %38

15:                                               ; preds = %9, %2
  %16 = load i32, i32* @FLAG_ENABLED, align 4
  %17 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %18 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = call i32 @memset(%struct.TYPE_4__* %5, i32 0, i32 4)
  %23 = load i32, i32* @MAC_DISABLE, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %26 = call i32 @issuecommand(%struct.airo_info* %25, %struct.TYPE_4__* %5, i32* %6)
  %27 = load i32, i32* @FLAG_ENABLED, align 4
  %28 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 1
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %21, %15
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %36 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %35, i32 0, i32 0
  %37 = call i32 @up(i32* %36)
  br label %38

38:                                               ; preds = %14, %34, %31
  ret void
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @issuecommand(%struct.airo_info*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
