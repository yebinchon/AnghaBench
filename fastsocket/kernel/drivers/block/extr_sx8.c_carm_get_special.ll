; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_get_special.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_get_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_request = type { %struct.request* }
%struct.request = type { i32 }
%struct.carm_host = type { i32, i32 }

@WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carm_request* (%struct.carm_host*)* @carm_get_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carm_request* @carm_get_special(%struct.carm_host* %0) #0 {
  %2 = alloca %struct.carm_request*, align 8
  %3 = alloca %struct.carm_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.carm_request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  store %struct.carm_host* %0, %struct.carm_host** %3, align 8
  store %struct.carm_request* null, %struct.carm_request** %5, align 8
  store i32 5000, i32* %7, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %7, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %7, align 4
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %14 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %18 = call %struct.carm_request* @carm_get_request(%struct.carm_host* %17)
  store %struct.carm_request* %18, %struct.carm_request** %5, align 8
  %19 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %20 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %24 = icmp ne %struct.carm_request* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %28

26:                                               ; preds = %12
  %27 = call i32 @msleep(i32 10)
  br label %8

28:                                               ; preds = %25, %8
  %29 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %30 = icmp ne %struct.carm_request* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store %struct.carm_request* null, %struct.carm_request** %2, align 8
  br label %58

32:                                               ; preds = %28
  %33 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %34 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WRITE, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.request* @blk_get_request(i32 %35, i32 %36, i32 %37)
  store %struct.request* %38, %struct.request** %6, align 8
  %39 = load %struct.request*, %struct.request** %6, align 8
  %40 = icmp ne %struct.request* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %32
  %42 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %43 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %42, i32 0, i32 0
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %47 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %48 = call i32 @carm_put_request(%struct.carm_host* %46, %struct.carm_request* %47)
  %49 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %50 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %49, i32 0, i32 0
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  store %struct.carm_request* null, %struct.carm_request** %2, align 8
  br label %58

53:                                               ; preds = %32
  %54 = load %struct.request*, %struct.request** %6, align 8
  %55 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %56 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %55, i32 0, i32 0
  store %struct.request* %54, %struct.request** %56, align 8
  %57 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  store %struct.carm_request* %57, %struct.carm_request** %2, align 8
  br label %58

58:                                               ; preds = %53, %41, %31
  %59 = load %struct.carm_request*, %struct.carm_request** %2, align 8
  ret %struct.carm_request* %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.carm_request* @carm_get_request(%struct.carm_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @carm_put_request(%struct.carm_host*, %struct.carm_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
