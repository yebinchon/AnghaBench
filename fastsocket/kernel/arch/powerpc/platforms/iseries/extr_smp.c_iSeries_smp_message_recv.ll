; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_smp.c_iSeries_smp_message_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_smp.c_iSeries_smp_message_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iSeries_smp_message = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iSeries_smp_message_recv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @num_online_cpus()
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %26

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = load i32*, i32** @iSeries_smp_message, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i64 @test_and_clear_bit(i32 %12, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @smp_message_recv(i32 %20)
  br label %22

22:                                               ; preds = %19, %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %8

26:                                               ; preds = %6, %8
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @smp_message_recv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
