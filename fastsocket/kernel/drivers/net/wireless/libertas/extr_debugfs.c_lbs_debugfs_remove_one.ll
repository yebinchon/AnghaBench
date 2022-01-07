; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_debugfs.c_lbs_debugfs_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_debugfs.c_lbs_debugfs_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32*, i32, i32, i32*, i32, i32* }

@debugfs_regs_files = common dso_local global i32 0, align 4
@debugfs_events_files = common dso_local global i32 0, align 4
@debugfs_files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_debugfs_remove_one(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @debugfs_regs_files, align 4
  %7 = call i32 @ARRAY_SIZE(i32 %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 6
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @debugfs_remove(i32 %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @debugfs_remove(i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %40, %21
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @debugfs_events_files, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @debugfs_remove(i32 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %45 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @debugfs_remove(i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %62, %43
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @debugfs_files, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @debugfs_remove(i32 %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %48

65:                                               ; preds = %48
  %66 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %67 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @debugfs_remove(i32 %68)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @debugfs_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
