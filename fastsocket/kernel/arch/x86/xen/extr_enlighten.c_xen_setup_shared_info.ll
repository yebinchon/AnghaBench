; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_setup_shared_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_setup_shared_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.shared_info = type { i32 }

@XENFEAT_auto_translated_physmap = common dso_local global i32 0, align 4
@FIX_PARAVIRT_BOOTMAP = common dso_local global i32 0, align 4
@xen_start_info = common dso_local global %struct.TYPE_2__* null, align 8
@HYPERVISOR_shared_info = common dso_local global %struct.shared_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_setup_shared_info() #0 {
  %1 = load i32, i32* @XENFEAT_auto_translated_physmap, align 4
  %2 = call i32 @xen_feature(i32 %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @FIX_PARAVIRT_BOOTMAP, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_start_info, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @set_fixmap(i32 %5, i32 %8)
  %10 = load i32, i32* @FIX_PARAVIRT_BOOTMAP, align 4
  %11 = call i64 @fix_to_virt(i32 %10)
  %12 = inttoptr i64 %11 to %struct.shared_info*
  store %struct.shared_info* %12, %struct.shared_info** @HYPERVISOR_shared_info, align 8
  br label %19

13:                                               ; preds = %0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_start_info, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @__va(i32 %16)
  %18 = inttoptr i64 %17 to %struct.shared_info*
  store %struct.shared_info* %18, %struct.shared_info** @HYPERVISOR_shared_info, align 8
  br label %19

19:                                               ; preds = %13, %4
  %20 = call i32 (...) @xen_setup_vcpu_info_placement()
  %21 = call i32 (...) @xen_setup_mfn_list_list()
  ret void
}

declare dso_local i32 @xen_feature(i32) #1

declare dso_local i32 @set_fixmap(i32, i32) #1

declare dso_local i64 @fix_to_virt(i32) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @xen_setup_vcpu_info_placement(...) #1

declare dso_local i32 @xen_setup_mfn_list_list(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
