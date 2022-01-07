; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_free_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i8*, i32, %struct.irqaction*, i32 }
%struct.TYPE_2__ = type { %struct.irqaction* }

@irq_action_lock = common dso_local global i32 0, align 4
@irq_action = common dso_local global %struct.irqaction** null, align 8
@sbus_actions = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Trying to free free IRQ%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Trying to free free shared IRQ%d\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Trying to free shared IRQ%d with NULL device ID\0A\00", align 1
@SA_STATIC_ALLOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Attempt to free statically allocated IRQ%d (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4d_free_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca %struct.irqaction**, align 8
  %7 = alloca %struct.irqaction*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.irqaction* null, %struct.irqaction** %7, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @irq_action_lock, i64 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ult i32 %11, 15
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.irqaction**, %struct.irqaction*** @irq_action, align 8
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds %struct.irqaction*, %struct.irqaction** %15, i64 %16
  store %struct.irqaction** %17, %struct.irqaction*** %6, align 8
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbus_actions, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sub i32 %20, 32
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.irqaction** %24, %struct.irqaction*** %6, align 8
  br label %25

25:                                               ; preds = %18, %13
  %26 = load %struct.irqaction**, %struct.irqaction*** %6, align 8
  %27 = load %struct.irqaction*, %struct.irqaction** %26, align 8
  store %struct.irqaction* %27, %struct.irqaction** %5, align 8
  %28 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %29 = icmp ne %struct.irqaction* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %117

33:                                               ; preds = %25
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %49, %36
  %38 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %39 = icmp ne %struct.irqaction* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %42 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %53

47:                                               ; preds = %40
  %48 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  store %struct.irqaction* %48, %struct.irqaction** %7, align 8
  br label %49

49:                                               ; preds = %47
  %50 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %51 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %50, i32 0, i32 2
  %52 = load %struct.irqaction*, %struct.irqaction** %51, align 8
  store %struct.irqaction* %52, %struct.irqaction** %5, align 8
  br label %37

53:                                               ; preds = %46, %37
  %54 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %55 = icmp ne %struct.irqaction* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %117

59:                                               ; preds = %53
  br label %71

60:                                               ; preds = %33
  %61 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %62 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IRQF_SHARED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %117

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %73 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SA_STATIC_ALLOC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %81 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %82)
  br label %117

84:                                               ; preds = %71
  %85 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %86 = icmp ne %struct.irqaction* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %89 = icmp ne %struct.irqaction* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %92 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %91, i32 0, i32 2
  %93 = load %struct.irqaction*, %struct.irqaction** %92, align 8
  %94 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %95 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %94, i32 0, i32 2
  store %struct.irqaction* %93, %struct.irqaction** %95, align 8
  br label %101

96:                                               ; preds = %87, %84
  %97 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %98 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %97, i32 0, i32 2
  %99 = load %struct.irqaction*, %struct.irqaction** %98, align 8
  %100 = load %struct.irqaction**, %struct.irqaction*** %6, align 8
  store %struct.irqaction* %99, %struct.irqaction** %100, align 8
  br label %101

101:                                              ; preds = %96, %90
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* @irq_action_lock, i64 %102)
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @synchronize_irq(i32 %104)
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @spin_lock_irqsave(i32* @irq_action_lock, i64 %106)
  %108 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %109 = call i32 @kfree(%struct.irqaction* %108)
  %110 = load %struct.irqaction**, %struct.irqaction*** %6, align 8
  %111 = load %struct.irqaction*, %struct.irqaction** %110, align 8
  %112 = icmp ne %struct.irqaction* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @__disable_irq(i32 %114)
  br label %116

116:                                              ; preds = %113, %101
  br label %117

117:                                              ; preds = %116, %78, %67, %56, %30
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* @irq_action_lock, i64 %118)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

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
