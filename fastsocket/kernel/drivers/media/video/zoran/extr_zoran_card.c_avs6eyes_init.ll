; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_card.c_avs6eyes_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_card.c_avs6eyes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { i32 }

@default_mux = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran*)* @avs6eyes_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avs6eyes_init(%struct.zoran* %0) #0 {
  %2 = alloca %struct.zoran*, align 8
  %3 = alloca i32, align 4
  store %struct.zoran* %0, %struct.zoran** %2, align 8
  %4 = load i32, i32* @default_mux, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.zoran*, %struct.zoran** %2, align 8
  %6 = call i32 @GPIO(%struct.zoran* %5, i32 4, i32 1)
  %7 = call i32 @udelay(i32 2)
  %8 = load %struct.zoran*, %struct.zoran** %2, align 8
  %9 = call i32 @GPIO(%struct.zoran* %8, i32 0, i32 1)
  %10 = load %struct.zoran*, %struct.zoran** %2, align 8
  %11 = call i32 @GPIO(%struct.zoran* %10, i32 1, i32 0)
  %12 = load %struct.zoran*, %struct.zoran** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 1
  %15 = call i32 @GPIO(%struct.zoran* %12, i32 2, i32 %14)
  %16 = load %struct.zoran*, %struct.zoran** %2, align 8
  %17 = call i32 @GPIO(%struct.zoran* %16, i32 3, i32 0)
  %18 = load %struct.zoran*, %struct.zoran** %2, align 8
  %19 = call i32 @GPIO(%struct.zoran* %18, i32 4, i32 0)
  %20 = load %struct.zoran*, %struct.zoran** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 2
  %23 = call i32 @GPIO(%struct.zoran* %20, i32 5, i32 %22)
  %24 = load %struct.zoran*, %struct.zoran** %2, align 8
  %25 = call i32 @GPIO(%struct.zoran* %24, i32 6, i32 0)
  %26 = load %struct.zoran*, %struct.zoran** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 4
  %29 = call i32 @GPIO(%struct.zoran* %26, i32 7, i32 %28)
  ret void
}

declare dso_local i32 @GPIO(%struct.zoran*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
