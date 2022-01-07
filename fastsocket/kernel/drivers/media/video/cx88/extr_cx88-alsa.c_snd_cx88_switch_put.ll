; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-alsa.c_snd_cx88_switch_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-alsa.c_snd_cx88_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@AUD_VOL_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cx88_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx88_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.TYPE_7__* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.cx88_core*, %struct.cx88_core** %13, align 8
  store %struct.cx88_core* %14, %struct.cx88_core** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load i32, i32* @AUD_VOL_CTL, align 4
  %22 = call i32 @cx_read(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %29, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @AUD_VOL_CTL, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @cx_write(i32 %41, i32 %42)
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %37, %2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_7__* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
