; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_hostap_tx_callback_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_main.c_hostap_tx_callback_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.hostap_tx_callback_info* }
%struct.hostap_tx_callback_info = type { i64, %struct.hostap_tx_callback_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_tx_callback_unregister(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hostap_tx_callback_info*, align 8
  %7 = alloca %struct.hostap_tx_callback_info*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.hostap_tx_callback_info* null, %struct.hostap_tx_callback_info** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %13, align 8
  store %struct.hostap_tx_callback_info* %14, %struct.hostap_tx_callback_info** %6, align 8
  br label %15

15:                                               ; preds = %26, %2
  %16 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %6, align 8
  %17 = icmp ne %struct.hostap_tx_callback_info* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %6, align 8
  %20 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %21, %22
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i1 [ false, %15 ], [ %23, %18 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %6, align 8
  store %struct.hostap_tx_callback_info* %27, %struct.hostap_tx_callback_info** %7, align 8
  %28 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %6, align 8
  %29 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %28, i32 0, i32 1
  %30 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %29, align 8
  store %struct.hostap_tx_callback_info* %30, %struct.hostap_tx_callback_info** %6, align 8
  br label %15

31:                                               ; preds = %24
  %32 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %6, align 8
  %33 = icmp ne %struct.hostap_tx_callback_info* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %7, align 8
  %36 = icmp eq %struct.hostap_tx_callback_info* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %6, align 8
  %39 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %38, i32 0, i32 1
  %40 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store %struct.hostap_tx_callback_info* %40, %struct.hostap_tx_callback_info** %42, align 8
  br label %49

43:                                               ; preds = %34
  %44 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %6, align 8
  %45 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %44, i32 0, i32 1
  %46 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %45, align 8
  %47 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %7, align 8
  %48 = getelementptr inbounds %struct.hostap_tx_callback_info, %struct.hostap_tx_callback_info* %47, i32 0, i32 1
  store %struct.hostap_tx_callback_info* %46, %struct.hostap_tx_callback_info** %48, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %6, align 8
  %51 = call i32 @kfree(%struct.hostap_tx_callback_info* %50)
  br label %52

52:                                               ; preds = %49, %31
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.hostap_tx_callback_info*, %struct.hostap_tx_callback_info** %6, align 8
  %58 = icmp ne %struct.hostap_tx_callback_info* %57, null
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 -1
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(%struct.hostap_tx_callback_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
