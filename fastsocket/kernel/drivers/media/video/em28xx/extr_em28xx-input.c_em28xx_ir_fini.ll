; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_ir_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_ir_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.em28xx_IR* }
%struct.em28xx_IR = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_ir_fini(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_IR*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %5 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %6 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %5, i32 0, i32 0
  %7 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  store %struct.em28xx_IR* %7, %struct.em28xx_IR** %4, align 8
  %8 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %9 = icmp ne %struct.em28xx_IR* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %13 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @em28xx_ir_stop(i32 %14)
  %16 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %17 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rc_unregister_device(i32 %18)
  %20 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %21 = call i32 @kfree(%struct.em28xx_IR* %20)
  %22 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 0
  store %struct.em28xx_IR* null, %struct.em28xx_IR** %23, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @em28xx_ir_stop(i32) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.em28xx_IR*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
