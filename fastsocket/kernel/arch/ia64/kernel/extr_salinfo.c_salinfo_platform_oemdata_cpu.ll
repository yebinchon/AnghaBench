; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_platform_oemdata_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_salinfo.c_salinfo_platform_oemdata_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.salinfo_platform_oemdata_parms = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @salinfo_platform_oemdata_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @salinfo_platform_oemdata_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.salinfo_platform_oemdata_parms*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.salinfo_platform_oemdata_parms*
  store %struct.salinfo_platform_oemdata_parms* %5, %struct.salinfo_platform_oemdata_parms** %3, align 8
  %6 = load %struct.salinfo_platform_oemdata_parms*, %struct.salinfo_platform_oemdata_parms** %3, align 8
  %7 = getelementptr inbounds %struct.salinfo_platform_oemdata_parms, %struct.salinfo_platform_oemdata_parms* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.salinfo_platform_oemdata_parms*, %struct.salinfo_platform_oemdata_parms** %3, align 8
  %10 = getelementptr inbounds %struct.salinfo_platform_oemdata_parms, %struct.salinfo_platform_oemdata_parms* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.salinfo_platform_oemdata_parms*, %struct.salinfo_platform_oemdata_parms** %3, align 8
  %13 = getelementptr inbounds %struct.salinfo_platform_oemdata_parms, %struct.salinfo_platform_oemdata_parms* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @salinfo_platform_oemdata(i32 %8, i32 %11, i32 %14)
  %16 = load %struct.salinfo_platform_oemdata_parms*, %struct.salinfo_platform_oemdata_parms** %3, align 8
  %17 = getelementptr inbounds %struct.salinfo_platform_oemdata_parms, %struct.salinfo_platform_oemdata_parms* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  ret void
}

declare dso_local i32 @salinfo_platform_oemdata(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
