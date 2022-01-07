; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2RetryFlushOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2RetryFlushOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@CHANN = common dso_local global i32 0, align 4
@ITRC_FLUSH = common dso_local global i32 0, align 4
@STARTFL_FLAG = common dso_local global i32 0, align 4
@PTYPE_BYPASS = common dso_local global i32 0, align 4
@CMD_STARTFL = common dso_local global i32 0, align 4
@STOPFL_FLAG = common dso_local global i32 0, align 4
@PTYPE_INLINE = common dso_local global i32 0, align 4
@CMD_STOPFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @i2RetryFlushOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2RetryFlushOutput(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @CHANN, align 4
  %8 = load i32, i32* @ITRC_FLUSH, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ip2trace(i32 %7, i32 %8, i32 14, i32 1, i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @STARTFL_FLAG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load i32, i32* @PTYPE_BYPASS, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = load i32, i32* @CMD_STARTFL, align 4
  %21 = call i32 @i2QueueCommands(i32 %18, %struct.TYPE_4__* %19, i32 0, i32 1, i32 %20)
  %22 = icmp eq i32 1, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @STOPFL_FLAG, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @STARTFL_FLAG, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* @CHANN, align 4
  %29 = load i32, i32* @ITRC_FLUSH, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ip2trace(i32 %28, i32 %29, i32 15, i32 1, i32 %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @STOPFL_FLAG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32, i32* @PTYPE_INLINE, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = load i32, i32* @CMD_STOPFL, align 4
  %41 = call i32 @i2QueueCommands(i32 %38, %struct.TYPE_4__* %39, i32 0, i32 1, i32 %40)
  %42 = icmp eq i32 1, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* @CHANN, align 4
  %46 = load i32, i32* @ITRC_FLUSH, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @ip2trace(i32 %45, i32 %46, i32 16, i32 1, i32 %47)
  br label %49

49:                                               ; preds = %44, %32
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @CHANN, align 4
  %54 = load i32, i32* @ITRC_FLUSH, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ip2trace(i32 %53, i32 %54, i32 17, i32 1, i32 %55)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ip2trace(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2QueueCommands(i32, %struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
