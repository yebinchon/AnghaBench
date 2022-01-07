; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_do_vm86_irq_handling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vm86_32.c_do_vm86_irq_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@irqbits = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ALLOWED_SIGS = common dso_local global i32 0, align 4
@vm86_irqs = common dso_local global %struct.TYPE_2__* null, align 8
@irq_handler = common dso_local global i32 0, align 4
@VM86_IRQNAME = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_vm86_irq_handling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_vm86_irq_handling(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %106 [
    i32 130, label %10
    i32 129, label %13
    i32 128, label %15
    i32 131, label %75
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @get_and_reset_irq(i32 %11)
  store i32 %12, i32* %3, align 4
  br label %109

13:                                               ; preds = %2
  %14 = load i32, i32* @irqbits, align 4
  store i32 %14, i32* %3, align 4
  br label %109

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %109

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @ALLOWED_SIGS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %109

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @invalid_vm86_irq(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %109

42:                                               ; preds = %35
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm86_irqs, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %109

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @VM86_IRQNAME, align 4
  %56 = call i32 @request_irq(i32 %54, i32* @irq_handler, i32 0, i32 %55, i32* null)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %109

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm86_irqs, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  %68 = load i32, i32* @current, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm86_irqs, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %109

75:                                               ; preds = %2
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @invalid_vm86_irq(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @EPERM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %109

82:                                               ; preds = %75
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm86_irqs, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %109

91:                                               ; preds = %82
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vm86_irqs, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @current, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @EPERM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %109

103:                                              ; preds = %91
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @free_vm86_irq(i32 %104)
  store i32 0, i32* %3, align 4
  br label %109

106:                                              ; preds = %2
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %103, %100, %90, %79, %61, %59, %50, %39, %32, %23, %13, %10
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @get_and_reset_irq(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @invalid_vm86_irq(i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @free_vm86_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
