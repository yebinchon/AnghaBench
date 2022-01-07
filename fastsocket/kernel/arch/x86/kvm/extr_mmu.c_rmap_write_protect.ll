; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_rmap_write_protect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_rmap_write_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@PT_PRESENT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rmap_write_protect: spte %p %llx\0A\00", align 1
@PT_WRITABLE_MASK = common dso_local global i32 0, align 4
@PT_DIRECTORY_LEVEL = common dso_local global i32 0, align 4
@KVM_NR_PAGE_SIZES = common dso_local global i32 0, align 4
@PT_PAGE_SIZE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"rmap_write_protect(large): spte %p %llx %lld\0A\00", align 1
@shadow_trap_nonpresent_pte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32)* @rmap_write_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmap_write_protect(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.kvm*, %struct.kvm** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @unalias_gfn(%struct.kvm* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %16 = call i64* @gfn_to_rmap(%struct.kvm* %13, i32 %14, i32 %15)
  store i64* %16, i64** %5, align 8
  %17 = load %struct.kvm*, %struct.kvm** %3, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = call i32* @rmap_next(%struct.kvm* %17, i64* %18, i32* null)
  store i32* %19, i32** %6, align 8
  br label %20

20:                                               ; preds = %53, %2
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PT_PRESENT_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rmap_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %37, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @is_writeble_pte(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %23
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PT_WRITABLE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @__set_spte(i32* %46, i32 %51)
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %45, %23
  %54 = load %struct.kvm*, %struct.kvm** %3, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32* @rmap_next(%struct.kvm* %54, i64* %55, i32* %56)
  store i32* %57, i32** %6, align 8
  br label %20

58:                                               ; preds = %20
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.kvm*, %struct.kvm** %3, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = call i32* @rmap_next(%struct.kvm* %62, i64* %63, i32* null)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @spte_to_pfn(i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @kvm_set_pfn_dirty(i32 %68)
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %142, %70
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %75 = load i32, i32* @KVM_NR_PAGE_SIZES, align 4
  %76 = add nsw i32 %74, %75
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %145

78:                                               ; preds = %72
  %79 = load %struct.kvm*, %struct.kvm** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i64* @gfn_to_rmap(%struct.kvm* %79, i32 %80, i32 %81)
  store i64* %82, i64** %5, align 8
  %83 = load %struct.kvm*, %struct.kvm** %3, align 8
  %84 = load i64*, i64** %5, align 8
  %85 = call i32* @rmap_next(%struct.kvm* %83, i64* %84, i32* null)
  store i32* %85, i32** %6, align 8
  br label %86

86:                                               ; preds = %136, %78
  %87 = load i32*, i32** %6, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %141

89:                                               ; preds = %86
  %90 = load i32*, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PT_PRESENT_MASK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUG_ON(i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PT_PAGE_SIZE_MASK, align 4
  %106 = load i32, i32* @PT_PRESENT_MASK, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = load i32, i32* @PT_PAGE_SIZE_MASK, align 4
  %110 = load i32, i32* @PT_PRESENT_MASK, align 4
  %111 = or i32 %109, %110
  %112 = icmp ne i32 %108, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @BUG_ON(i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @pgprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %115, i32 %117, i32 %118)
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @is_writeble_pte(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %89
  %125 = load %struct.kvm*, %struct.kvm** %3, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @rmap_remove(%struct.kvm* %125, i32* %126)
  %128 = load %struct.kvm*, %struct.kvm** %3, align 8
  %129 = getelementptr inbounds %struct.kvm, %struct.kvm* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %130, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* @shadow_trap_nonpresent_pte, align 4
  %135 = call i32 @__set_spte(i32* %133, i32 %134)
  store i32* null, i32** %6, align 8
  store i32 1, i32* %8, align 4
  br label %136

136:                                              ; preds = %124, %89
  %137 = load %struct.kvm*, %struct.kvm** %3, align 8
  %138 = load i64*, i64** %5, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32* @rmap_next(%struct.kvm* %137, i64* %138, i32* %139)
  store i32* %140, i32** %6, align 8
  br label %86

141:                                              ; preds = %86
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %72

145:                                              ; preds = %72
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local i32 @unalias_gfn(%struct.kvm*, i32) #1

declare dso_local i64* @gfn_to_rmap(%struct.kvm*, i32, i32) #1

declare dso_local i32* @rmap_next(%struct.kvm*, i64*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rmap_printk(i8*, i32*, i32) #1

declare dso_local i64 @is_writeble_pte(i32) #1

declare dso_local i32 @__set_spte(i32*, i32) #1

declare dso_local i32 @spte_to_pfn(i32) #1

declare dso_local i32 @kvm_set_pfn_dirty(i32) #1

declare dso_local i32 @pgprintk(i8*, i32*, i32, i32) #1

declare dso_local i32 @rmap_remove(%struct.kvm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
