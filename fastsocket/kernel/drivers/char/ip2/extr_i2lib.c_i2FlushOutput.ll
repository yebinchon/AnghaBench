; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2FlushOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2FlushOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@CHANN = common dso_local global i32 0, align 4
@ITRC_FLUSH = common dso_local global i32 0, align 4
@PTYPE_BYPASS = common dso_local global i32 0, align 4
@CMD_STARTFL = common dso_local global i32 0, align 4
@STARTFL_FLAG = common dso_local global i64 0, align 8
@PTYPE_INLINE = common dso_local global i32 0, align 4
@CMD_STOPFL = common dso_local global i32 0, align 4
@STOPFL_FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @i2FlushOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2FlushOutput(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @CHANN, align 4
  %4 = load i32, i32* @ITRC_FLUSH, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %3, i32 %4, i32 1, i32 1, i64 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %41

14:                                               ; preds = %1
  %15 = load i32, i32* @PTYPE_BYPASS, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = load i32, i32* @CMD_STARTFL, align 4
  %18 = call i32 @i2QueueCommands(i32 %15, %struct.TYPE_4__* %16, i32 0, i32 1, i32 %17)
  %19 = icmp ne i32 1, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i64, i64* @STARTFL_FLAG, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @CHANN, align 4
  %25 = load i32, i32* @ITRC_FLUSH, align 4
  %26 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %24, i32 %25, i32 2, i32 0)
  br label %41

27:                                               ; preds = %14
  %28 = load i32, i32* @PTYPE_INLINE, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = load i32, i32* @CMD_STOPFL, align 4
  %31 = call i32 @i2QueueCommands(i32 %28, %struct.TYPE_4__* %29, i32 0, i32 1, i32 %30)
  %32 = icmp ne i32 1, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i64, i64* @STOPFL_FLAG, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @CHANN, align 4
  %38 = load i32, i32* @ITRC_FLUSH, align 4
  %39 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %37, i32 %38, i32 3, i32 0)
  br label %40

40:                                               ; preds = %33, %27
  br label %41

41:                                               ; preds = %13, %40, %20
  ret void
}

declare dso_local i32 @ip2trace(i32, i32, i32, i32, ...) #1

declare dso_local i32 @i2QueueCommands(i32, %struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
