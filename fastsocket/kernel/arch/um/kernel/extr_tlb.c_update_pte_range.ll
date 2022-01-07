; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_tlb.c_update_pte_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_tlb.c_update_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_vm_change = type { i64 }

@STUB_START = common dso_local global i64 0, align 8
@STUB_END = common dso_local global i64 0, align 8
@UM_PROT_READ = common dso_local global i32 0, align 4
@UM_PROT_WRITE = common dso_local global i32 0, align 4
@UM_PROT_EXEC = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.host_vm_change*)* @update_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_pte_range(i32* %0, i64 %1, i64 %2, %struct.host_vm_change* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.host_vm_change*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.host_vm_change* %3, %struct.host_vm_change** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32* @pte_offset_kernel(i32* %15, i64 %16)
  store i32* %17, i32** %9, align 8
  br label %18

18:                                               ; preds = %134, %4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @STUB_START, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @STUB_END, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %121

27:                                               ; preds = %22, %18
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pte_read(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pte_write(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pte_exec(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pte_young(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %49

42:                                               ; preds = %27
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pte_dirty(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @UM_PROT_READ, align 4
  br label %55

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @UM_PROT_WRITE, align 4
  br label %62

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = or i32 %56, %63
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @UM_PROT_EXEC, align 4
  br label %70

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = or i32 %64, %71
  store i32 %72, i32* %13, align 4
  %73 = load %struct.host_vm_change*, %struct.host_vm_change** %8, align 8
  %74 = getelementptr inbounds %struct.host_vm_change, %struct.host_vm_change* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %70
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @pte_newpage(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %77, %70
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @pte_present(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i64, i64* %6, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pte_val(i32 %90)
  %92 = load i32, i32* @PAGE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i64, i64* @PAGE_SIZE, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.host_vm_change*, %struct.host_vm_change** %8, align 8
  %97 = call i32 @add_mmap(i64 %88, i32 %93, i64 %94, i32 %95, %struct.host_vm_change* %96)
  store i32 %97, i32* %14, align 4
  br label %103

98:                                               ; preds = %82
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @PAGE_SIZE, align 8
  %101 = load %struct.host_vm_change*, %struct.host_vm_change** %8, align 8
  %102 = call i32 @add_munmap(i64 %99, i64 %100, %struct.host_vm_change* %101)
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %98, %87
  br label %116

104:                                              ; preds = %77
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @pte_newprot(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @PAGE_SIZE, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.host_vm_change*, %struct.host_vm_change** %8, align 8
  %114 = call i32 @add_mprotect(i64 %110, i64 %111, i32 %112, %struct.host_vm_change* %113)
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %109, %104
  br label %116

116:                                              ; preds = %115, %103
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pte_mkuptodate(i32 %118)
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %26
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %9, align 8
  %124 = load i64, i64* @PAGE_SIZE, align 8
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %6, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  br label %134

134:                                              ; preds = %130, %121
  %135 = phi i1 [ false, %121 ], [ %133, %130 ]
  br i1 %135, label %18, label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %14, align 4
  ret i32 %137
}

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_read(i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i32 @pte_exec(i32) #1

declare dso_local i32 @pte_young(i32) #1

declare dso_local i32 @pte_dirty(i32) #1

declare dso_local i64 @pte_newpage(i32) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @add_mmap(i64, i32, i64, i32, %struct.host_vm_change*) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @add_munmap(i64, i64, %struct.host_vm_change*) #1

declare dso_local i64 @pte_newprot(i32) #1

declare dso_local i32 @add_mprotect(i64, i64, i32, %struct.host_vm_change*) #1

declare dso_local i32 @pte_mkuptodate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
