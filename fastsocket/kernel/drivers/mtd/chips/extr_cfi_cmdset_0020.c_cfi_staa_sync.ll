; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, %struct.flchip* }
%struct.flchip = type { i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @cfi_staa_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_staa_sync(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.cfi_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flchip*, align 8
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.map_info*, %struct.map_info** %9, align 8
  store %struct.map_info* %10, %struct.map_info** %3, align 8
  %11 = load %struct.map_info*, %struct.map_info** %3, align 8
  %12 = getelementptr inbounds %struct.map_info, %struct.map_info* %11, i32 0, i32 0
  %13 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  store %struct.cfi_private* %13, %struct.cfi_private** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @wait, align 4
  %15 = load i32, i32* @current, align 4
  %16 = call i32 @DECLARE_WAITQUEUE(i32 %14, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %71, %1
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %23 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %74

28:                                               ; preds = %26
  %29 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %30 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %29, i32 0, i32 1
  %31 = load %struct.flchip*, %struct.flchip** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.flchip, %struct.flchip* %31, i64 %33
  store %struct.flchip* %34, %struct.flchip** %6, align 8
  br label %35

35:                                               ; preds = %56, %28
  %36 = load %struct.flchip*, %struct.flchip** %6, align 8
  %37 = getelementptr inbounds %struct.flchip, %struct.flchip* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @spin_lock_bh(i32 %38)
  %40 = load %struct.flchip*, %struct.flchip** %6, align 8
  %41 = getelementptr inbounds %struct.flchip, %struct.flchip* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %56 [
    i32 130, label %43
    i32 129, label %43
    i32 132, label %43
    i32 131, label %43
    i32 128, label %51
  ]

43:                                               ; preds = %35, %35, %35, %35
  %44 = load %struct.flchip*, %struct.flchip** %6, align 8
  %45 = getelementptr inbounds %struct.flchip, %struct.flchip* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.flchip*, %struct.flchip** %6, align 8
  %48 = getelementptr inbounds %struct.flchip, %struct.flchip* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.flchip*, %struct.flchip** %6, align 8
  %50 = getelementptr inbounds %struct.flchip, %struct.flchip* %49, i32 0, i32 0
  store i32 128, i32* %50, align 4
  br label %51

51:                                               ; preds = %35, %43
  %52 = load %struct.flchip*, %struct.flchip** %6, align 8
  %53 = getelementptr inbounds %struct.flchip, %struct.flchip* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @spin_unlock_bh(i32 %54)
  br label %70

56:                                               ; preds = %35
  %57 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %58 = call i32 @set_current_state(i32 %57)
  %59 = load %struct.flchip*, %struct.flchip** %6, align 8
  %60 = getelementptr inbounds %struct.flchip, %struct.flchip* %59, i32 0, i32 3
  %61 = call i32 @add_wait_queue(i32* %60, i32* @wait)
  %62 = load %struct.flchip*, %struct.flchip** %6, align 8
  %63 = getelementptr inbounds %struct.flchip, %struct.flchip* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @spin_unlock_bh(i32 %64)
  %66 = call i32 (...) @schedule()
  %67 = load %struct.flchip*, %struct.flchip** %6, align 8
  %68 = getelementptr inbounds %struct.flchip, %struct.flchip* %67, i32 0, i32 3
  %69 = call i32 @remove_wait_queue(i32* %68, i32* @wait)
  br label %35

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %17

74:                                               ; preds = %26
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %109, %74
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %77
  %81 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %82 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %81, i32 0, i32 1
  %83 = load %struct.flchip*, %struct.flchip** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.flchip, %struct.flchip* %83, i64 %85
  store %struct.flchip* %86, %struct.flchip** %6, align 8
  %87 = load %struct.flchip*, %struct.flchip** %6, align 8
  %88 = getelementptr inbounds %struct.flchip, %struct.flchip* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @spin_lock_bh(i32 %89)
  %91 = load %struct.flchip*, %struct.flchip** %6, align 8
  %92 = getelementptr inbounds %struct.flchip, %struct.flchip* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %104

95:                                               ; preds = %80
  %96 = load %struct.flchip*, %struct.flchip** %6, align 8
  %97 = getelementptr inbounds %struct.flchip, %struct.flchip* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.flchip*, %struct.flchip** %6, align 8
  %100 = getelementptr inbounds %struct.flchip, %struct.flchip* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.flchip*, %struct.flchip** %6, align 8
  %102 = getelementptr inbounds %struct.flchip, %struct.flchip* %101, i32 0, i32 3
  %103 = call i32 @wake_up(i32* %102)
  br label %104

104:                                              ; preds = %95, %80
  %105 = load %struct.flchip*, %struct.flchip** %6, align 8
  %106 = getelementptr inbounds %struct.flchip, %struct.flchip* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @spin_unlock_bh(i32 %107)
  br label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %5, align 4
  br label %77

112:                                              ; preds = %77
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
