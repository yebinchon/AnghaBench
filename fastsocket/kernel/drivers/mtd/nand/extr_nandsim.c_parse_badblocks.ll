; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_parse_badblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_parse_badblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nandsim = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtd_info = type { i64 (%struct.mtd_info*, i32)* }

@badblocks = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"invalid badblocks.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nandsim*, %struct.mtd_info*)* @parse_badblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_badblocks(%struct.nandsim* %0, %struct.mtd_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nandsim*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %4, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %5, align 8
  %10 = load i8*, i8** @badblocks, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load i8*, i8** @badblocks, align 8
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %60, %13
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 48
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @simple_strtoul(i8* %22, i8** %6, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call i32 @NS_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %65

33:                                               ; preds = %26, %15
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.nandsim*, %struct.nandsim** %4, align 8
  %36 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %34, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 0
  %42 = load i64 (%struct.mtd_info*, i32)*, i64 (%struct.mtd_info*, i32)** %41, align 8
  %43 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 %42(%struct.mtd_info* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = call i32 @NS_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %65

51:                                               ; preds = %33
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 44
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %6, align 8
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %15, label %64

64:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %47, %29, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @NS_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
