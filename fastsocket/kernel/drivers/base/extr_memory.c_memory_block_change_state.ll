; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_memory.c_memory_block_change_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_memory.c_memory_block_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_block = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MEM_GOING_OFFLINE = common dso_local global i64 0, align 8
@KOBJ_OFFLINE = common dso_local global i32 0, align 4
@KOBJ_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memory_block*, i64, i64)* @memory_block_change_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_block_change_state(%struct.memory_block* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.memory_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.memory_block* %0, %struct.memory_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %10 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %9, i32 0, i32 3
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %13 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %93

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 129
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* @MEM_GOING_OFFLINE, align 8
  %25 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %26 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %29 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %45, %27
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %34 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @memory_section_action(i32 %38, i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %48

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %31

48:                                               ; preds = %43, %31
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %53 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %65, %51
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %58 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @memory_section_action(i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %55

68:                                               ; preds = %55
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %71 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %93

72:                                               ; preds = %48
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %75 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %77 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  switch i64 %78, label %91 [
    i64 129, label %79
    i64 128, label %85
  ]

79:                                               ; preds = %72
  %80 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %81 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* @KOBJ_OFFLINE, align 4
  %84 = call i32 @kobject_uevent(i32* %82, i32 %83)
  br label %92

85:                                               ; preds = %72
  %86 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %87 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* @KOBJ_ONLINE, align 4
  %90 = call i32 @kobject_uevent(i32* %88, i32 %89)
  br label %92

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91, %85, %79
  br label %93

93:                                               ; preds = %92, %68, %17
  %94 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %95 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %94, i32 0, i32 3
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memory_section_action(i32, i64) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
