; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Very strange (stat=0x%04x)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: Antenna %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@XMIT_SENDING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bt3c_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt3c_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @CONTROL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inb(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %99

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @bt3c_read(i32 %39, i32 28673)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 127
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %97

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 255
  %50 = icmp ne i32 %49, 255
  br i1 %50, label %51, label %96

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @bt3c_read(i32 %56, i32 28674)
  %58 = and i32 %57, 16
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %68 = call i32 @BT_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %67)
  br label %69

69:                                               ; preds = %55, %51
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = call i32 @bt3c_receive(%struct.TYPE_10__* %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* @XMIT_SENDING, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = call i32 @clear_bit(i32 %81, i32* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = call i32 @bt3c_write_wakeup(%struct.TYPE_10__* %85)
  br label %87

87:                                               ; preds = %80, %76
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @bt3c_io_write(i32 %88, i32 28673, i32 0)
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* @CONTROL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outb(i32 %90, i64 %94)
  br label %96

96:                                               ; preds = %87, %47
  br label %97

97:                                               ; preds = %96, %44
  %98 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %2
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @bt3c_read(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @BT_INFO(i8*, i32, i8*) #1

declare dso_local i32 @bt3c_receive(%struct.TYPE_10__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @bt3c_write_wakeup(%struct.TYPE_10__*) #1

declare dso_local i32 @bt3c_io_write(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
