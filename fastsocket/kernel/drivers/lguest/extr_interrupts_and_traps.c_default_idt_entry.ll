; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_default_idt_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_default_idt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_struct = type { i32, i32 }

@LGUEST_TRAP_ENTRY = common dso_local global i32 0, align 4
@GUEST_PL = common dso_local global i32 0, align 4
@LGUEST_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.desc_struct*, i32, i64, %struct.desc_struct*)* @default_idt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_idt_entry(%struct.desc_struct* %0, i32 %1, i64 %2, %struct.desc_struct* %3) #0 {
  %5 = alloca %struct.desc_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.desc_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.desc_struct* %0, %struct.desc_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.desc_struct* %3, %struct.desc_struct** %8, align 8
  store i32 36352, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @LGUEST_TRAP_ENTRY, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* @GUEST_PL, align 4
  %15 = shl i32 %14, 13
  %16 = load i32, i32* %9, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %9, align 4
  br label %29

18:                                               ; preds = %4
  %19 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %20 = icmp ne %struct.desc_struct* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %23 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 24576
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %21, %18
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* @LGUEST_CS, align 4
  %31 = shl i32 %30, 16
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, 65535
  %35 = or i64 %32, %34
  %36 = trunc i64 %35 to i32
  %37 = load %struct.desc_struct*, %struct.desc_struct** %5, align 8
  %38 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, 4294901760
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = or i64 %40, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.desc_struct*, %struct.desc_struct** %5, align 8
  %46 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
