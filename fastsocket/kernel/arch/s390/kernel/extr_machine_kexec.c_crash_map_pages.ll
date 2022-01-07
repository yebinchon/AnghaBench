; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_machine_kexec.c_crash_map_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_machine_kexec.c_crash_map_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@crashk_res = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@KEXEC_CRASH_MEM_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @crash_map_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crash_map_pages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i64 @resource_size(%struct.TYPE_3__* @crashk_res)
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @crashk_res, i32 0, i32 0), align 8
  %6 = load i64, i64* @KEXEC_CRASH_MEM_ALIGN, align 8
  %7 = urem i64 %5, %6
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @KEXEC_CRASH_MEM_ALIGN, align 8
  %12 = urem i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ true, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @crashk_res, i32 0, i32 0), align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @vmem_add_mapping(i64 %21, i64 %22)
  br label %28

24:                                               ; preds = %14
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @crashk_res, i32 0, i32 0), align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @vmem_remove_mapping(i64 %25, i64 %26)
  br label %28

28:                                               ; preds = %24, %20
  ret void
}

declare dso_local i64 @resource_size(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmem_add_mapping(i64, i64) #1

declare dso_local i32 @vmem_remove_mapping(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
