; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CARD_READY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@REG_CONTROL_INTERRUPT = common dso_local global i32 0, align 4
@REG_CONTROL = common dso_local global i64 0, align 8
@REG_INTERRUPT = common dso_local global i64 0, align 8
@REG_COMMAND_RX_BUF_ONE = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i64 0, align 8
@REG_COMMAND_RX_BUF_TWO = common dso_local global i32 0, align 4
@XMIT_BUF_ONE_READY = common dso_local global i32 0, align 4
@XMIT_BUF_TWO_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bluecard_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluecard_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* @CARD_READY, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %152

25:                                               ; preds = %2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* @REG_CONTROL_INTERRUPT, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* @REG_CONTROL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %43, i64 %47)
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* @REG_INTERRUPT, align 8
  %52 = add nsw i64 %50, %51
  %53 = call zeroext i8 @inb(i64 %52)
  store i8 %53, i8* %8, align 1
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %134

57:                                               ; preds = %25
  %58 = load i8, i8* %8, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %59, 255
  br i1 %60, label %61, label %134

61:                                               ; preds = %57
  %62 = load i8, i8* %8, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = call i32 @bluecard_receive(%struct.TYPE_8__* %67, i32 0)
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* @REG_INTERRUPT, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outb(i32 4, i64 %72)
  %74 = load i32, i32* @REG_COMMAND_RX_BUF_ONE, align 4
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* @REG_COMMAND, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outb(i32 %74, i64 %78)
  br label %80

80:                                               ; preds = %66, %61
  %81 = load i8, i8* %8, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = call i32 @bluecard_receive(%struct.TYPE_8__* %86, i32 16)
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* @REG_INTERRUPT, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outb(i32 8, i64 %91)
  %93 = load i32, i32* @REG_COMMAND_RX_BUF_TWO, align 4
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* @REG_COMMAND, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outb(i32 %93, i64 %97)
  br label %99

99:                                               ; preds = %85, %80
  %100 = load i8, i8* %8, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i32, i32* @XMIT_BUF_ONE_READY, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* @REG_INTERRUPT, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @outb(i32 1, i64 %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = call i32 @bluecard_write_wakeup(%struct.TYPE_8__* %114)
  br label %116

116:                                              ; preds = %104, %99
  %117 = load i8, i8* %8, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 2
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load i32, i32* @XMIT_BUF_TWO_READY, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = call i32 @set_bit(i32 %122, i32* %124)
  %126 = load i32, i32* %7, align 4
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* @REG_INTERRUPT, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @outb(i32 2, i64 %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = call i32 @bluecard_write_wakeup(%struct.TYPE_8__* %131)
  br label %133

133:                                              ; preds = %121, %116
  br label %134

134:                                              ; preds = %133, %57, %25
  %135 = load i32, i32* @REG_CONTROL_INTERRUPT, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* @REG_CONTROL, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @outb(i32 %142, i64 %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = call i32 @spin_unlock(i32* %149)
  %151 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %134, %23
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @bluecard_receive(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bluecard_write_wakeup(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
