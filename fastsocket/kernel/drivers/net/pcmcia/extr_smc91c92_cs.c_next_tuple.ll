; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_next_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_next_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i32*, i32*)* @next_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_tuple(%struct.pcmcia_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @pcmcia_get_next_tuple(%struct.pcmcia_device* %9, i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @pcmcia_get_tuple_data(%struct.pcmcia_device* %14, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @pcmcia_parse_tuple(i32* %21, i32* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @pcmcia_get_next_tuple(%struct.pcmcia_device*, i32*) #1

declare dso_local i32 @pcmcia_get_tuple_data(%struct.pcmcia_device*, i32*) #1

declare dso_local i32 @pcmcia_parse_tuple(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
