; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_notify_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_notify_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.be_mcc_wrb*)* @be_cmd_notify_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_cmd_notify_wait(%struct.be_adapter* %0, %struct.be_mcc_wrb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_mcc_wrb* %1, %struct.be_mcc_wrb** %5, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %9 = call i32 @be_cmd_lock(%struct.be_adapter* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %17 = call %struct.be_mcc_wrb* @be_cmd_copy(%struct.be_adapter* %15, %struct.be_mcc_wrb* %16)
  store %struct.be_mcc_wrb* %17, %struct.be_mcc_wrb** %6, align 8
  %18 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %19 = icmp ne %struct.be_mcc_wrb* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %14
  %24 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %25 = call i64 @use_mcc(%struct.be_adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %29 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %28)
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %32 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %39 = call i32 @memcpy(%struct.be_mcc_wrb* %37, %struct.be_mcc_wrb* %38, i32 4)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %42 = call i32 @be_cmd_unlock(%struct.be_adapter* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %20, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @be_cmd_lock(%struct.be_adapter*) #1

declare dso_local %struct.be_mcc_wrb* @be_cmd_copy(%struct.be_adapter*, %struct.be_mcc_wrb*) #1

declare dso_local i64 @use_mcc(%struct.be_adapter*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(%struct.be_mcc_wrb*, %struct.be_mcc_wrb*, i32) #1

declare dso_local i32 @be_cmd_unlock(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
