; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_ir_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_ir_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { %struct.cx88_IR* }
%struct.cx88_IR = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_ir_fini(%struct.cx88_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.cx88_IR*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  %5 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %6 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %5, i32 0, i32 0
  %7 = load %struct.cx88_IR*, %struct.cx88_IR** %6, align 8
  store %struct.cx88_IR* %7, %struct.cx88_IR** %4, align 8
  %8 = load %struct.cx88_IR*, %struct.cx88_IR** %4, align 8
  %9 = icmp eq %struct.cx88_IR* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %13 = call i32 @cx88_ir_stop(%struct.cx88_core* %12)
  %14 = load %struct.cx88_IR*, %struct.cx88_IR** %4, align 8
  %15 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rc_unregister_device(i32 %16)
  %18 = load %struct.cx88_IR*, %struct.cx88_IR** %4, align 8
  %19 = call i32 @kfree(%struct.cx88_IR* %18)
  %20 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %21 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %20, i32 0, i32 0
  store %struct.cx88_IR* null, %struct.cx88_IR** %21, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %11, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @cx88_ir_stop(%struct.cx88_core*) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.cx88_IR*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
