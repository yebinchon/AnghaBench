; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cd2401_modem_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cd2401_modem_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_port = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BASE_ADDR = common dso_local global i64 0, align 8
@CyLICR = common dso_local global i64 0, align 8
@cy_port = common dso_local global %struct.cyclades_port* null, align 8
@jiffies = common dso_local global i32 0, align 4
@CyMISR = common dso_local global i64 0, align 8
@CyMSVR1 = common dso_local global i64 0, align 8
@CyDCD = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@CyCTS = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@CyTxMpty = common dso_local global i8 0, align 1
@CyIER = common dso_local global i64 0, align 8
@CyTxRdy = common dso_local global i8 0, align 1
@CyDSR = common dso_local global i32 0, align 4
@CyMEOIR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cd2401_modem_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd2401_modem_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cyclades_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i64, i64* @BASE_ADDR, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* @CyLICR, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load volatile i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = ashr i32 %16, 2
  store i32 %17, i32* %7, align 4
  %18 = load %struct.cyclades_port*, %struct.cyclades_port** @cy_port, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %18, i64 %20
  store %struct.cyclades_port* %21, %struct.cyclades_port** %5, align 8
  %22 = load i32, i32* @jiffies, align 4
  %23 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %24 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* @CyMISR, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load volatile i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* @CyMSVR1, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load volatile i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %36 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp eq %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %151

40:                                               ; preds = %2
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @CyDCD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %40
  %46 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %47 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @CyDCD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %59 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %58, i32 0, i32 2
  %60 = call i32 @wake_up_interruptible(i32* %59)
  br label %75

61:                                               ; preds = %52
  %62 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %63 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @tty_hangup(%struct.TYPE_3__* %64)
  %66 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %67 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %66, i32 0, i32 2
  %68 = call i32 @wake_up_interruptible(i32* %67)
  %69 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %72 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %61, %57
  br label %76

76:                                               ; preds = %75, %45, %40
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @CyCTS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %144

81:                                               ; preds = %76
  %82 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %83 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %144

88:                                               ; preds = %81
  %89 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %90 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %88
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @CyCTS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %102 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  %105 = load volatile i8, i8* @CyTxMpty, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8*, i8** %6, align 8
  %108 = load i64, i64* @CyIER, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load volatile i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %111, %106
  %113 = trunc i32 %112 to i8
  store volatile i8 %113, i8* %109, align 1
  %114 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %115 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = call i32 @tty_wakeup(%struct.TYPE_3__* %116)
  br label %118

118:                                              ; preds = %100, %95
  br label %143

119:                                              ; preds = %88
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @CyCTS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %119
  %125 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %126 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 4
  %129 = load volatile i8, i8* @CyTxMpty, align 1
  %130 = zext i8 %129 to i32
  %131 = load volatile i8, i8* @CyTxRdy, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = xor i32 %133, -1
  %135 = load i8*, i8** %6, align 8
  %136 = load i64, i64* @CyIER, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load volatile i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %139, %134
  %141 = trunc i32 %140 to i8
  store volatile i8 %141, i8* %137, align 1
  br label %142

142:                                              ; preds = %124, %119
  br label %143

143:                                              ; preds = %142, %118
  br label %144

144:                                              ; preds = %143, %81, %76
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @CyDSR, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %149, %144
  br label %151

151:                                              ; preds = %150, %39
  %152 = load i8*, i8** %6, align 8
  %153 = load i64, i64* @CyMEOIR, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store volatile i8 0, i8* %154, align 1
  %155 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %155
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_hangup(%struct.TYPE_3__*) #1

declare dso_local i32 @tty_wakeup(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
