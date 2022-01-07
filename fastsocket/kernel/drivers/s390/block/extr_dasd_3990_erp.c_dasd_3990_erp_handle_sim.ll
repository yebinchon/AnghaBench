; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_handle_sim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_handle_sim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DASD_SIM_MSG_TO_OP = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [29 x i8] c"SIM - SRC: %02x%02x%02x%02x\0A\00", align 1
@DASD_SIM_LOG = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"log SIM - SRC: %02x%02x%02x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_3990_erp_handle_sim(%struct.dasd_device* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 24
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @DASD_SIM_MSG_TO_OP, align 1
  %10 = sext i8 %9 to i32
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = and i32 %17, 16
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %13, %2
  %21 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 22
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 23
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 11
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 12
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 signext %27, i8 signext %30, i8 signext %33, i8 signext %36)
  br label %66

38:                                               ; preds = %13
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 24
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @DASD_SIM_LOG, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %38
  %48 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %49 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 22
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 23
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 11
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 12
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8 signext %54, i8 signext %57, i8 signext %60, i8 signext %63)
  br label %65

65:                                               ; preds = %47, %38
  br label %66

66:                                               ; preds = %65, %20
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
