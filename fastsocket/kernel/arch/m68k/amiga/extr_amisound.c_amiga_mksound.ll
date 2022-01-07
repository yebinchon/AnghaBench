; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_amisound.c_amiga_mksound.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/amiga/extr_amisound.c_amiga_mksound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i16, i32, i64 }

@snd_data = common dso_local global i64 0, align 8
@sound_timer = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@clock_constant = common dso_local global i32 0, align 4
@amiga_audio_min_period = common dso_local global i64 0, align 8
@MAX_PERIOD = common dso_local global i64 0, align 8
@custom = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@DMAF_SETCLR = common dso_local global i32 0, align 4
@DMAF_AUD2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amiga_mksound(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @snd_data, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %68

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = call i32 @del_timer(%struct.TYPE_7__* @sound_timer)
  %14 = load i32, i32* %3, align 4
  %15 = icmp ugt i32 %14, 20
  br i1 %15, label %16, label %63

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp ult i32 %17, 32767
  br i1 %18, label %19, label %63

19:                                               ; preds = %16
  %20 = load i32, i32* @clock_constant, align 4
  %21 = load i32, i32* %3, align 4
  %22 = udiv i32 %20, %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @amiga_audio_min_period, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @amiga_audio_min_period, align 8
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @MAX_PERIOD, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @MAX_PERIOD, align 8
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i64, i64* @snd_data, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @custom, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i64 %36, i64* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @custom, i32 0, i32 1), align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 2, i32* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i16
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @custom, i32 0, i32 1), align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i16 %44, i16* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @custom, i32 0, i32 1), align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 32, i32* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %35
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sound_timer, i32 0, i32 0), align 8
  %58 = call i32 @add_timer(%struct.TYPE_7__* @sound_timer)
  br label %59

59:                                               ; preds = %53, %35
  %60 = load i32, i32* @DMAF_SETCLR, align 4
  %61 = load i32, i32* @DMAF_AUD2, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @custom, i32 0, i32 0), align 8
  br label %65

63:                                               ; preds = %16, %10
  %64 = call i32 @nosound(i32 0)
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @local_irq_restore(i64 %66)
  br label %68

68:                                               ; preds = %65, %9
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @del_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @nosound(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
