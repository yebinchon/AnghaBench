; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.loop_device* }
%struct.loop_device = type { i64, i32, i32, i32 }
%struct.bio = type { i32 }

@READA = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@Lo_bound = common dso_local global i64 0, align 8
@LO_FLAGS_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @loop_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.loop_device*, align 8
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load %struct.loop_device*, %struct.loop_device** %9, align 8
  store %struct.loop_device* %10, %struct.loop_device** %6, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = call i32 @bio_rw(%struct.bio* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @READA, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @READ, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %20 = icmp ne %struct.loop_device* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @READ, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @WRITE, align 4
  %28 = icmp ne i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi i1 [ true, %18 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %36 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %35, i32 0, i32 2
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %39 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @Lo_bound, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %71

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @WRITE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %50 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @LO_FLAGS_READ_ONLY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %48, %44
  %56 = phi i1 [ false, %44 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %71

61:                                               ; preds = %55
  %62 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %63 = load %struct.bio*, %struct.bio** %5, align 8
  %64 = call i32 @loop_add_bio(%struct.loop_device* %62, %struct.bio* %63)
  %65 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %66 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %65, i32 0, i32 3
  %67 = call i32 @wake_up(i32* %66)
  %68 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %69 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock_irq(i32* %69)
  store i32 0, i32* %3, align 4
  br label %77

71:                                               ; preds = %60, %43
  %72 = load %struct.loop_device*, %struct.loop_device** %6, align 8
  %73 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %72, i32 0, i32 2
  %74 = call i32 @spin_unlock_irq(i32* %73)
  %75 = load %struct.bio*, %struct.bio** %5, align 8
  %76 = call i32 @bio_io_error(%struct.bio* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %61
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @bio_rw(%struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @loop_add_bio(%struct.loop_device*, %struct.bio*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
