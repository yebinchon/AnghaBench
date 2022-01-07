; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_divert_procfs.c_put_info_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/divert/extr_divert_procfs.c_put_info_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.divert_info = type { i64, %struct.divert_info*, i32 }

@if_used = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@divert_info_lock = common dso_local global i32 0, align 4
@divert_info_head = common dso_local global %struct.divert_info* null, align 8
@divert_info_tail = common dso_local global %struct.divert_info* null, align 8
@rd_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_info_buffer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.divert_info*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @if_used, align 8
  %6 = icmp sle i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %78

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %78

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %78

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add i64 24, %19
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.divert_info* @kmalloc(i64 %20, i32 %21)
  store %struct.divert_info* %22, %struct.divert_info** %3, align 8
  %23 = icmp ne %struct.divert_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %78

25:                                               ; preds = %17
  %26 = load %struct.divert_info*, %struct.divert_info** %3, align 8
  %27 = getelementptr inbounds %struct.divert_info, %struct.divert_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @strcpy(i32 %28, i8* %29)
  %31 = load %struct.divert_info*, %struct.divert_info** %3, align 8
  %32 = getelementptr inbounds %struct.divert_info, %struct.divert_info* %31, i32 0, i32 1
  store %struct.divert_info* null, %struct.divert_info** %32, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_lock_irqsave(i32* @divert_info_lock, i64 %33)
  %35 = load i64, i64* @if_used, align 8
  %36 = load %struct.divert_info*, %struct.divert_info** %3, align 8
  %37 = getelementptr inbounds %struct.divert_info, %struct.divert_info* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.divert_info*, %struct.divert_info** @divert_info_head, align 8
  %39 = icmp ne %struct.divert_info* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %25
  %41 = load %struct.divert_info*, %struct.divert_info** %3, align 8
  store %struct.divert_info* %41, %struct.divert_info** @divert_info_head, align 8
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.divert_info*, %struct.divert_info** %3, align 8
  %44 = load %struct.divert_info*, %struct.divert_info** @divert_info_tail, align 8
  %45 = getelementptr inbounds %struct.divert_info, %struct.divert_info* %44, i32 0, i32 1
  store %struct.divert_info* %43, %struct.divert_info** %45, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = load %struct.divert_info*, %struct.divert_info** %3, align 8
  store %struct.divert_info* %47, %struct.divert_info** @divert_info_tail, align 8
  br label %48

48:                                               ; preds = %73, %46
  %49 = load %struct.divert_info*, %struct.divert_info** @divert_info_head, align 8
  %50 = getelementptr inbounds %struct.divert_info, %struct.divert_info* %49, i32 0, i32 1
  %51 = load %struct.divert_info*, %struct.divert_info** %50, align 8
  %52 = icmp ne %struct.divert_info* %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.divert_info*, %struct.divert_info** @divert_info_head, align 8
  %55 = getelementptr inbounds %struct.divert_info, %struct.divert_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.divert_info*, %struct.divert_info** @divert_info_head, align 8
  %60 = getelementptr inbounds %struct.divert_info, %struct.divert_info* %59, i32 0, i32 1
  %61 = load %struct.divert_info*, %struct.divert_info** %60, align 8
  %62 = getelementptr inbounds %struct.divert_info, %struct.divert_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.divert_info*, %struct.divert_info** @divert_info_head, align 8
  store %struct.divert_info* %66, %struct.divert_info** %3, align 8
  %67 = load %struct.divert_info*, %struct.divert_info** @divert_info_head, align 8
  %68 = getelementptr inbounds %struct.divert_info, %struct.divert_info* %67, i32 0, i32 1
  %69 = load %struct.divert_info*, %struct.divert_info** %68, align 8
  store %struct.divert_info* %69, %struct.divert_info** @divert_info_head, align 8
  %70 = load %struct.divert_info*, %struct.divert_info** %3, align 8
  %71 = call i32 @kfree(%struct.divert_info* %70)
  br label %73

72:                                               ; preds = %58, %53
  br label %74

73:                                               ; preds = %65
  br label %48

74:                                               ; preds = %72, %48
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* @divert_info_lock, i64 %75)
  %77 = call i32 @wake_up_interruptible(i32* @rd_queue)
  br label %78

78:                                               ; preds = %74, %24, %16, %11, %7
  ret void
}

declare dso_local %struct.divert_info* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(%struct.divert_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
