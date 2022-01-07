; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }

@nx_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_kexec_prepare(%struct.kimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  %5 = load i64, i64* @nx_enabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.kimage*, %struct.kimage** %3, align 8
  %9 = getelementptr inbounds %struct.kimage, %struct.kimage* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @set_pages_x(i32 %10, i32 1)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.kimage*, %struct.kimage** %3, align 8
  %14 = call i32 @machine_kexec_alloc_page_tables(%struct.kimage* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load %struct.kimage*, %struct.kimage** %3, align 8
  %21 = call i32 @machine_kexec_prepare_page_tables(%struct.kimage* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @set_pages_x(i32, i32) #1

declare dso_local i32 @machine_kexec_alloc_page_tables(%struct.kimage*) #1

declare dso_local i32 @machine_kexec_prepare_page_tables(%struct.kimage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
