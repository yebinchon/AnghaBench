; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_wait_sack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_wait_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ASSERT = common dso_local global i32 0, align 4
@NEGATE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unknown state designation\00", align 1
@BUSMON_ACK = common dso_local global i8 0, align 1
@SCSI_BUS_MONITOR = common dso_local global i32 0, align 4
@NSP32_DEBUG_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"wait_time: %d\00", align 1
@REQSACK_TIMEOUT_TIME = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"wait SACK timeout, ack_bit: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @nsp32_wait_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_wait_sack(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ASSERT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NEGATE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ASSERT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8, i8* @BUSMON_ACK, align 1
  %28 = zext i8 %27 to i32
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %8, align 1
  br label %33

33:                                               ; preds = %53, %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SCSI_BUS_MONITOR, align 4
  %36 = call zeroext i8 @nsp32_read1(i32 %34, i32 %35)
  store i8 %36, i8* %7, align 1
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @BUSMON_ACK, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i32, i32* @NSP32_DEBUG_WAIT, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @nsp32_dbg(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %62

49:                                               ; preds = %33
  %50 = call i32 @udelay(i32 1)
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @REQSACK_TIMEOUT_TIME, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %33, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @KERN_WARNING, align 4
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (i32, i8*, ...) @nsp32_msg(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %45
  ret void
}

declare dso_local i32 @nsp32_msg(i32, i8*, ...) #1

declare dso_local zeroext i8 @nsp32_read1(i32, i32) #1

declare dso_local i32 @nsp32_dbg(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
