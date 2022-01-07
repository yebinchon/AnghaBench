; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_pv_mmu_read_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_pv_mmu_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pv_mmu_op_buffer = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kvm_pv_mmu_op_buffer*, i32)* @pv_mmu_read_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pv_mmu_read_buffer(%struct.kvm_pv_mmu_op_buffer* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kvm_pv_mmu_op_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.kvm_pv_mmu_op_buffer* %0, %struct.kvm_pv_mmu_op_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_pv_mmu_op_buffer*, %struct.kvm_pv_mmu_op_buffer** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @pv_mmu_peek_buffer(%struct.kvm_pv_mmu_op_buffer* %7, i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %3, align 8
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.kvm_pv_mmu_op_buffer*, %struct.kvm_pv_mmu_op_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_pv_mmu_op_buffer, %struct.kvm_pv_mmu_op_buffer* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.kvm_pv_mmu_op_buffer*, %struct.kvm_pv_mmu_op_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_pv_mmu_op_buffer, %struct.kvm_pv_mmu_op_buffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.kvm_pv_mmu_op_buffer*, %struct.kvm_pv_mmu_op_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_pv_mmu_op_buffer, %struct.kvm_pv_mmu_op_buffer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %14, %12
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i8* @pv_mmu_peek_buffer(%struct.kvm_pv_mmu_op_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
