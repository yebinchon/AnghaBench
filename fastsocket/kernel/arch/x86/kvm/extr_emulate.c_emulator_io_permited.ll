; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulator_io_permited.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulator_io_permited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }
%struct.x86_emulate_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i32, i32)* @emulator_io_permited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_io_permited(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x86_emulate_ctxt*, align 8
  %7 = alloca %struct.x86_emulate_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %6, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %11 = call i64 @emulator_bad_iopl(%struct.x86_emulate_ctxt* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %15 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @emulator_io_port_access_allowed(%struct.x86_emulate_ctxt* %14, %struct.x86_emulate_ops* %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %23

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %4
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i64 @emulator_bad_iopl(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @emulator_io_port_access_allowed(%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
