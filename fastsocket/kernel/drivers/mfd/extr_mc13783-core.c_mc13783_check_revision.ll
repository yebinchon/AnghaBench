; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mc13783-core.c_mc13783_check_revision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mc13783-core.c_mc13783_check_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13783 = type { i32, i32 }

@MC13783_REG_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No MC13783 detected.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"MC13783 Rev %d.%d FinVer %x detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc13783*)* @mc13783_check_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_check_revision(%struct.mc13783* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mc13783*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mc13783* %0, %struct.mc13783** %3, align 8
  %9 = load %struct.mc13783*, %struct.mc13783** %3, align 8
  %10 = load i32, i32* @MC13783_REG_REVISION, align 4
  %11 = call i32 @mc13783_read(%struct.mc13783* %9, i32 %10, i32* %4)
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 24
  %14 = ashr i32 %13, 3
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 7
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 448
  %19 = ashr i32 %18, 6
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 7680
  %22 = ashr i32 %21, 9
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 3, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %25, %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %32, %29
  %36 = load %struct.mc13783*, %struct.mc13783** %3, align 8
  %37 = getelementptr inbounds %struct.mc13783, %struct.mc13783* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %56

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 10
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.mc13783*, %struct.mc13783** %3, align 8
  %48 = getelementptr inbounds %struct.mc13783, %struct.mc13783* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mc13783*, %struct.mc13783** %3, align 8
  %50 = getelementptr inbounds %struct.mc13783, %struct.mc13783* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_info(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %42, %35
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @mc13783_read(%struct.mc13783*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
