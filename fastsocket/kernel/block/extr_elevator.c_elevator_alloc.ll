; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elevator_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elevator_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { i32*, i32, i32, %struct.elevator_type*, i32* }
%struct.request_queue = type { i32 }
%struct.elevator_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@elv_ktype = common dso_local global i32 0, align 4
@ELV_HASH_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elevator_queue* (%struct.request_queue*, %struct.elevator_type*)* @elevator_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elevator_queue* @elevator_alloc(%struct.request_queue* %0, %struct.elevator_type* %1) #0 {
  %3 = alloca %struct.elevator_queue*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.elevator_type*, align 8
  %6 = alloca %struct.elevator_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.elevator_type* %1, %struct.elevator_type** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @__GFP_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @kmalloc_node(i32 32, i32 %10, i32 %13)
  %15 = bitcast i8* %14 to %struct.elevator_queue*
  store %struct.elevator_queue* %15, %struct.elevator_queue** %6, align 8
  %16 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %17 = icmp ne %struct.elevator_queue* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.elevator_type*, %struct.elevator_type** %5, align 8
  %25 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %24, i32 0, i32 0
  %26 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %27 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = load %struct.elevator_type*, %struct.elevator_type** %5, align 8
  %29 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %30 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %29, i32 0, i32 3
  store %struct.elevator_type* %28, %struct.elevator_type** %30, align 8
  %31 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %32 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %31, i32 0, i32 2
  %33 = call i32 @kobject_init(i32* %32, i32* @elv_ktype)
  %34 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %35 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %34, i32 0, i32 1
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load i32, i32* @ELV_HASH_ENTRIES, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @kmalloc_node(i32 %40, i32 %41, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %48 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %50 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %23
  br label %72

54:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ELV_HASH_ENTRIES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %61 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @INIT_HLIST_HEAD(i32* %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %55

70:                                               ; preds = %55
  %71 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  store %struct.elevator_queue* %71, %struct.elevator_queue** %3, align 8
  br label %77

72:                                               ; preds = %53, %22
  %73 = load %struct.elevator_queue*, %struct.elevator_queue** %6, align 8
  %74 = call i32 @kfree(%struct.elevator_queue* %73)
  %75 = load %struct.elevator_type*, %struct.elevator_type** %5, align 8
  %76 = call i32 @elevator_put(%struct.elevator_type* %75)
  store %struct.elevator_queue* null, %struct.elevator_queue** %3, align 8
  br label %77

77:                                               ; preds = %72, %70
  %78 = load %struct.elevator_queue*, %struct.elevator_queue** %3, align 8
  ret %struct.elevator_queue* %78
}

declare dso_local i8* @kmalloc_node(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.elevator_queue*) #1

declare dso_local i32 @elevator_put(%struct.elevator_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
