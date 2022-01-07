; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_memory.c_detect_memory_e801.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_memory.c_detect_memory_e801.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.biosregs = type { i32, i32, i32, i32, i32 }

@X86_EFLAGS_CF = common dso_local global i32 0, align 4
@boot_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @detect_memory_e801 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_memory_e801() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.biosregs, align 4
  %3 = alloca %struct.biosregs, align 4
  %4 = call i32 @initregs(%struct.biosregs* %2)
  %5 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  store i32 59393, i32* %5, align 4
  %6 = call i32 @intcall(i32 21, %struct.biosregs* %2, %struct.biosregs* %3)
  %7 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @X86_EFLAGS_CF, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %49

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %17
  %29 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 15360
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %1, align 4
  br label %49

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 15360
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 6
  %41 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %40, %42
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_params, i32 0, i32 0), align 4
  br label %47

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_params, i32 0, i32 0), align 4
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %48, %32, %12
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, %struct.biosregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
