; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_priv = type { i32, i32, i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 (%struct.TYPE_2__*)* }

@CMCSR = common dso_local global i32 0, align 4
@FLAG_CLOCKSOURCE = common dso_local global i32 0, align 4
@FLAG_REPROGRAM = common dso_local global i32 0, align 4
@FLAG_IRQCONTEXT = common dso_local global i32 0, align 4
@FLAG_CLOCKEVENT = common dso_local global i32 0, align 4
@FLAG_SKIPEVENT = common dso_local global i32 0, align 4
@CLOCK_EVT_MODE_ONESHOT = common dso_local global i64 0, align 8
@CLOCK_EVT_MODE_SHUTDOWN = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_cmt_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sh_cmt_priv*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sh_cmt_priv*
  store %struct.sh_cmt_priv* %7, %struct.sh_cmt_priv** %5, align 8
  %8 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %9 = load i32, i32* @CMCSR, align 4
  %10 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %11 = load i32, i32* @CMCSR, align 4
  %12 = call i32 @sh_cmt_read(%struct.sh_cmt_priv* %10, i32 %11)
  %13 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %14 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %12, %15
  %17 = call i32 @sh_cmt_write(%struct.sh_cmt_priv* %8, i32 %9, i32 %16)
  %18 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %19 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FLAG_CLOCKSOURCE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %26 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %29 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  br label %34

34:                                               ; preds = %24, %2
  %35 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %36 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FLAG_REPROGRAM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %43 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %46 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %41, %34
  %48 = load i32, i32* @FLAG_IRQCONTEXT, align 4
  %49 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %50 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %54 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @FLAG_CLOCKEVENT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %47
  %60 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %61 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FLAG_SKIPEVENT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %59
  %67 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %68 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CLOCK_EVT_MODE_ONESHOT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %75 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %78 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @FLAG_REPROGRAM, align 4
  %80 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %81 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %73, %66
  %85 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %86 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %87, align 8
  %89 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %90 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %89, i32 0, i32 5
  %91 = call i32 %88(%struct.TYPE_2__* %90)
  br label %92

92:                                               ; preds = %84, %59
  br label %93

93:                                               ; preds = %92, %47
  %94 = load i32, i32* @FLAG_SKIPEVENT, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %97 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %101 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FLAG_REPROGRAM, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %145

106:                                              ; preds = %93
  %107 = load i32, i32* @FLAG_REPROGRAM, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %110 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %114 = call i32 @sh_cmt_clock_event_program_verify(%struct.sh_cmt_priv* %113, i32 1)
  %115 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %116 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FLAG_CLOCKEVENT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %106
  %122 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %123 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CLOCK_EVT_MODE_SHUTDOWN, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %136, label %128

128:                                              ; preds = %121
  %129 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %130 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %133 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %131, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %128, %121
  %137 = load i32, i32* @FLAG_REPROGRAM, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %140 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %136, %128
  br label %144

144:                                              ; preds = %143, %106
  br label %145

145:                                              ; preds = %144, %93
  %146 = load i32, i32* @FLAG_IRQCONTEXT, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %5, align 8
  %149 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %152
}

declare dso_local i32 @sh_cmt_write(%struct.sh_cmt_priv*, i32, i32) #1

declare dso_local i32 @sh_cmt_read(%struct.sh_cmt_priv*, i32) #1

declare dso_local i32 @sh_cmt_clock_event_program_verify(%struct.sh_cmt_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
