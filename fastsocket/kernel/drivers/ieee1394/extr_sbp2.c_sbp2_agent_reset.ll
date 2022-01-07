; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_agent_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_agent_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { i32, i32*, i32, i64 }

@SBP2_AGENT_RESET_DATA = common dso_local global i32 0, align 4
@SBP2_AGENT_RESET_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"hpsb_node_write failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp2_lu*, i32)* @sbp2_agent_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_agent_reset(%struct.sbp2_lu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbp2_lu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sbp2_lu* %0, %struct.sbp2_lu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @flush_scheduled_work()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @SBP2_AGENT_RESET_DATA, align 4
  %16 = call i32 @ntohl(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %18 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SBP2_AGENT_RESET_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %26 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @hpsb_node_write(i32 %27, i64 %28, i32* %6, i32 4)
  store i32 %29, i32* %8, align 4
  br label %36

30:                                               ; preds = %14
  %31 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %32 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @sbp2util_node_write_no_wait(i32 %33, i64 %34, i32* %6, i32 4)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %36
  %44 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %45 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %44, i32 0, i32 0
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %49 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %51 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %50, i32 0, i32 0
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %43, %39
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @hpsb_node_write(i32, i64, i32*, i32) #1

declare dso_local i32 @sbp2util_node_write_no_wait(i32, i64, i32*, i32) #1

declare dso_local i32 @SBP2_ERR(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
