; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_remove_all_hw_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_kgdb.c_bfin_remove_all_hw_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@breakinfo = common dso_local global %struct.TYPE_3__* null, align 8
@HW_WATCHPOINT_NUM = common dso_local global i32 0, align 4
@HW_INST_WATCHPOINT_NUM = common dso_local global i32 0, align 4
@TYPE_INST_WATCHPOINT = common dso_local global i32 0, align 4
@TYPE_DATA_WATCHPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfin_remove_all_hw_break() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @breakinfo, align 8
  %3 = load i32, i32* @HW_WATCHPOINT_NUM, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 4, %4
  %6 = trunc i64 %5 to i32
  %7 = call i32 @memset(%struct.TYPE_3__* %2, i32 0, i32 %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %19, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @HW_INST_WATCHPOINT_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32, i32* @TYPE_INST_WATCHPOINT, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @breakinfo, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %13, i32* %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %8

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @HW_WATCHPOINT_NUM, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* @TYPE_DATA_WATCHPOINT, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @breakinfo, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %23

37:                                               ; preds = %23
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
