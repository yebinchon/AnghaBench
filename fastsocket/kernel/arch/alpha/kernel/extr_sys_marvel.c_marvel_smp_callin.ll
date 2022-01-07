; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_sys_marvel.c_marvel_smp_callin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_sys_marvel.c_marvel_smp_callin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io7 = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Redirecting IO7 interrupts to local CPU at PE %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @marvel_smp_callin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marvel_smp_callin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.io7*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @hard_smp_processor_id()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call %struct.io7* @marvel_find_io7(i32 %5)
  store %struct.io7* %6, %struct.io7** %2, align 8
  %7 = load %struct.io7*, %struct.io7** %2, align 8
  %8 = icmp ne %struct.io7* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %82

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.io7*, %struct.io7** %2, align 8
  %14 = load %struct.io7*, %struct.io7** %2, align 8
  %15 = getelementptr inbounds %struct.io7, %struct.io7* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @io7_redirect_irq(%struct.io7* %13, i32* %18, i32 %19)
  %21 = load %struct.io7*, %struct.io7** %2, align 8
  %22 = load %struct.io7*, %struct.io7** %2, align 8
  %23 = getelementptr inbounds %struct.io7, %struct.io7* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @io7_redirect_irq(%struct.io7* %21, i32* %26, i32 %27)
  %29 = load %struct.io7*, %struct.io7** %2, align 8
  %30 = load %struct.io7*, %struct.io7** %2, align 8
  %31 = getelementptr inbounds %struct.io7, %struct.io7* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @io7_redirect_irq(%struct.io7* %29, i32* %34, i32 %35)
  %37 = load %struct.io7*, %struct.io7** %2, align 8
  %38 = load %struct.io7*, %struct.io7** %2, align 8
  %39 = getelementptr inbounds %struct.io7, %struct.io7* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @io7_redirect_irq(%struct.io7* %37, i32* %42, i32 %43)
  %45 = load %struct.io7*, %struct.io7** %2, align 8
  %46 = load %struct.io7*, %struct.io7** %2, align 8
  %47 = getelementptr inbounds %struct.io7, %struct.io7* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @io7_redirect_irq(%struct.io7* %45, i32* %50, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %61, %10
  %54 = load i32, i32* %3, align 4
  %55 = icmp ult i32 %54, 96
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.io7*, %struct.io7** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @io7_redirect_one_lsi(%struct.io7* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %53

64:                                               ; preds = %53
  %65 = load %struct.io7*, %struct.io7** %2, align 8
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @io7_redirect_one_lsi(%struct.io7* %65, i32 116, i32 %66)
  %68 = load %struct.io7*, %struct.io7** %2, align 8
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @io7_redirect_one_lsi(%struct.io7* %68, i32 117, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %79, %64
  %72 = load i32, i32* %3, align 4
  %73 = icmp ult i32 %72, 16
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.io7*, %struct.io7** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @io7_redirect_one_msi(%struct.io7* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %71

82:                                               ; preds = %9, %71
  ret void
}

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local %struct.io7* @marvel_find_io7(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @io7_redirect_irq(%struct.io7*, i32*, i32) #1

declare dso_local i32 @io7_redirect_one_lsi(%struct.io7*, i32, i32) #1

declare dso_local i32 @io7_redirect_one_msi(%struct.io7*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
