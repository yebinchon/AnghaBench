; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acerhdf.c_acerhdf_change_fanstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acerhdf.c_acerhdf_change_fanstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, i8 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"fan %s\0A\00", align 1
@ACERHDF_FAN_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@ACERHDF_FAN_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"invalid fan state %d requested, setting to auto!\0A\00", align 1
@bios_cfg = common dso_local global %struct.TYPE_4__* null, align 8
@fanstate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acerhdf_change_fanstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acerhdf_change_fanstate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @verbose, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @ACERHDF_FAN_OFF, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %12 = call i32 @pr_notice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %6, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @ACERHDF_FAN_OFF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @ACERHDF_FAN_AUTO, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ACERHDF_FAN_AUTO, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %17, %13
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @ACERHDF_FAN_OFF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bios_cfg, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 4
  %34 = zext i8 %33 to i32
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bios_cfg, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i32 [ %34, %29 ], [ %40, %35 ]
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %3, align 1
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* @fanstate, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bios_cfg, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8, i8* %3, align 1
  %49 = call i32 @ec_write(i32 %47, i8 zeroext %48)
  ret void
}

declare dso_local i32 @pr_notice(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ec_write(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
