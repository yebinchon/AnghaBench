; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_32.c_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_32.c_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.irqaction* }
%struct.irqaction = type { i64, i8*, i8*, %struct.irqaction*, i64 }

@sparc_cpu_model = common dso_local global i64 0, align 8
@sun4d = common dso_local global i64 0, align 8
@NR_IRQS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@irq_action_lock = common dso_local global i32 0, align 4
@sparc_irq = common dso_local global %struct.TYPE_2__* null, align 8
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
define dso_local i32 @request_irq(i32 %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.irqaction*, align 8
  %13 = alloca %struct.irqaction**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i64, i64* @sparc_cpu_model, align 8
  %18 = load i64, i64* @sun4d, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @sun4d_request_irq(i32 %21, i64 %22, i64 %23, i8* %24, i8* %25)
  store i32 %26, i32* %6, align 4
  br label %151

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NR_IRQS, align 4
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %28, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ugt i32 %32, 14
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %16, align 4
  br label %149

37:                                               ; preds = %27
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %16, align 4
  br label %149

43:                                               ; preds = %37
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @spin_lock_irqsave(i32* @irq_action_lock, i64 %44)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_irq, align 8
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.irqaction** %50, %struct.irqaction*** %13, align 8
  %51 = load %struct.irqaction**, %struct.irqaction*** %13, align 8
  %52 = load %struct.irqaction*, %struct.irqaction** %51, align 8
  store %struct.irqaction* %52, %struct.irqaction** %12, align 8
  %53 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %54 = icmp ne %struct.irqaction* %53, null
  br i1 %54, label %55, label %96

55:                                               ; preds = %43
  %56 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %57 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IRQF_SHARED, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @IRQF_SHARED, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62, %55
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %16, align 4
  br label %146

70:                                               ; preds = %62
  %71 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %72 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IRQF_DISABLED, align 8
  %75 = and i64 %73, %74
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @IRQF_DISABLED, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %16, align 4
  br label %146

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %92, %85
  %87 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %88 = icmp ne %struct.irqaction* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %91 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %90, i32 0, i32 3
  store %struct.irqaction** %91, %struct.irqaction*** %13, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load %struct.irqaction**, %struct.irqaction*** %13, align 8
  %94 = load %struct.irqaction*, %struct.irqaction** %93, align 8
  store %struct.irqaction* %94, %struct.irqaction** %12, align 8
  br label %86

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %43
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @SA_STATIC_ALLOC, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load i64, i64* @static_irq_count, align 8
  %103 = load i64, i64* @MAX_STATIC_ALLOC, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.irqaction*, %struct.irqaction** @static_irqaction, align 8
  %107 = load i64, i64* @static_irq_count, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* @static_irq_count, align 8
  %109 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %106, i64 %107
  store %struct.irqaction* %109, %struct.irqaction** %12, align 8
  br label %114

110:                                              ; preds = %101
  %111 = load i32, i32* %7, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %111, i8* %112)
  br label %114

114:                                              ; preds = %110, %105
  br label %115

115:                                              ; preds = %114, %96
  %116 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %117 = icmp eq %struct.irqaction* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @GFP_ATOMIC, align 4
  %120 = call %struct.irqaction* @kmalloc(i32 40, i32 %119)
  store %struct.irqaction* %120, %struct.irqaction** %12, align 8
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %123 = icmp ne %struct.irqaction* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %16, align 4
  br label %146

127:                                              ; preds = %121
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %130 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %133 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %136 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %138 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %137, i32 0, i32 3
  store %struct.irqaction* null, %struct.irqaction** %138, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %141 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load %struct.irqaction*, %struct.irqaction** %12, align 8
  %143 = load %struct.irqaction**, %struct.irqaction*** %13, align 8
  store %struct.irqaction* %142, %struct.irqaction** %143, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @__enable_irq(i32 %144)
  store i32 0, i32* %16, align 4
  br label %146

146:                                              ; preds = %127, %124, %80, %67
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* @irq_action_lock, i64 %147)
  br label %149

149:                                              ; preds = %146, %40, %34
  %150 = load i32, i32* %16, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %20
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @sun4d_request_irq(i32, i64, i64, i8*, i8*) #1

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
