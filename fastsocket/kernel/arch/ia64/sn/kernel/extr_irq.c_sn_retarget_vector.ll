; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_retarget_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_retarget_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_pcibus_provider = type { i32 (%struct.sn_irq_info.0*)* }
%struct.sn_irq_info.0 = type opaque
%struct.sn_irq_info = type { i32, i32, i64, i64, i32, i32, i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@sn_irq_info_lock = common dso_local global i32 0, align 4
@sn_irq_info_free = common dso_local global i32 0, align 4
@sn_pci_provider = common dso_local global %struct.sn_pcibus_provider** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sn_irq_info* @sn_retarget_vector(%struct.sn_irq_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sn_irq_info*, align 8
  %5 = alloca %struct.sn_irq_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sn_irq_info*, align 8
  %15 = alloca %struct.sn_pcibus_provider*, align 8
  store %struct.sn_irq_info* %0, %struct.sn_irq_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.sn_irq_info*, %struct.sn_irq_info** %5, align 8
  %17 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %4, align 8
  br label %128

22:                                               ; preds = %3
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @NASID_GET(i64 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @TIO_SWIN_WIDGETNUM(i64 %29)
  store i32 %30, i32* %11, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @SWIN_WIDGETNUM(i64 %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.sn_irq_info*, %struct.sn_irq_info** %5, align 8
  %36 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.sn_irq_info*, %struct.sn_irq_info** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @sn_intr_redirect(i32 %38, i32 %39, %struct.sn_irq_info* %40, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = load %struct.sn_irq_info*, %struct.sn_irq_info** %5, align 8
  store %struct.sn_irq_info* %47, %struct.sn_irq_info** %14, align 8
  br label %90

48:                                               ; preds = %34
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sn_irq_info* @kmalloc(i32 48, i32 %49)
  store %struct.sn_irq_info* %50, %struct.sn_irq_info** %14, align 8
  %51 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %52 = icmp eq %struct.sn_irq_info* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %4, align 8
  br label %128

54:                                               ; preds = %48
  %55 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %56 = load %struct.sn_irq_info*, %struct.sn_irq_info** %5, align 8
  %57 = call i32 @memcpy(%struct.sn_irq_info* %55, %struct.sn_irq_info* %56, i32 48)
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %61 = call i32 @sn_intr_free(i32 %58, i32 %59, %struct.sn_irq_info* %60)
  %62 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %63 = call i32 @unregister_intr_pda(%struct.sn_irq_info* %62)
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @sn_intr_alloc(i32 %64, i32 %65, %struct.sn_irq_info* %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %54
  %74 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %75 = call i32 @kfree(%struct.sn_irq_info* %74)
  store %struct.sn_irq_info* null, %struct.sn_irq_info** %4, align 8
  br label %128

76:                                               ; preds = %54
  %77 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %78 = call i32 @register_intr_pda(%struct.sn_irq_info* %77)
  %79 = call i32 @spin_lock(i32* @sn_irq_info_lock)
  %80 = load %struct.sn_irq_info*, %struct.sn_irq_info** %5, align 8
  %81 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %80, i32 0, i32 7
  %82 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %83 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %82, i32 0, i32 7
  %84 = call i32 @list_replace_rcu(i32* %81, i32* %83)
  %85 = call i32 @spin_unlock(i32* @sn_irq_info_lock)
  %86 = load %struct.sn_irq_info*, %struct.sn_irq_info** %5, align 8
  %87 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %86, i32 0, i32 6
  %88 = load i32, i32* @sn_irq_info_free, align 4
  %89 = call i32 @call_rcu(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %76, %46
  %91 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %92 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %95 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @nasid_slice_to_cpuid(i32 %93, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %100 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sn_pcibus_provider**, %struct.sn_pcibus_provider*** @sn_pci_provider, align 8
  %102 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %103 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %101, i64 %104
  %106 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %105, align 8
  store %struct.sn_pcibus_provider* %106, %struct.sn_pcibus_provider** %15, align 8
  %107 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %108 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %90
  %112 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %15, align 8
  %113 = icmp ne %struct.sn_pcibus_provider* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %15, align 8
  %116 = getelementptr inbounds %struct.sn_pcibus_provider, %struct.sn_pcibus_provider* %115, i32 0, i32 0
  %117 = load i32 (%struct.sn_irq_info.0*)*, i32 (%struct.sn_irq_info.0*)** %116, align 8
  %118 = icmp ne i32 (%struct.sn_irq_info.0*)* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.sn_pcibus_provider*, %struct.sn_pcibus_provider** %15, align 8
  %121 = getelementptr inbounds %struct.sn_pcibus_provider, %struct.sn_pcibus_provider* %120, i32 0, i32 0
  %122 = load i32 (%struct.sn_irq_info.0*)*, i32 (%struct.sn_irq_info.0*)** %121, align 8
  %123 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  %124 = bitcast %struct.sn_irq_info* %123 to %struct.sn_irq_info.0*
  %125 = call i32 %122(%struct.sn_irq_info.0* %124)
  br label %126

126:                                              ; preds = %119, %114, %111, %90
  %127 = load %struct.sn_irq_info*, %struct.sn_irq_info** %14, align 8
  store %struct.sn_irq_info* %127, %struct.sn_irq_info** %4, align 8
  br label %128

128:                                              ; preds = %126, %73, %53, %21
  %129 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  ret %struct.sn_irq_info* %129
}

declare dso_local i32 @NASID_GET(i64) #1

declare dso_local i32 @TIO_SWIN_WIDGETNUM(i64) #1

declare dso_local i32 @SWIN_WIDGETNUM(i64) #1

declare dso_local i32 @sn_intr_redirect(i32, i32, %struct.sn_irq_info*, i32, i32) #1

declare dso_local %struct.sn_irq_info* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.sn_irq_info*, %struct.sn_irq_info*, i32) #1

declare dso_local i32 @sn_intr_free(i32, i32, %struct.sn_irq_info*) #1

declare dso_local i32 @unregister_intr_pda(%struct.sn_irq_info*) #1

declare dso_local i32 @sn_intr_alloc(i32, i32, %struct.sn_irq_info*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sn_irq_info*) #1

declare dso_local i32 @register_intr_pda(%struct.sn_irq_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_replace_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @nasid_slice_to_cpuid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
