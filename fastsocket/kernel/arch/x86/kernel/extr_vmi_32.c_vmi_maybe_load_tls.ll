; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_vmi_maybe_load_tls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_vmi_maybe_load_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_struct = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.desc_struct*, i32, %struct.desc_struct*)* @vmi_maybe_load_tls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmi_maybe_load_tls(%struct.desc_struct* %0, i32 %1, %struct.desc_struct* %2) #0 {
  %4 = alloca %struct.desc_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.desc_struct*, align 8
  store %struct.desc_struct* %0, %struct.desc_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.desc_struct* %2, %struct.desc_struct** %6, align 8
  %7 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %7, i64 %9
  %11 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %14 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %18, i64 %20
  %22 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %25 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %17, %3
  %29 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %32 = call i32 @write_gdt_entry(%struct.desc_struct* %29, i32 %30, %struct.desc_struct* %31, i32 0)
  br label %33

33:                                               ; preds = %28, %17
  ret void
}

declare dso_local i32 @write_gdt_entry(%struct.desc_struct*, i32, %struct.desc_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
