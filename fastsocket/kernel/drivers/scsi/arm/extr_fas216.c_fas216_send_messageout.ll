; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_send_messageout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_send_messageout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.message = type { i32, i32, i32* }

@CMD_FLUSHFIFO = common dso_local global i32 0, align 4
@REG_FF = common dso_local global i32 0, align 4
@REG_CFIS = common dso_local global i32 0, align 4
@CFIS_CF = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@CMD_TRANSFERINFO = common dso_local global i32 0, align 4
@PHASE_MSGOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @fas216_send_messageout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_send_messageout(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = call i32 @msgqueue_msglength(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = call i32 @fas216_checkmagic(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = load i32, i32* @CMD_FLUSHFIFO, align 4
  %17 = call i32 @fas216_cmd(%struct.TYPE_9__* %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = call %struct.message* @msgqueue_getmsg(i32* %24, i32 %25)
  store %struct.message* %27, %struct.message** %6, align 8
  %28 = icmp ne %struct.message* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %48, %29
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.message*, %struct.message** %6, align 8
  %34 = getelementptr inbounds %struct.message, %struct.message* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = load i32, i32* @REG_FF, align 4
  %40 = load %struct.message*, %struct.message** %6, align 8
  %41 = getelementptr inbounds %struct.message, %struct.message* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fas216_writeb(%struct.TYPE_9__* %38, i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load i32, i32* @REG_CFIS, align 4
  %55 = call i32 @fas216_readb(%struct.TYPE_9__* %53, i32 %54)
  %56 = load i32, i32* @CFIS_CF, align 4
  %57 = and i32 %55, %56
  %58 = sub i32 %52, %57
  %59 = load %struct.message*, %struct.message** %6, align 8
  %60 = getelementptr inbounds %struct.message, %struct.message* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %21

61:                                               ; preds = %21
  br label %67

62:                                               ; preds = %2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = load i32, i32* @REG_FF, align 4
  %65 = load i32, i32* @NOP, align 4
  %66 = call i32 @fas216_writeb(%struct.TYPE_9__* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load i32, i32* @CMD_TRANSFERINFO, align 4
  %70 = call i32 @fas216_cmd(%struct.TYPE_9__* %68, i32 %69)
  %71 = load i32, i32* @PHASE_MSGOUT, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  ret void
}

declare dso_local i32 @msgqueue_msglength(i32*) #1

declare dso_local i32 @fas216_checkmagic(%struct.TYPE_9__*) #1

declare dso_local i32 @fas216_cmd(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.message* @msgqueue_getmsg(i32*, i32) #1

declare dso_local i32 @fas216_writeb(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @fas216_readb(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
