; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_32.c_free_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_32.c_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.irqaction* }
%struct.irqaction = type { i8*, i32, %struct.irqaction*, i32, i32 }

@sparc_cpu_model = common dso_local global i64 0, align 8
@sun4d = common dso_local global i64 0, align 8
@NR_IRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Trying to free bogus IRQ %d\0A\00", align 1
@irq_action_lock = common dso_local global i32 0, align 4
@sparc_irq = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Trying to free free IRQ%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Trying to free free shared IRQ%d\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Trying to free shared IRQ%d with NULL device ID\0A\00", align 1
@SA_STATIC_ALLOC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Attempt to free statically allocated IRQ%d (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca %struct.irqaction**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i64, i64* @sparc_cpu_model, align 8
  %10 = load i64, i64* @sun4d, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i8*, i8** %4, align 8
  call void @sun4d_free_irq(i32 %13, i8* %14)
  br label %121

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NR_IRQS, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ugt i32 %20, 14
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %121

25:                                               ; preds = %15
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* @irq_action_lock, i64 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_irq, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.irqaction** %32, %struct.irqaction*** %6, align 8
  %33 = load %struct.irqaction**, %struct.irqaction*** %6, align 8
  %34 = load %struct.irqaction*, %struct.irqaction** %33, align 8
  store %struct.irqaction* %34, %struct.irqaction** %5, align 8
  %35 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %36 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %118

42:                                               ; preds = %25
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %59, %45
  %47 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %48 = icmp ne %struct.irqaction* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %51 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %63

56:                                               ; preds = %49
  %57 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %58 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %57, i32 0, i32 2
  store %struct.irqaction** %58, %struct.irqaction*** %6, align 8
  br label %59

59:                                               ; preds = %56
  %60 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %61 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %60, i32 0, i32 2
  %62 = load %struct.irqaction*, %struct.irqaction** %61, align 8
  store %struct.irqaction* %62, %struct.irqaction** %5, align 8
  br label %46

63:                                               ; preds = %55, %46
  %64 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %65 = icmp ne %struct.irqaction* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %118

69:                                               ; preds = %63
  br label %81

70:                                               ; preds = %42
  %71 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %72 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IRQF_SHARED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %118

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %69
  %82 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %83 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SA_STATIC_ALLOC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %91 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %92)
  br label %118

94:                                               ; preds = %81
  %95 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %96 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %95, i32 0, i32 2
  %97 = load %struct.irqaction*, %struct.irqaction** %96, align 8
  %98 = load %struct.irqaction**, %struct.irqaction*** %6, align 8
  store %struct.irqaction* %97, %struct.irqaction** %98, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* @irq_action_lock, i64 %99)
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @synchronize_irq(i32 %101)
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @spin_lock_irqsave(i32* @irq_action_lock, i64 %103)
  %105 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %106 = call i32 @kfree(%struct.irqaction* %105)
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_irq, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load %struct.irqaction*, %struct.irqaction** %111, align 8
  %113 = icmp ne %struct.irqaction* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %94
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @__disable_irq(i32 %115)
  br label %117

117:                                              ; preds = %114, %94
  br label %118

118:                                              ; preds = %117, %88, %77, %66, %39
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* @irq_action_lock, i64 %119)
  br label %121

121:                                              ; preds = %118, %22, %12
  ret void
}

declare dso_local void @sun4d_free_irq(i32, i8*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @kfree(%struct.irqaction*) #1

declare dso_local i32 @__disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
