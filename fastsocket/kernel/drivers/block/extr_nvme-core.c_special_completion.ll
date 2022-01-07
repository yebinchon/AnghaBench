; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_special_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_special_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_completion = type { i32, i32 }

@CMD_CTX_CANCELLED = common dso_local global i8* null, align 8
@CMD_CTX_FLUSH = common dso_local global i8* null, align 8
@CMD_CTX_COMPLETED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"completed id %d twice on queue %d\0A\00", align 1
@CMD_CTX_INVALID = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid id %d completed on queue %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown special completion %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*, i8*, %struct.nvme_completion*)* @special_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @special_completion(%struct.nvme_dev* %0, i8* %1, %struct.nvme_completion* %2) #0 {
  %4 = alloca %struct.nvme_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvme_completion*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.nvme_completion* %2, %struct.nvme_completion** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8*, i8** @CMD_CTX_CANCELLED, align 8
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %59

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** @CMD_CTX_FLUSH, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %59

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** @CMD_CTX_COMPLETED, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.nvme_completion*, %struct.nvme_completion** %6, align 8
  %26 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.nvme_completion*, %struct.nvme_completion** %6, align 8
  %31 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %30, i32 0, i32 0
  %32 = call i32 @le16_to_cpup(i32* %31)
  %33 = call i32 (i32*, i8*, i8*, ...) @dev_warn(i32* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %32)
  br label %59

34:                                               ; preds = %16
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** @CMD_CTX_INVALID, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %40 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.nvme_completion*, %struct.nvme_completion** %6, align 8
  %44 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.nvme_completion*, %struct.nvme_completion** %6, align 8
  %49 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %48, i32 0, i32 0
  %50 = call i32 @le16_to_cpup(i32* %49)
  %51 = call i32 (i32*, i8*, i8*, ...) @dev_warn(i32* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %50)
  br label %59

52:                                               ; preds = %34
  %53 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %54 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 (i32*, i8*, i8*, ...) @dev_warn(i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %52, %38, %20, %15, %10
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i8*, ...) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
