; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_macboing.c_mac_mksound.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_macboing.c_mac_mksound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@mac_asc_inited = common dso_local global i32 0, align 4
@mac_sound_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@mac_asc_regs = common dso_local global i32* null, align 8
@mac_asc_wave_tab = common dso_local global i32* null, align 8
@ASC_CONTROL = common dso_local global i32 0, align 4
@ASC_VOLUME = common dso_local global i64 0, align 8
@ASC_MODE_SAMPLE = common dso_local global i32 0, align 4
@ASC_MODE = common dso_local global i64 0, align 8
@ASC_ENABLE_SAMPLE = common dso_local global i32 0, align 4
@ASC_ENABLE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_mksound(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = shl i32 %8, 5
  %10 = udiv i32 %9, 468
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @mac_asc_inited, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (...) @mac_init_asc()
  br label %15

15:                                               ; preds = %13, %2
  br i1 true, label %16, label %20

16:                                               ; preds = %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mac_special_bell(i32 %17, i32 %18, i32 128)
  br label %107

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = icmp ult i32 %21, 20
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp ugt i32 %24, 20000
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %23, %20
  %30 = call i32 @mac_nosound(i32 0)
  br label %107

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @local_irq_save(i32 %32)
  %34 = call i32 @del_timer(%struct.TYPE_4__* @mac_sound_timer)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %43, %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 2048
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32*, i32** @mac_asc_regs, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %35

46:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 2048
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32*, i32** @mac_asc_wave_tab, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** @mac_asc_regs, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %47

63:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load i32*, i32** @mac_asc_regs, align 8
  %70 = ptrtoint i32* %69 to i32
  %71 = load i32, i32* @ASC_CONTROL, align 4
  %72 = add i32 %70, %71
  %73 = add i32 %72, 2068
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 8, %74
  %76 = add i32 %73, %75
  %77 = zext i32 %76 to i64
  %78 = inttoptr i64 %77 to i32*
  store i32 %68, i32* %78, align 4
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %64

82:                                               ; preds = %64
  %83 = load i32*, i32** @mac_asc_regs, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2055
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** @mac_asc_regs, align 8
  %86 = load i64, i64* @ASC_VOLUME, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 128, i32* %87, align 4
  %88 = load i32*, i32** @mac_asc_regs, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2053
  store i32 0, i32* %89, align 4
  %90 = load i32*, i32** @mac_asc_regs, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2063
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* @ASC_MODE_SAMPLE, align 4
  %93 = load i32*, i32** @mac_asc_regs, align 8
  %94 = load i64, i64* @ASC_MODE, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @ASC_ENABLE_SAMPLE, align 4
  %97 = load i32*, i32** @mac_asc_regs, align 8
  %98 = load i64, i64* @ASC_ENABLE, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %96, i32* %99, align 4
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i32, i32* %4, align 4
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  store i64 %103, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mac_sound_timer, i32 0, i32 0), align 8
  %104 = call i32 @add_timer(%struct.TYPE_4__* @mac_sound_timer)
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @local_irq_restore(i32 %105)
  br label %107

107:                                              ; preds = %82, %29, %16
  ret void
}

declare dso_local i32 @mac_init_asc(...) #1

declare dso_local i32 @mac_special_bell(i32, i32, i32) #1

declare dso_local i32 @mac_nosound(i32) #1

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
