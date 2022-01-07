; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_get_rse_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_get_rse_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pt_regs = type { i32, i32 }

@current_vcpu = common dso_local global i64 0, align 8
@VMM_RBS_OFFSET = common dso_local global i32 0, align 4
@_IA64_REG_AR_RSC = common dso_local global i32 0, align 4
@_IA64_REG_AR_BSPSTORE = common dso_local global i32 0, align 4
@_IA64_REG_AR_RNAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pt_regs*, i64, i64*, i32*)* @get_rse_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rse_reg(%struct.kvm_pt_regs* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.kvm_pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.kvm_pt_regs* %0, %struct.kvm_pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i64, i64* @current_vcpu, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* @VMM_RBS_OFFSET, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %22, i64 %24
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %13, align 8
  %27 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 127
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %17, align 8
  %32 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 14
  %36 = and i32 %35, 15
  %37 = shl i32 %36, 3
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %18, align 8
  %39 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 18
  %43 = and i32 %42, 127
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %19, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 %45, 32
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i64, i64* %18, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %4
  %51 = load i64, i64* %18, align 8
  %52 = load i64, i64* %19, align 8
  %53 = load i64, i64* %20, align 8
  %54 = call i64 @rotate_reg(i64 %51, i64 %52, i64 %53)
  store i64 %54, i64* %20, align 8
  br label %55

55:                                               ; preds = %50, %4
  %56 = load i32, i32* @_IA64_REG_AR_RSC, align 4
  %57 = call i64 @ia64_getreg(i32 %56)
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = and i64 %58, -4
  store i64 %59, i64* %16, align 8
  %60 = load i32, i32* @_IA64_REG_AR_RSC, align 4
  %61 = load i64, i64* %16, align 8
  %62 = call i32 @ia64_setreg(i32 %60, i64 %61)
  %63 = load i32, i32* @_IA64_REG_AR_BSPSTORE, align 4
  %64 = call i64 @ia64_getreg(i32 %63)
  %65 = inttoptr i64 %64 to i64*
  store i64* %65, i64** %12, align 8
  %66 = load i64*, i64** %13, align 8
  %67 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %5, align 8
  %68 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 19
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %66, i64 %71
  store i64* %72, i64** %9, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = load i64, i64* %17, align 8
  %75 = sub nsw i64 0, %74
  %76 = load i64, i64* %20, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i64* @kvm_rse_skip_regs(i64* %73, i64 %77)
  store i64* %78, i64** %10, align 8
  %79 = load i64*, i64** %10, align 8
  %80 = call i64 @ia64_rse_slot_num(i64* %79)
  %81 = shl i64 1, %80
  store i64 %81, i64* %14, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = call i64* @ia64_rse_rnat_addr(i64* %82)
  store i64* %83, i64** %11, align 8
  %84 = load i64*, i64** %10, align 8
  %85 = load i64*, i64** %12, align 8
  %86 = icmp uge i64* %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %55
  %88 = call i32 (...) @ia64_flushrs()
  %89 = call i32 (...) @ia64_mf()
  %90 = load i32, i32* @_IA64_REG_AR_BSPSTORE, align 4
  %91 = call i64 @ia64_getreg(i32 %90)
  %92 = inttoptr i64 %91 to i64*
  store i64* %92, i64** %12, align 8
  br label %93

93:                                               ; preds = %87, %55
  %94 = load i64*, i64** %10, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %7, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %127

99:                                               ; preds = %93
  %100 = load i64*, i64** %12, align 8
  %101 = load i64*, i64** %11, align 8
  %102 = icmp ult i64* %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* @_IA64_REG_AR_RNAT, align 4
  %105 = call i64 @ia64_getreg(i32 %104)
  %106 = load i64, i64* %14, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  br label %123

113:                                              ; preds = %99
  %114 = load i64*, i64** %11, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = load i32*, i32** %8, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %113, %103
  %124 = load i32, i32* @_IA64_REG_AR_RSC, align 4
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @ia64_setreg(i32 %124, i64 %125)
  br label %127

127:                                              ; preds = %123, %93
  ret void
}

declare dso_local i64 @rotate_reg(i64, i64, i64) #1

declare dso_local i64 @ia64_getreg(i32) #1

declare dso_local i32 @ia64_setreg(i32, i64) #1

declare dso_local i64* @kvm_rse_skip_regs(i64*, i64) #1

declare dso_local i64 @ia64_rse_slot_num(i64*) #1

declare dso_local i64* @ia64_rse_rnat_addr(i64*) #1

declare dso_local i32 @ia64_flushrs(...) #1

declare dso_local i32 @ia64_mf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
