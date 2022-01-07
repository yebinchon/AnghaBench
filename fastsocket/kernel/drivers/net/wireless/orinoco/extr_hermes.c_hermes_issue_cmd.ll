; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes.c_hermes_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes.c_hermes_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { i32 }

@CMD_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@HERMES_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PARAM2 = common dso_local global i32 0, align 4
@PARAM1 = common dso_local global i32 0, align 4
@PARAM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32, i32, i32, i32)* @hermes_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hermes_issue_cmd(%struct.hermes* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hermes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @CMD_BUSY_TIMEOUT, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.hermes*, %struct.hermes** %7, align 8
  %16 = load i32, i32* @CMD, align 4
  %17 = call i32 @hermes_read_regn(%struct.hermes* %15, i32 %16)
  store i32 %17, i32* %13, align 4
  br label %18

18:                                               ; preds = %28, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @HERMES_CMD_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i1 [ false, %18 ], [ %25, %23 ]
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %12, align 4
  %31 = call i32 @udelay(i32 1)
  %32 = load %struct.hermes*, %struct.hermes** %7, align 8
  %33 = load i32, i32* @CMD, align 4
  %34 = call i32 @hermes_read_regn(%struct.hermes* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  br label %18

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @HERMES_CMD_BUSY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %60

43:                                               ; preds = %35
  %44 = load %struct.hermes*, %struct.hermes** %7, align 8
  %45 = load i32, i32* @PARAM2, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @hermes_write_regn(%struct.hermes* %44, i32 %45, i32 %46)
  %48 = load %struct.hermes*, %struct.hermes** %7, align 8
  %49 = load i32, i32* @PARAM1, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @hermes_write_regn(%struct.hermes* %48, i32 %49, i32 %50)
  %52 = load %struct.hermes*, %struct.hermes** %7, align 8
  %53 = load i32, i32* @PARAM0, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @hermes_write_regn(%struct.hermes* %52, i32 %53, i32 %54)
  %56 = load %struct.hermes*, %struct.hermes** %7, align 8
  %57 = load i32, i32* @CMD, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @hermes_write_regn(%struct.hermes* %56, i32 %57, i32 %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %43, %40
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @hermes_read_regn(%struct.hermes*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hermes_write_regn(%struct.hermes*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
