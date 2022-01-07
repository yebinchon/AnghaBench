; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_probe_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_probe_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32 }
%struct.claw_privbk = type { %struct.claw_privbk*, %struct.claw_privbk* }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"proberr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwgroup_device*)* @probe_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_error(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.claw_privbk*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %4 = load i32, i32* @trace, align 4
  %5 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 0
  %8 = call %struct.claw_privbk* @dev_get_drvdata(i32* %7)
  store %struct.claw_privbk* %8, %struct.claw_privbk** %3, align 8
  %9 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %10 = icmp ne %struct.claw_privbk* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %13 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %12, i32 0, i32 0
  %14 = call i32 @dev_set_drvdata(i32* %13, i32* null)
  %15 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %16 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %15, i32 0, i32 1
  %17 = load %struct.claw_privbk*, %struct.claw_privbk** %16, align 8
  %18 = call i32 @kfree(%struct.claw_privbk* %17)
  %19 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %20 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %19, i32 0, i32 0
  %21 = load %struct.claw_privbk*, %struct.claw_privbk** %20, align 8
  %22 = call i32 @kfree(%struct.claw_privbk* %21)
  %23 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %24 = call i32 @kfree(%struct.claw_privbk* %23)
  br label %25

25:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.claw_privbk* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.claw_privbk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
