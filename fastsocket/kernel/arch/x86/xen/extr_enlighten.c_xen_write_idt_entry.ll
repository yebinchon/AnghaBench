; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_write_idt_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_write_idt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.trap_info = type { i64 }

@idt_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @xen_write_idt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_write_idt_entry(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca [2 x %struct.trap_info], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = ptrtoint i32* %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = call i32 (...) @preempt_disable()
  %19 = load i32, i32* @idt_desc, align 4
  %20 = call { i64, i64 } @__get_cpu_var(i32 %19)
  %21 = bitcast %struct.TYPE_2__* %10 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = extractvalue { i64, i64 } %20, 0
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = extractvalue { i64, i64 } %20, 1
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @idt_desc, align 4
  %30 = call { i64, i64 } @__get_cpu_var(i32 %29)
  %31 = bitcast %struct.TYPE_2__* %11 to { i64, i64 }*
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = extractvalue { i64, i64 } %30, 0
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = extractvalue { i64, i64 } %30, 1
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %28, %37
  %39 = add i64 %38, 1
  store i64 %39, i64* %9, align 8
  %40 = call i32 (...) @xen_mc_flush()
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @native_write_idt_entry(i32* %41, i32 %42, i32* %43)
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %3
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ule i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = getelementptr inbounds [2 x %struct.trap_info], [2 x %struct.trap_info]* %12, i64 0, i64 1
  %55 = getelementptr inbounds %struct.trap_info, %struct.trap_info* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds [2 x %struct.trap_info], [2 x %struct.trap_info]* %12, i64 0, i64 0
  %59 = call i64 @cvt_gate_to_trap(i32 %56, i32* %57, %struct.trap_info* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = getelementptr inbounds [2 x %struct.trap_info], [2 x %struct.trap_info]* %12, i64 0, i64 0
  %63 = call i64 @HYPERVISOR_set_trap_table(%struct.trap_info* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (...) @BUG()
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %48, %3
  %70 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local { i64, i64 } @__get_cpu_var(i32) #1

declare dso_local i32 @xen_mc_flush(...) #1

declare dso_local i32 @native_write_idt_entry(i32*, i32, i32*) #1

declare dso_local i64 @cvt_gate_to_trap(i32, i32*, %struct.trap_info*) #1

declare dso_local i64 @HYPERVISOR_set_trap_table(%struct.trap_info*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
