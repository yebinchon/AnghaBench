; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_ibm_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_ibm_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@debNormal = common dso_local global i32 0, align 4
@IBM_MP2_COMMAND = common dso_local global i32 0, align 4
@IBM_MP2_CMD_DATA = common dso_local global i32 0, align 4
@IBM_MP2_CMD_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146*, i32, i32, i32)* @ibm_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibm_send_command(%struct.saa7146* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %15 = load i32, i32* @debNormal, align 4
  %16 = load i32, i32* @IBM_MP2_COMMAND, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 1
  %19 = or i32 %18, 1
  %20 = call i32 @debiwrite(%struct.saa7146* %14, i32 %15, i32 %16, i32 %19, i32 2)
  br label %28

21:                                               ; preds = %4
  %22 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %23 = load i32, i32* @debNormal, align 4
  %24 = load i32, i32* @IBM_MP2_COMMAND, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 1
  %27 = call i32 @debiwrite(%struct.saa7146* %22, i32 %23, i32 %24, i32 %26, i32 2)
  br label %28

28:                                               ; preds = %21, %13
  %29 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %30 = load i32, i32* @debNormal, align 4
  %31 = load i32, i32* @IBM_MP2_CMD_DATA, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @debiwrite(%struct.saa7146* %29, i32 %30, i32 %31, i32 %32, i32 2)
  %34 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %35 = load i32, i32* @debNormal, align 4
  %36 = load i32, i32* @IBM_MP2_CMD_STAT, align 4
  %37 = call i32 @debiwrite(%struct.saa7146* %34, i32 %35, i32 %36, i32 1, i32 2)
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %52, %28
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 100
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %43 = load i32, i32* @debNormal, align 4
  %44 = load i32, i32* @IBM_MP2_CMD_STAT, align 4
  %45 = call i32 @debiread(%struct.saa7146* %42, i32 %43, i32 %44, i32 2)
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %41, %38
  %49 = phi i1 [ false, %38 ], [ %47, %41 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = call i32 (...) @schedule()
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %38

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 100
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %60

59:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @debiwrite(%struct.saa7146*, i32, i32, i32, i32) #1

declare dso_local i32 @debiread(%struct.saa7146*, i32, i32, i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
