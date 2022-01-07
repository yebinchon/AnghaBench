; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_grp1a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_grp1a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { %struct.decode_cache }
%struct.decode_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.x86_emulate_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*)* @emulate_grp1a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_grp1a(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1) #0 {
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  %4 = alloca %struct.x86_emulate_ops*, align 8
  %5 = alloca %struct.decode_cache*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %4, align 8
  %6 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %7 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %6, i32 0, i32 0
  store %struct.decode_cache* %7, %struct.decode_cache** %5, align 8
  %8 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %9 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %4, align 8
  %10 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %11 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.decode_cache*, %struct.decode_cache** %5, align 8
  %14 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @emulate_pop(%struct.x86_emulate_ctxt* %8, %struct.x86_emulate_ops* %9, i32* %12, i32 %16)
  ret i32 %17
}

declare dso_local i32 @emulate_pop(%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
