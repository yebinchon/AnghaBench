; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_mca.c_query_mca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_mca.c_query_mca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.biosregs = type { i32, i32, i32, i32 }

@X86_EFLAGS_CF = common dso_local global i32 0, align 4
@boot_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_mca() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.biosregs, align 4
  %3 = alloca %struct.biosregs, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @initregs(%struct.biosregs* %2)
  %6 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  store i32 192, i32* %6, align 4
  %7 = call i32 @intcall(i32 21, %struct.biosregs* %2, %struct.biosregs* %3)
  %8 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @X86_EFLAGS_CF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %30

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @set_fs(i32 %16)
  %18 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rdfs16(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 4, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %14
  %26 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @copy_from_fs(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_params, i32 0, i32 0), i32 %27, i32 %28)
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %25, %13
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, %struct.biosregs*) #1

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @rdfs16(i32) #1

declare dso_local i32 @copy_from_fs(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
