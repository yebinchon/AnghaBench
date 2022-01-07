; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_dn_ints.c_dn_process_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_dn_ints.c_dn_process_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@pica = common dso_local global i64 0, align 8
@picb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_process_int(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %7 = call i32 @__m68k_handle_int(i32 %5, %struct.pt_regs* %6)
  %8 = load i64, i64* @pica, align 8
  %9 = inttoptr i64 %8 to i8*
  store volatile i8 32, i8* %9, align 1
  %10 = load i64, i64* @picb, align 8
  %11 = inttoptr i64 %10 to i8*
  store volatile i8 32, i8* %11, align 1
  ret void
}

declare dso_local i32 @__m68k_handle_int(i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
