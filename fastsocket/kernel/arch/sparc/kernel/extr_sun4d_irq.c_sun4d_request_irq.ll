; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.irqaction* }
%struct.irqaction = type { i64, i8*, %struct.irqaction*, i8*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@irq_action_lock = common dso_local global i32 0, align 4
@sbus_actions = common dso_local global %struct.TYPE_2__* null, align 8
@irq_action = common dso_local global %struct.irqaction** null, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Attempt to mix fast and slow interrupts on IRQ%d denied\0A\00", align 1
@SA_STATIC_ALLOC = common dso_local global i64 0, align 8
@static_irq_count = common dso_local global i64 0, align 8
@MAX_STATIC_ALLOC = common dso_local global i64 0, align 8
@static_irqaction = common dso_local global %struct.irqaction* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"Request for IRQ%d (%s) SA_STATIC_ALLOC failed using kmalloc\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4d_request_irq(i32 %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.irqaction*, align 8
  %12 = alloca %struct.irqaction*, align 8
  %13 = alloca %struct.irqaction**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store %struct.irqaction* null, %struct.irqaction** %12, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ugt i32 %16, 14
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %15, align 4
  br label %158

24:                                               ; preds = %18, %5
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  br label %158

30:                                               ; preds = %24
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @spin_lock_irqsave(i32* @irq_action_lock, i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp uge i32 %33, 32
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbus_actions, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub i32 %37, 32
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.irqaction** %41, %struct.irqaction*** %13, align 8
  br label %47

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.irqaction**, %struct.irqaction*** @irq_action, align 8
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds %struct.irqaction*, %struct.irqaction** %44, i64 %45
  store %struct.irqaction** %46, %struct.irqaction*** %13, align 8
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.irqaction**, %struct.irqaction*** %13, align 8
  %49 = load %struct.irqaction*, %struct.irqaction** %48, align 8
  store %struct.irqaction* %49, %struct.irqaction** %11, align 8
  %50 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %51 = icmp ne %struct.irqaction* %50, null
  br i1 %51, label %52, label %97

52:                                               ; preds = %47
  %53 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %54 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IRQF_SHARED, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %52
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @IRQF_SHARED, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  store %struct.irqaction* %65, %struct.irqaction** %12, align 8
  br label %66

66:                                               ; preds = %72, %64
  %67 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %68 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %67, i32 0, i32 2
  %69 = load %struct.irqaction*, %struct.irqaction** %68, align 8
  %70 = icmp ne %struct.irqaction* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %74 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %73, i32 0, i32 2
  %75 = load %struct.irqaction*, %struct.irqaction** %74, align 8
  store %struct.irqaction* %75, %struct.irqaction** %12, align 8
  br label %66

76:                                               ; preds = %66
  br label %80

77:                                               ; preds = %59, %52
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %155

80:                                               ; preds = %76
  %81 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %82 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IRQF_DISABLED, align 8
  %85 = and i64 %83, %84
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @IRQF_DISABLED, align 8
  %88 = and i64 %86, %87
  %89 = xor i64 %85, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %15, align 4
  br label %155

96:                                               ; preds = %80
  store %struct.irqaction* null, %struct.irqaction** %11, align 8
  br label %97

97:                                               ; preds = %96, %47
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @SA_STATIC_ALLOC, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = load i64, i64* @static_irq_count, align 8
  %104 = load i64, i64* @MAX_STATIC_ALLOC, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.irqaction*, %struct.irqaction** @static_irqaction, align 8
  %108 = load i64, i64* @static_irq_count, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* @static_irq_count, align 8
  %110 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %107, i64 %108
  store %struct.irqaction* %110, %struct.irqaction** %11, align 8
  br label %115

111:                                              ; preds = %102
  %112 = load i32, i32* %6, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %112, i8* %113)
  br label %115

115:                                              ; preds = %111, %106
  br label %116

116:                                              ; preds = %115, %97
  %117 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %118 = icmp eq %struct.irqaction* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @GFP_ATOMIC, align 4
  %121 = call %struct.irqaction* @kmalloc(i32 40, i32 %120)
  store %struct.irqaction* %121, %struct.irqaction** %11, align 8
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %124 = icmp ne %struct.irqaction* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %15, align 4
  br label %155

128:                                              ; preds = %122
  %129 = load i64, i64* %7, align 8
  %130 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %131 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %130, i32 0, i32 4
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %134 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %137 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %139 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %138, i32 0, i32 2
  store %struct.irqaction* null, %struct.irqaction** %139, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %142 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %144 = icmp ne %struct.irqaction* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %128
  %146 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %147 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %148 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %147, i32 0, i32 2
  store %struct.irqaction* %146, %struct.irqaction** %148, align 8
  br label %152

149:                                              ; preds = %128
  %150 = load %struct.irqaction*, %struct.irqaction** %11, align 8
  %151 = load %struct.irqaction**, %struct.irqaction*** %13, align 8
  store %struct.irqaction* %150, %struct.irqaction** %151, align 8
  br label %152

152:                                              ; preds = %149, %145
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @__enable_irq(i32 %153)
  store i32 0, i32* %15, align 4
  br label %155

155:                                              ; preds = %152, %125, %91, %77
  %156 = load i64, i64* %14, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* @irq_action_lock, i64 %156)
  br label %158

158:                                              ; preds = %155, %27, %21
  %159 = load i32, i32* %15, align 4
  ret i32 %159
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local %struct.irqaction* @kmalloc(i32, i32) #1

declare dso_local i32 @__enable_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
