; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2util_notify_fetch_agent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2util_notify_fetch_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { i32, i32, i64, i32 }

@SBP2LU_STATE_IN_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"sbp2util_notify_fetch_agent failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_lu*, i64, i32*, i64)* @sbp2util_notify_fetch_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2util_notify_fetch_agent(%struct.sbp2_lu* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.sbp2_lu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.sbp2_lu* %0, %struct.sbp2_lu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.sbp2_lu*, %struct.sbp2_lu** %5, align 8
  %10 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load i64, i64* @SBP2LU_STATE_IN_RESET, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %47

18:                                               ; preds = %4
  %19 = load %struct.sbp2_lu*, %struct.sbp2_lu** %5, align 8
  %20 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sbp2_lu*, %struct.sbp2_lu** %5, align 8
  %23 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32*, i32** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @hpsb_node_write(i32 %21, i64 %26, i32* %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %18
  %34 = load %struct.sbp2_lu*, %struct.sbp2_lu** %5, align 8
  %35 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %34, i32 0, i32 1
  %36 = call i64 @atomic_read(i32* %35)
  %37 = load i64, i64* @SBP2LU_STATE_IN_RESET, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.sbp2_lu*, %struct.sbp2_lu** %5, align 8
  %44 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @scsi_unblock_requests(i32 %45)
  br label %47

47:                                               ; preds = %17, %42, %33
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @hpsb_node_write(i32, i64, i32*, i64) #1

declare dso_local i32 @SBP2_ERR(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
