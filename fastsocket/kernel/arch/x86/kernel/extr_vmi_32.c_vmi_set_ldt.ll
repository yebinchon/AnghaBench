; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_vmi_set_ldt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_vmi_set_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.desc_struct = type { i32 }

@DESC_LDT = common dso_local global i32 0, align 4
@GDT_ENTRY_LDT = common dso_local global i32 0, align 4
@vmi_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vmi_set_ldt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmi_set_ldt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.desc_struct, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = sub i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @DESC_LDT, align 4
  %16 = call i32 @pack_descriptor(%struct.desc_struct* %6, i64 %9, i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @get_cpu_gdt_table(i32 %17)
  %19 = load i32, i32* @GDT_ENTRY_LDT, align 4
  %20 = load i32, i32* @DESC_LDT, align 4
  %21 = call i32 @write_gdt_entry(i32 %18, i32 %19, %struct.desc_struct* %6, i32 %20)
  %22 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmi_ops, i32 0, i32 0), align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @GDT_ENTRY_LDT, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i64 [ %28, %25 ], [ 0, %29 ]
  %32 = trunc i64 %31 to i32
  %33 = call i32 %22(i32 %32)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pack_descriptor(%struct.desc_struct*, i64, i32, i32, i32) #1

declare dso_local i32 @write_gdt_entry(i32, i32, %struct.desc_struct*, i32) #1

declare dso_local i32 @get_cpu_gdt_table(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
