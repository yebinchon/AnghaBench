; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_rmap_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_rmap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_rmap_desc = type { i32**, %struct.kvm_rmap_desc* }

@.str = private unnamed_addr constant [24 x i8] c"rmap_add: %p %llx 0->1\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"rmap_add: %p %llx 1->many\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"rmap_add: %p %llx many->many\0A\00", align 1
@RMAP_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32*, i32)* @rmap_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmap_add(%struct.kvm_vcpu* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_mmu_page*, align 8
  %9 = alloca %struct.kvm_rmap_desc*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_rmap_spte(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %4, align 4
  br label %167

19:                                               ; preds = %3
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @unalias_gfn(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @__pa(i32* %25)
  %27 = call %struct.kvm_mmu_page* @page_header(i32 %26)
  store %struct.kvm_mmu_page* %27, %struct.kvm_mmu_page** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %8, align 8
  %30 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %8, align 8
  %34 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = ptrtoint i32* %32 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = getelementptr inbounds i32, i32* %31, i64 %39
  store i32 %28, i32* %40, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %8, align 8
  %46 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64* @gfn_to_rmap(i32 %43, i32 %44, i32 %48)
  store i64* %49, i64** %10, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %19
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rmap_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %54, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = load i64*, i64** %10, align 8
  store i64 %59, i64* %60, align 8
  br label %165

61:                                               ; preds = %19
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %63, 1
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %61
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rmap_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %67, i32 %69)
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %72 = call i8* @mmu_alloc_rmap_desc(%struct.kvm_vcpu* %71)
  %73 = bitcast i8* %72 to %struct.kvm_rmap_desc*
  store %struct.kvm_rmap_desc* %73, %struct.kvm_rmap_desc** %9, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %78 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  store i32* %76, i32** %80, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %83 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  store i32* %81, i32** %85, align 8
  %86 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %87 = ptrtoint %struct.kvm_rmap_desc* %86 to i64
  %88 = or i64 %87, 1
  %89 = load i64*, i64** %10, align 8
  store i64 %88, i64* %89, align 8
  br label %164

90:                                               ; preds = %61
  %91 = load i32*, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rmap_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %91, i32 %93)
  %95 = load i64*, i64** %10, align 8
  %96 = load i64, i64* %95, align 8
  %97 = and i64 %96, -2
  %98 = inttoptr i64 %97 to %struct.kvm_rmap_desc*
  store %struct.kvm_rmap_desc* %98, %struct.kvm_rmap_desc** %9, align 8
  br label %99

99:                                               ; preds = %116, %90
  %100 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %101 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* @RMAP_EXT, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %102, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %111 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %110, i32 0, i32 1
  %112 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %111, align 8
  %113 = icmp ne %struct.kvm_rmap_desc* %112, null
  br label %114

114:                                              ; preds = %109, %99
  %115 = phi i1 [ false, %99 ], [ %113, %109 ]
  br i1 %115, label %116, label %123

116:                                              ; preds = %114
  %117 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %118 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %117, i32 0, i32 1
  %119 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %118, align 8
  store %struct.kvm_rmap_desc* %119, %struct.kvm_rmap_desc** %9, align 8
  %120 = load i32, i32* @RMAP_EXT, align 4
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %12, align 4
  br label %99

123:                                              ; preds = %114
  %124 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %125 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* @RMAP_EXT, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %126, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %123
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %135 = call i8* @mmu_alloc_rmap_desc(%struct.kvm_vcpu* %134)
  %136 = bitcast i8* %135 to %struct.kvm_rmap_desc*
  %137 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %138 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %137, i32 0, i32 1
  store %struct.kvm_rmap_desc* %136, %struct.kvm_rmap_desc** %138, align 8
  %139 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %140 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %139, i32 0, i32 1
  %141 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %140, align 8
  store %struct.kvm_rmap_desc* %141, %struct.kvm_rmap_desc** %9, align 8
  br label %142

142:                                              ; preds = %133, %123
  store i32 0, i32* %11, align 4
  br label %143

143:                                              ; preds = %153, %142
  %144 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %145 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %144, i32 0, i32 0
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %143

156:                                              ; preds = %143
  %157 = load i32*, i32** %6, align 8
  %158 = load %struct.kvm_rmap_desc*, %struct.kvm_rmap_desc** %9, align 8
  %159 = getelementptr inbounds %struct.kvm_rmap_desc, %struct.kvm_rmap_desc* %158, i32 0, i32 0
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  store i32* %157, i32** %163, align 8
  br label %164

164:                                              ; preds = %156, %66
  br label %165

165:                                              ; preds = %164, %53
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %165, %17
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @is_rmap_spte(i32) #1

declare dso_local i32 @unalias_gfn(i32, i32) #1

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i64* @gfn_to_rmap(i32, i32, i32) #1

declare dso_local i32 @rmap_printk(i8*, i32*, i32) #1

declare dso_local i8* @mmu_alloc_rmap_desc(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
