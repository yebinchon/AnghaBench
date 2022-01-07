; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4m_smp.c_smp4m_cross_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4m_smp.c_smp4m_cross_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32*, i32*, i64, i32 }

@SUN4M_NCPUS = common dso_local global i32 0, align 4
@cross_call_lock = common dso_local global i32 0, align 4
@ccall_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cpu_online_map = common dso_local global i32 0, align 4
@IRQ_CROSS_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i64, i64, i64)* @smp4m_cross_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp4m_cross_call(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32, i32* @SUN4M_NCPUS, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %14, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @cross_call_lock, i64 %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 7), align 8
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 0), align 8
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 1), align 8
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 2), align 8
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 6), align 8
  %25 = call i32 (...) @smp_processor_id()
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @cpu_clear(i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @cpu_online_map, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @cpus_and(i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %63, %6
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @cpu_isset(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 4), align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 0, i32* %45, align 4
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 5), align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @IRQ_CROSS_CALL, align 4
  %52 = call i32 @set_cpu_int(i32 %50, i32 %51)
  br label %62

53:                                               ; preds = %36
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 4), align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 1, i32* %57, align 4
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 5), align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %32

66:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %85, %66
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @cpu_isset(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %85

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %82, %73
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 4), align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 (...) @barrier()
  br label %74

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %67, label %90

90:                                               ; preds = %85
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i64 @cpu_isset(i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %109

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %106, %97
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccall_info, i32 0, i32 5), align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = call i32 (...) @barrier()
  br label %98

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %96
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %91, label %114

114:                                              ; preds = %109
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* @cross_call_lock, i64 %115)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpus_and(i32, i32, i32) #1

declare dso_local i64 @cpu_isset(i32, i32) #1

declare dso_local i32 @set_cpu_int(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
