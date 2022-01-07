; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unaligned.c_float2mem_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unaligned.c_float2mem_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_fpreg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ia64_fpreg*, %struct.ia64_fpreg*)* @float2mem_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @float2mem_double(%struct.ia64_fpreg* %0, %struct.ia64_fpreg* %1) #0 {
  %3 = alloca %struct.ia64_fpreg*, align 8
  %4 = alloca %struct.ia64_fpreg*, align 8
  store %struct.ia64_fpreg* %0, %struct.ia64_fpreg** %3, align 8
  store %struct.ia64_fpreg* %1, %struct.ia64_fpreg** %4, align 8
  %5 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %3, align 8
  %6 = call i32 @ia64_ldf_fill(i32 6, %struct.ia64_fpreg* %5)
  %7 = call i32 (...) @ia64_stop()
  %8 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %4, align 8
  %9 = call i32 @ia64_stfd(%struct.ia64_fpreg* %8, i32 6)
  ret void
}

declare dso_local i32 @ia64_ldf_fill(i32, %struct.ia64_fpreg*) #1

declare dso_local i32 @ia64_stop(...) #1

declare dso_local i32 @ia64_stfd(%struct.ia64_fpreg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
