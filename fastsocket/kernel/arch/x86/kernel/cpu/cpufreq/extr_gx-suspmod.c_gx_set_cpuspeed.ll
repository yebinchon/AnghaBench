; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_gx-suspmod.c_gx_set_cpuspeed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_gx-suspmod.c_gx_set_cpuspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cpufreq_freqs = type { i32, i32, i64 }

@gx_params = common dso_local global %struct.TYPE_4__* null, align 8
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@stock_freq = common dso_local global i32 0, align 4
@IRQ_SPDUP = common dso_local global i32 0, align 4
@VID_SPDUP = common dso_local global i32 0, align 4
@PCI_IRQTC = common dso_local global i32 0, align 4
@PCI_VIDTC = common dso_local global i32 0, align 4
@PCI_PMER1 = common dso_local global i32 0, align 4
@SUSMOD = common dso_local global i32 0, align 4
@PWRSVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"fatal: try to set unknown chipset.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"suspend modulation disabled: cpu runs 100%% speed.\0A\00", align 1
@PCI_MODOFF = common dso_local global i32 0, align 4
@PCI_MODON = common dso_local global i32 0, align 4
@PCI_SUSCFG = common dso_local global i32 0, align 4
@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"suspend modulation w/ duration of ON:%d us, OFF:%d us\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"suspend modulation w/ clock speed: %d kHz.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gx_set_cpuspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gx_set_cpuspeed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cpufreq_freqs, align 8
  store i32 %0, i32* %2, align 4
  %8 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = call i32 @gx_get_cpuspeed(i32 0)
  %10 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @gx_validate_speed(i32 %11, i32* %13, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %20 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %7, i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @stock_freq, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %74 [
    i32 128, label %32
    i32 129, label %68
    i32 130, label %68
  ]

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IRQ_SPDUP, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VID_SPDUP, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @PCI_IRQTC, align 4
  %41 = call i32 @gx_write_byte(i32 %40, i32 4)
  %42 = load i32, i32* @PCI_VIDTC, align 4
  %43 = call i32 @gx_write_byte(i32 %42, i32 100)
  %44 = load i32, i32* @PCI_PMER1, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @gx_write_byte(i32 %44, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %59

53:                                               ; preds = %32
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SUSMOD, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %67

59:                                               ; preds = %32
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SUSMOD, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @PWRSVE, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %53
  br label %78

68:                                               ; preds = %26, %26
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SUSMOD, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %3, align 4
  br label %78

74:                                               ; preds = %26
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @local_irq_restore(i64 %75)
  %77 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %129

78:                                               ; preds = %68, %67
  br label %91

79:                                               ; preds = %1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SUSMOD, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  store i32 %85, i32* %3, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %79, %78
  %92 = load i32, i32* @PCI_MODOFF, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @gx_write_byte(i32 %92, i32 %95)
  %97 = load i32, i32* @PCI_MODON, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @gx_write_byte(i32 %97, i32 %100)
  %102 = load i32, i32* @PCI_SUSCFG, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @gx_write_byte(i32 %102, i32 %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* @PCI_SUSCFG, align 4
  %109 = call i32 @pci_read_config_byte(%struct.TYPE_3__* %107, i32 %108, i32* %3)
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @local_irq_restore(i64 %110)
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %116 = call i32 @cpufreq_notify_transition(%struct.cpufreq_freqs* %7, i32 %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %119, 32
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gx_params, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %123, 32
  %125 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %124)
  %126 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %7, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %91, %74
  ret void
}

declare dso_local i32 @gx_get_cpuspeed(i32) #1

declare dso_local i32 @gx_validate_speed(i32, i32*, i32*) #1

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gx_write_byte(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_3__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
