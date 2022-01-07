; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/acpi/realmode/extr_......bootregs.c_initregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/acpi/realmode/extr_......bootregs.c_initregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biosregs = type { i32, i32, i8*, i8*, i32 }

@X86_EFLAGS_CF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initregs(%struct.biosregs* %0) #0 {
  %2 = alloca %struct.biosregs*, align 8
  store %struct.biosregs* %0, %struct.biosregs** %2, align 8
  %3 = load %struct.biosregs*, %struct.biosregs** %2, align 8
  %4 = call i32 @memset(%struct.biosregs* %3, i32 0, i32 32)
  %5 = load i32, i32* @X86_EFLAGS_CF, align 4
  %6 = load %struct.biosregs*, %struct.biosregs** %2, align 8
  %7 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = call i8* (...) @ds()
  %11 = load %struct.biosregs*, %struct.biosregs** %2, align 8
  %12 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %11, i32 0, i32 3
  store i8* %10, i8** %12, align 8
  %13 = call i8* (...) @ds()
  %14 = load %struct.biosregs*, %struct.biosregs** %2, align 8
  %15 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = call i32 (...) @fs()
  %17 = load %struct.biosregs*, %struct.biosregs** %2, align 8
  %18 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @gs()
  %20 = load %struct.biosregs*, %struct.biosregs** %2, align 8
  %21 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  ret void
}

declare dso_local i32 @memset(%struct.biosregs*, i32, i32) #1

declare dso_local i8* @ds(...) #1

declare dso_local i32 @fs(...) #1

declare dso_local i32 @gs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
