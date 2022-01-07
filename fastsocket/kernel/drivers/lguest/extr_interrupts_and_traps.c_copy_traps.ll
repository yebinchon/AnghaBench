; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_copy_traps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_copy_traps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.desc_struct* }
%struct.desc_struct = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_traps(%struct.lg_cpu* %0, %struct.desc_struct* %1, i64* %2) #0 {
  %4 = alloca %struct.lg_cpu*, align 8
  %5 = alloca %struct.desc_struct*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.desc_struct*, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %4, align 8
  store %struct.desc_struct* %1, %struct.desc_struct** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %60, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %12 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.desc_struct*, %struct.desc_struct** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.desc_struct* %14)
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %9
  %18 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %19 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.desc_struct*, %struct.desc_struct** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %21, i64 %23
  store %struct.desc_struct* %24, %struct.desc_struct** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @direct_trap(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %60

29:                                               ; preds = %17
  %30 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %31 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %34 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @idt_type(i32 %32, i32 %35)
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.desc_struct*, %struct.desc_struct** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %39, i64 %41
  %43 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %44 = bitcast %struct.desc_struct* %42 to i8*
  %45 = bitcast %struct.desc_struct* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 8, i1 false)
  br label %59

46:                                               ; preds = %29
  %47 = load %struct.desc_struct*, %struct.desc_struct** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %47, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = load i64*, i64** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %58 = call i32 @default_idt_entry(%struct.desc_struct* %50, i32 %51, i64 %56, %struct.desc_struct* %57)
  br label %59

59:                                               ; preds = %46, %38
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %9

63:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.desc_struct*) #1

declare dso_local i32 @direct_trap(i32) #1

declare dso_local i32 @idt_type(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @default_idt_entry(%struct.desc_struct*, i32, i64, %struct.desc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
