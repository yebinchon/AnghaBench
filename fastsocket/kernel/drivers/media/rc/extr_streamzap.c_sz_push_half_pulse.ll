; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_streamzap.c_sz_push_half_pulse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_streamzap.c_sz_push_half_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.streamzap_ir = type { i32 }

@SZ_PULSE_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.streamzap_ir*, i8)* @sz_push_half_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sz_push_half_pulse(%struct.streamzap_ir* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.streamzap_ir*, align 8
  %4 = alloca i8, align 1
  store %struct.streamzap_ir* %0, %struct.streamzap_ir** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @SZ_PULSE_MASK, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %7, %9
  %11 = ashr i32 %10, 4
  %12 = trunc i32 %11 to i8
  %13 = call i32 @sz_push_full_pulse(%struct.streamzap_ir* %5, i8 zeroext %12)
  ret void
}

declare dso_local i32 @sz_push_full_pulse(%struct.streamzap_ir*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
