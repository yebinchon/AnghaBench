; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-trust.c_tr_settreble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-trust.c_tr_settreble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust = type { i32, i32 }

@TDA7318_ADDR = common dso_local global i32 0, align 4
@basstreble2chip = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trust*, i32)* @tr_settreble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_settreble(%struct.trust* %0, i32 %1) #0 {
  %3 = alloca %struct.trust*, align 8
  %4 = alloca i32, align 4
  store %struct.trust* %0, %struct.trust** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.trust*, %struct.trust** %3, align 8
  %6 = getelementptr inbounds %struct.trust, %struct.trust* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = sdiv i32 %8, 4370
  %10 = load %struct.trust*, %struct.trust** %3, align 8
  %11 = getelementptr inbounds %struct.trust, %struct.trust* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.trust*, %struct.trust** %3, align 8
  %13 = load i32, i32* @TDA7318_ADDR, align 4
  %14 = load i32*, i32** @basstreble2chip, align 8
  %15 = load %struct.trust*, %struct.trust** %3, align 8
  %16 = getelementptr inbounds %struct.trust, %struct.trust* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = or i32 112, %20
  %22 = call i32 @write_i2c(%struct.trust* %12, i32 2, i32 %13, i32 %21)
  %23 = load %struct.trust*, %struct.trust** %3, align 8
  %24 = getelementptr inbounds %struct.trust, %struct.trust* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_i2c(%struct.trust*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
