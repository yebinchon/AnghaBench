; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_free_cmdid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_free_cmdid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32, i32 }
%struct.nvme_cmd_info = type { i8*, i8* }

@special_completion = common dso_local global i8* null, align 8
@CMD_CTX_INVALID = common dso_local global i8* null, align 8
@CMD_CTX_COMPLETED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nvme_queue*, i32, i8**)* @free_cmdid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @free_cmdid(%struct.nvme_queue* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvme_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nvme_cmd_info*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %11 = call %struct.nvme_cmd_info* @nvme_cmd_info(%struct.nvme_queue* %10)
  store %struct.nvme_cmd_info* %11, %struct.nvme_cmd_info** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** @special_completion, align 8
  %19 = load i8**, i8*** %7, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** @CMD_CTX_INVALID, align 8
  store i8* %20, i8** %4, align 8
  br label %60

21:                                               ; preds = %3
  %22 = load i8**, i8*** %7, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.nvme_cmd_info*, %struct.nvme_cmd_info** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %25, i64 %27
  %29 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %7, align 8
  store i8* %30, i8** %31, align 8
  br label %32

32:                                               ; preds = %24, %21
  %33 = load %struct.nvme_cmd_info*, %struct.nvme_cmd_info** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %33, i64 %35
  %37 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** @special_completion, align 8
  %40 = load %struct.nvme_cmd_info*, %struct.nvme_cmd_info** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %40, i64 %42
  %44 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %43, i32 0, i32 1
  store i8* %39, i8** %44, align 8
  %45 = load i8*, i8** @CMD_CTX_COMPLETED, align 8
  %46 = load %struct.nvme_cmd_info*, %struct.nvme_cmd_info** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %46, i64 %48
  %50 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %49, i32 0, i32 0
  store i8* %45, i8** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %53 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clear_bit(i32 %51, i32 %54)
  %56 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %57 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %56, i32 0, i32 1
  %58 = call i32 @wake_up(i32* %57)
  %59 = load i8*, i8** %8, align 8
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %32, %17
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local %struct.nvme_cmd_info* @nvme_cmd_info(%struct.nvme_queue*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
