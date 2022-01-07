; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_prepare_memory_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_prepare_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32, i64, i64, i32 }
%struct.kvm_userspace_memory_region = type { i32 }

@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@KVM_MEMORY_SLOTS = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_prepare_memory_region(%struct.kvm* %0, %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot* byval(%struct.kvm_memory_slot) align 8 %2, %struct.kvm_userspace_memory_region* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca %struct.kvm_userspace_memory_region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %8, align 8
  store %struct.kvm_userspace_memory_region* %3, %struct.kvm_userspace_memory_region** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %15 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @MAP_PRIVATE, align 4
  %18 = load i32, i32* @MAP_ANONYMOUS, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %21 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KVM_MEMORY_SLOTS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @MAP_SHARED, align 4
  %27 = load i32, i32* @MAP_ANONYMOUS, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %25, %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %71, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %2, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @down_write(i32* %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* @PROT_READ, align 4
  %49 = load i32, i32* @PROT_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @do_mmap(i32* null, i32 0, i32 %47, i32 %50, i32 %51, i32 0)
  store i64 %52, i64* %13, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @up_write(i32* %56)
  %58 = load i64, i64* %13, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %39
  %63 = load i64, i64* %13, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %6, align 4
  br label %72

66:                                               ; preds = %39
  %67 = load i64, i64* %13, align 8
  %68 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %69 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %35, %32
  br label %71

71:                                               ; preds = %70, %29
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %62
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @do_mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
