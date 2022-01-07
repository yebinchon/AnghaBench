; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_pd_media_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_pd_media_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_unit = type { i32 }

@STAT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"before media_check\00", align 1
@STAT_ERR = common dso_local global i32 0, align 4
@IDE_READ_VRFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"RDY after READ_VRFY\00", align 1
@ERR_MC = common dso_local global i32 0, align 4
@IDE_ACKCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"RDY after ACKCHANGE\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"RDY after VRFY\00", align 1
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pd_unit*)* @pd_media_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_media_check(%struct.pd_unit* %0) #0 {
  %2 = alloca %struct.pd_unit*, align 8
  %3 = alloca i32, align 4
  store %struct.pd_unit* %0, %struct.pd_unit** %2, align 8
  %4 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %5 = load i32, i32* @STAT_READY, align 4
  %6 = call i32 @DBMSG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @pd_wait_for(%struct.pd_unit* %4, i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @STAT_ERR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %14 = load i32, i32* @IDE_READ_VRFY, align 4
  %15 = call i32 @pd_send_command(%struct.pd_unit* %13, i32 1, i32 1, i32 0, i32 0, i32 0, i32 %14)
  %16 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %17 = load i32, i32* @STAT_READY, align 4
  %18 = call i32 @DBMSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @pd_wait_for(%struct.pd_unit* %16, i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %22 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ERR_MC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %30 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %32 = load i32, i32* @IDE_ACKCHANGE, align 4
  %33 = call i32 @pd_send_command(%struct.pd_unit* %31, i32 1, i32 0, i32 0, i32 0, i32 0, i32 %32)
  %34 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %35 = load i32, i32* @STAT_READY, align 4
  %36 = call i32 @DBMSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @pd_wait_for(%struct.pd_unit* %34, i32 %35, i32 %36)
  %38 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %39 = load i32, i32* @IDE_READ_VRFY, align 4
  %40 = call i32 @pd_send_command(%struct.pd_unit* %38, i32 1, i32 1, i32 0, i32 0, i32 0, i32 %39)
  %41 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %42 = load i32, i32* @STAT_READY, align 4
  %43 = call i32 @DBMSG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @pd_wait_for(%struct.pd_unit* %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %28, %23
  %46 = load i32, i32* @Ok, align 4
  ret i32 %46
}

declare dso_local i32 @pd_wait_for(%struct.pd_unit*, i32, i32) #1

declare dso_local i32 @DBMSG(i8*) #1

declare dso_local i32 @pd_send_command(%struct.pd_unit*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
