; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_status_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_status_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i8, i32, i32 }

@SerialSignal_DSR = common dso_local global i8 0, align 1
@MISCSTATUS_DSR_LATCHED = common dso_local global i8 0, align 1
@SerialSignal_RI = common dso_local global i8 0, align 1
@MISCSTATUS_RI_LATCHED = common dso_local global i8 0, align 1
@SerialSignal_DCD = common dso_local global i8 0, align 1
@MISCSTATUS_DCD_LATCHED = common dso_local global i8 0, align 1
@SerialSignal_CTS = common dso_local global i8 0, align 1
@MISCSTATUS_CTS_LATCHED = common dso_local global i8 0, align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @status_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i64 %0, i64* %2, align 8
  store i8 0, i8* %3, align 1
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = call i32 @get_signals(%struct.TYPE_4__* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 4
  %22 = zext i8 %21 to i32
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %22, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %6, align 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8 %31, i8* %33, align 4
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @SerialSignal_DSR, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %1
  %41 = load i8, i8* @MISCSTATUS_DSR_LATCHED, align 1
  %42 = zext i8 %41 to i32
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @SerialSignal_DSR, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = or i32 %42, %49
  %51 = load i8, i8* %3, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %3, align 1
  br label %55

55:                                               ; preds = %40, %1
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @SerialSignal_RI, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load i8, i8* @MISCSTATUS_RI_LATCHED, align 1
  %64 = zext i8 %63 to i32
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @SerialSignal_RI, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = or i32 %64, %71
  %73 = load i8, i8* %3, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %3, align 1
  br label %77

77:                                               ; preds = %62, %55
  %78 = load i8, i8* %6, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @SerialSignal_DCD, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = load i8, i8* @MISCSTATUS_DCD_LATCHED, align 1
  %86 = zext i8 %85 to i32
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @SerialSignal_DCD, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %90, %92
  %94 = or i32 %86, %93
  %95 = load i8, i8* %3, align 1
  %96 = zext i8 %95 to i32
  %97 = or i32 %96, %94
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %3, align 1
  br label %99

99:                                               ; preds = %84, %77
  %100 = load i8, i8* %6, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @SerialSignal_CTS, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load i8, i8* @MISCSTATUS_CTS_LATCHED, align 1
  %108 = zext i8 %107 to i32
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @SerialSignal_CTS, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %112, %114
  %116 = or i32 %108, %115
  %117 = load i8, i8* %3, align 1
  %118 = zext i8 %117 to i32
  %119 = or i32 %118, %116
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %3, align 1
  br label %121

121:                                              ; preds = %106, %99
  %122 = load i8, i8* %3, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = load i8, i8* %3, align 1
  %127 = call i32 @isr_io_pin(%struct.TYPE_4__* %125, i8 zeroext %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i64, i64* @jiffies, align 8
  %132 = call i64 @msecs_to_jiffies(i32 10)
  %133 = add nsw i64 %131, %132
  %134 = call i32 @mod_timer(i32* %130, i64 %133)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_signals(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @isr_io_pin(%struct.TYPE_4__*, i8 zeroext) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
