; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s tx_enable(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*, i32)* @tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_enable(%struct.slgt_info* %0, i32 %1) #0 {
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %7 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @DBGINFO(i8* %11)
  %13 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %26 = call i32 @tx_start(%struct.slgt_info* %25)
  br label %27

27:                                               ; preds = %24, %19
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %35 = call i32 @tx_stop(%struct.slgt_info* %34)
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %27
  %38 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %39 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret i32 0
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tx_start(%struct.slgt_info*) #1

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
