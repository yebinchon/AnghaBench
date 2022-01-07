; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_complete_all_commands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_complete_all_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_device = type { i32, i32, i32 }
%struct.bsg_command = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: entered\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_device*)* @bsg_complete_all_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_complete_all_commands(%struct.bsg_device* %0) #0 {
  %2 = alloca %struct.bsg_device*, align 8
  %3 = alloca %struct.bsg_command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bsg_device* %0, %struct.bsg_device** %2, align 8
  %6 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %7 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %12 = call i32 @bsg_io_schedule(%struct.bsg_device* %11)
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %10, label %18

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %61, %18
  %20 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %21 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %24 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %29 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  br label %62

31:                                               ; preds = %19
  %32 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %33 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.bsg_device*, %struct.bsg_device** %2, align 8
  %36 = call %struct.bsg_command* @bsg_get_done_cmd(%struct.bsg_device* %35)
  store %struct.bsg_command* %36, %struct.bsg_command** %3, align 8
  %37 = load %struct.bsg_command*, %struct.bsg_command** %3, align 8
  %38 = call i64 @IS_ERR(%struct.bsg_command* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %62

41:                                               ; preds = %31
  %42 = load %struct.bsg_command*, %struct.bsg_command** %3, align 8
  %43 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bsg_command*, %struct.bsg_command** %3, align 8
  %46 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %45, i32 0, i32 2
  %47 = load %struct.bsg_command*, %struct.bsg_command** %3, align 8
  %48 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bsg_command*, %struct.bsg_command** %3, align 8
  %51 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @blk_complete_sgv4_hdr_rq(i32 %44, i32* %46, i32 %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %41
  %59 = load %struct.bsg_command*, %struct.bsg_command** %3, align 8
  %60 = call i32 @bsg_free_command(%struct.bsg_command* %59)
  br label %61

61:                                               ; preds = %58
  br i1 true, label %19, label %62

62:                                               ; preds = %61, %40, %27
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @bsg_io_schedule(%struct.bsg_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.bsg_command* @bsg_get_done_cmd(%struct.bsg_device*) #1

declare dso_local i64 @IS_ERR(%struct.bsg_command*) #1

declare dso_local i32 @blk_complete_sgv4_hdr_rq(i32, i32*, i32, i32) #1

declare dso_local i32 @bsg_free_command(%struct.bsg_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
