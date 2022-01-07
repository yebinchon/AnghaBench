; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_get_done_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_get_done_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_command = type { i32 }
%struct.bsg_device = type { i32, i32, i32, i32 }

@BSG_F_BLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: returning done %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bsg_command* (%struct.bsg_device*)* @bsg_get_done_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bsg_command* @bsg_get_done_cmd(%struct.bsg_device* %0) #0 {
  %2 = alloca %struct.bsg_device*, align 8
  %3 = alloca %struct.bsg_command*, align 8
  %4 = alloca i32, align 4
  store %struct.bsg_device* %0, %struct.bsg_device** %2, align 8
  br label %5

5:                                                ; preds = %36, %1
  %6 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %7 = call %struct.bsg_command* @bsg_next_done_cmd(%struct.bsg_device* %6)
  store %struct.bsg_command* %7, %struct.bsg_command** %3, align 8
  %8 = load %struct.bsg_command*, %struct.bsg_command** %3, align 8
  %9 = icmp ne %struct.bsg_command* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %37

11:                                               ; preds = %5
  %12 = load i32, i32* @BSG_F_BLOCK, align 4
  %13 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %14 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %13, i32 0, i32 3
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.bsg_command* @ERR_PTR(i32 %19)
  store %struct.bsg_command* %20, %struct.bsg_command** %3, align 8
  br label %37

21:                                               ; preds = %11
  %22 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %23 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %26 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wait_event_interruptible(i32 %24, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @ERESTARTSYS, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.bsg_command* @ERR_PTR(i32 %33)
  store %struct.bsg_command* %34, %struct.bsg_command** %3, align 8
  br label %37

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  br i1 true, label %5, label %37

37:                                               ; preds = %36, %31, %17, %10
  %38 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %39 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bsg_command*, %struct.bsg_command** %3, align 8
  %42 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40, %struct.bsg_command* %41)
  %43 = load %struct.bsg_command*, %struct.bsg_command** %3, align 8
  ret %struct.bsg_command* %43
}

declare dso_local %struct.bsg_command* @bsg_next_done_cmd(%struct.bsg_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.bsg_command* @ERR_PTR(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.bsg_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
