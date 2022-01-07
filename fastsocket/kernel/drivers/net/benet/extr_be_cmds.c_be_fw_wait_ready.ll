; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_fw_wait_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_fw_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@POST_STAGE_ARMFW_RDY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Waiting for POST, %ds elapsed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Waiting for POST aborted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"POST timeout; stage=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_fw_wait_ready(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = call i64 @lancer_chip(%struct.be_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = call i32 @lancer_wait_ready(%struct.be_adapter* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %41, %19
  %21 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %22 = call i64 @be_POST_stage_get(%struct.be_adapter* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @POST_STAGE_ARMFW_RDY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %48

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_info(%struct.device* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i64 @msleep_interruptible(i32 2000)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINTR, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 60
  br i1 %43, label %20, label %44

44:                                               ; preds = %41
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %33, %26, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @lancer_wait_ready(%struct.be_adapter*) #1

declare dso_local i64 @be_POST_stage_get(%struct.be_adapter*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
