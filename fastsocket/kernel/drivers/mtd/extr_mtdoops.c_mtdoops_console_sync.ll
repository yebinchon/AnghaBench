; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdoops.c_mtdoops_console_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdoops.c_mtdoops_console_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdoops_context = type { i64, i32, i32, i64, %struct.mtd_info* }
%struct.mtd_info = type { i64 }

@oops_cxt = common dso_local global %struct.mtdoops_context zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mtdoops_console_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtdoops_console_sync() #0 {
  %1 = alloca %struct.mtdoops_context*, align 8
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca i64, align 8
  store %struct.mtdoops_context* @oops_cxt, %struct.mtdoops_context** %1, align 8
  %4 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %5 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %4, i32 0, i32 4
  %6 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  store %struct.mtd_info* %6, %struct.mtd_info** %2, align 8
  %7 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %8 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %13 = icmp ne %struct.mtd_info* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %16 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %11, %0
  br label %55

20:                                               ; preds = %14
  %21 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %22 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %21, i32 0, i32 2
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %26 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %31 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %30, i32 0, i32 2
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %55

34:                                               ; preds = %20
  %35 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %36 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %38 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %37, i32 0, i32 2
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = call i64 (...) @in_interrupt()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %50 = call i32 @mtdoops_write(%struct.mtdoops_context* %49, i32 1)
  br label %55

51:                                               ; preds = %45, %34
  %52 = load %struct.mtdoops_context*, %struct.mtdoops_context** %1, align 8
  %53 = getelementptr inbounds %struct.mtdoops_context, %struct.mtdoops_context* %52, i32 0, i32 1
  %54 = call i32 @schedule_work(i32* %53)
  br label %55

55:                                               ; preds = %19, %29, %51, %48
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @mtdoops_write(%struct.mtdoops_context*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
