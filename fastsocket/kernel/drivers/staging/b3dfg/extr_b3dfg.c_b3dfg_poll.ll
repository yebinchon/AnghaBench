; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_b3dfg_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_b3dfg_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.b3dfg_dev* }
%struct.b3dfg_dev = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@b3dfg_nbuf = common dso_local global i32 0, align 4
@B3DFG_BUFFER_POPULATED = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @b3dfg_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b3dfg_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.b3dfg_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %11, align 8
  store %struct.b3dfg_dev* %12, %struct.b3dfg_dev** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %14 = call i64 @get_cstate_change(%struct.b3dfg_dev* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %17 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %16, i32 0, i32 3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @poll_wait(%struct.file* %15, i32* %17, i32* %18)
  %20 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %21 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %44, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @b3dfg_nbuf, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %30 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @B3DFG_BUFFER_POPULATED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @POLLIN, align 4
  %41 = load i32, i32* @POLLRDNORM, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %9, align 4
  br label %47

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %24

47:                                               ; preds = %39, %24
  %48 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %49 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %53 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %5, align 8
  %59 = call i64 @get_cstate_change(%struct.b3dfg_dev* %58)
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %47
  %62 = load i32, i32* @POLLERR, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i64 @get_cstate_change(%struct.b3dfg_dev*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
