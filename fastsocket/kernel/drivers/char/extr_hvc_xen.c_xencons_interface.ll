; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_xen.c_xencons_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_xen.c_xencons_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xencons_interface = type { i32 }

@console_pfn = common dso_local global i64 0, align 8
@xen_start_info = common dso_local global %struct.TYPE_6__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xencons_interface* ()* @xencons_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xencons_interface* @xencons_interface() #0 {
  %1 = alloca %struct.xencons_interface*, align 8
  %2 = load i64, i64* @console_pfn, align 8
  %3 = icmp eq i64 %2, -1
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.xencons_interface* @mfn_to_virt(i32 %9)
  store %struct.xencons_interface* %10, %struct.xencons_interface** %1, align 8
  br label %16

11:                                               ; preds = %0
  %12 = load i64, i64* @console_pfn, align 8
  %13 = load i64, i64* @PAGE_SHIFT, align 8
  %14 = shl i64 %12, %13
  %15 = call %struct.xencons_interface* @__va(i64 %14)
  store %struct.xencons_interface* %15, %struct.xencons_interface** %1, align 8
  br label %16

16:                                               ; preds = %11, %4
  %17 = load %struct.xencons_interface*, %struct.xencons_interface** %1, align 8
  ret %struct.xencons_interface* %17
}

declare dso_local %struct.xencons_interface* @mfn_to_virt(i32) #1

declare dso_local %struct.xencons_interface* @__va(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
