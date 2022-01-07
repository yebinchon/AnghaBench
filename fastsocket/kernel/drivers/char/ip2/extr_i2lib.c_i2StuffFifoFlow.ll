; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2StuffFifoFlow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2StuffFifoFlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@ITRC_NO_PORT = common dso_local global i32 0, align 4
@ITRC_SFLOW = common dso_local global i32 0, align 4
@ITRC_ENTER = common dso_local global i32 0, align 4
@NEED_FLOW = common dso_local global i32 0, align 4
@ITRC_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @i2StuffFifoFlow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2StuffFifoFlow(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i16, align 2
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = call zeroext i16 @roundup(i32 4, i32 2)
  store i16 %5, i16* %4, align 2
  %6 = load i32, i32* @ITRC_NO_PORT, align 4
  %7 = load i32, i32* @ITRC_SFLOW, align 4
  %8 = load i32, i32* @ITRC_ENTER, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %6, i32 %7, i32 %8, i32 2, i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %33, %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = load i32, i32* @NEED_FLOW, align 4
  %18 = call %struct.TYPE_8__* @i2DeQueueNeeds(%struct.TYPE_7__* %16, i32 %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %3, align 8
  %19 = icmp ne %struct.TYPE_8__* null, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to i8*
  %29 = load i16, i16* %4, align 2
  %30 = call i64 @i2Write2Fifo(%struct.TYPE_7__* %25, i8* %28, i16 zeroext %29, i32 0)
  %31 = icmp eq i64 0, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %34

33:                                               ; preds = %20
  br label %15

34:                                               ; preds = %32, %15
  %35 = load i32, i32* @ITRC_NO_PORT, align 4
  %36 = load i32, i32* @ITRC_SFLOW, align 4
  %37 = load i32, i32* @ITRC_RETURN, align 4
  %38 = call i32 (i32, i32, i32, i32, ...) @ip2trace(i32 %35, i32 %36, i32 %37, i32 0)
  ret void
}

declare dso_local zeroext i16 @roundup(i32, i32) #1

declare dso_local i32 @ip2trace(i32, i32, i32, i32, ...) #1

declare dso_local %struct.TYPE_8__* @i2DeQueueNeeds(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @i2Write2Fifo(%struct.TYPE_7__*, i8*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
