; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_fpoll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_fpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.smu_private* }
%struct.smu_private = type { i64, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@smu_file_commands = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@smu_file_events = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @smu_fpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_fpoll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.smu_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.smu_private*, %struct.smu_private** %10, align 8
  store %struct.smu_private* %11, %struct.smu_private** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %13 = icmp eq %struct.smu_private* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %17 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @smu_file_commands, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %24 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %23, i32 0, i32 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @poll_wait(%struct.file* %22, i32* %24, i32* %25)
  %27 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %28 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %27, i32 0, i32 1
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %32 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %21
  %36 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %37 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @POLLIN, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %35, %21
  %46 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %47 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %46, i32 0, i32 1
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %45, %15
  %51 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %52 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @smu_file_events, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
