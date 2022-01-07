; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_alloc_cmdid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_alloc_cmdid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32 }
%struct.nvme_cmd_info = type { i32, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*, i8*, i32, i32)* @alloc_cmdid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_cmdid(%struct.nvme_queue* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvme_cmd_info*, align 8
  %12 = alloca i32, align 4
  store %struct.nvme_queue* %0, %struct.nvme_queue** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %14 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  %17 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %18 = call %struct.nvme_cmd_info* @nvme_cmd_info(%struct.nvme_queue* %17)
  store %struct.nvme_cmd_info* %18, %struct.nvme_cmd_info** %11, align 8
  br label %19

19:                                               ; preds = %32, %4
  %20 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %21 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @find_first_zero_bit(i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %61

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %35 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @test_and_set_bit(i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %19, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.nvme_cmd_info*, %struct.nvme_cmd_info** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %41, i64 %43
  %45 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %44, i32 0, i32 2
  store i32 %40, i32* %45, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.nvme_cmd_info*, %struct.nvme_cmd_info** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %47, i64 %49
  %51 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %50, i32 0, i32 1
  store i8* %46, i8** %51, align 8
  %52 = load i32, i32* @jiffies, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %52, %53
  %55 = load %struct.nvme_cmd_info*, %struct.nvme_cmd_info** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %55, i64 %57
  %59 = getelementptr inbounds %struct.nvme_cmd_info, %struct.nvme_cmd_info* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %39, %28
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.nvme_cmd_info* @nvme_cmd_info(%struct.nvme_queue*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
