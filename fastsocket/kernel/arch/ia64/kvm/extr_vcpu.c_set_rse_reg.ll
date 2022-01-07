; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_set_rse_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_set_rse_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pt_regs = type { i32, i32 }

@current_vcpu = common dso_local global i64 0, align 8
@VMM_RBS_OFFSET = common dso_local global i32 0, align 4
@_IA64_REG_AR_RSC = common dso_local global i32 0, align 4
@_IA64_REG_AR_BSPSTORE = common dso_local global i32 0, align 4
@_IA64_REG_AR_RNAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_rse_reg(%struct.kvm_pt_regs* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
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
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.kvm_pt_regs* %0, %struct.kvm_pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %23 = load i64, i64* @current_vcpu, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* @VMM_RBS_OFFSET, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %13, align 8
  %29 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 127
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %19, align 8
  %34 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 14
  %38 = and i32 %37, 15
  %39 = shl i32 %38, 3
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %20, align 8
  %41 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 18
  %45 = and i32 %44, 127
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, 32
  store i64 %48, i64* %22, align 8
  %49 = load i64, i64* %22, align 8
  %50 = load i64, i64* %20, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %4
  %53 = load i64, i64* %20, align 8
  %54 = load i64, i64* %21, align 8
  %55 = load i64, i64* %22, align 8
  %56 = call i64 @rotate_reg(i64 %53, i64 %54, i64 %55)
  store i64 %56, i64* %22, align 8
  br label %57

57:                                               ; preds = %52, %4
  %58 = load i32, i32* @_IA64_REG_AR_RSC, align 4
  %59 = call i64 @ia64_getreg(i32 %58)
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = and i64 %60, -1073676292
  store i64 %61, i64* %16, align 8
  %62 = load i32, i32* @_IA64_REG_AR_RSC, align 4
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @ia64_setreg(i32 %62, i64 %63)
  %65 = load i64*, i64** %13, align 8
  %66 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %5, align 8
  %67 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 19
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %65, i64 %70
  store i64* %71, i64** %9, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %19, align 8
  %74 = sub nsw i64 0, %73
  %75 = load i64, i64* %22, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i64* @kvm_rse_skip_regs(i64* %72, i64 %76)
  store i64* %77, i64** %11, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = call i64 @ia64_rse_slot_num(i64* %78)
  %80 = shl i64 1, %79
  store i64 %80, i64* %14, align 8
  %81 = load i64*, i64** %11, align 8
  %82 = call i64* @ia64_rse_rnat_addr(i64* %81)
  store i64* %82, i64** %12, align 8
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @local_irq_save(i64 %83)
  %85 = load i32, i32* @_IA64_REG_AR_BSPSTORE, align 4
  %86 = call i64 @ia64_getreg(i32 %85)
  %87 = inttoptr i64 %86 to i64*
  store i64* %87, i64** %10, align 8
  %88 = load i64*, i64** %11, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = icmp uge i64* %88, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %57
  %92 = call i32 (...) @ia64_flushrs()
  %93 = call i32 (...) @ia64_mf()
  %94 = load i64, i64* %7, align 8
  %95 = load i64*, i64** %11, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i32, i32* @_IA64_REG_AR_BSPSTORE, align 4
  %97 = call i64 @ia64_getreg(i32 %96)
  %98 = inttoptr i64 %97 to i64*
  store i64* %98, i64** %10, align 8
  %99 = load i32, i32* @_IA64_REG_AR_RNAT, align 4
  %100 = call i64 @ia64_getreg(i32 %99)
  store i64 %100, i64* %18, align 8
  %101 = load i64*, i64** %10, align 8
  %102 = load i64*, i64** %12, align 8
  %103 = icmp ult i64* %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %14, align 8
  %107 = xor i64 %106, -1
  %108 = and i64 %105, %107
  store i64 %108, i64* %18, align 8
  br label %116

109:                                              ; preds = %91
  %110 = load i64*, i64** %12, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %14, align 8
  %113 = xor i64 %112, -1
  %114 = and i64 %111, %113
  %115 = load i64*, i64** %12, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %109, %104
  %117 = call i32 (...) @ia64_mf()
  %118 = call i32 (...) @ia64_loadrs()
  %119 = load i32, i32* @_IA64_REG_AR_RNAT, align 4
  %120 = load i64, i64* %18, align 8
  %121 = call i32 @ia64_setreg(i32 %119, i64 %120)
  br label %150

122:                                              ; preds = %57
  %123 = load i32, i32* @_IA64_REG_AR_RNAT, align 4
  %124 = call i64 @ia64_getreg(i32 %123)
  store i64 %124, i64* %18, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load i64*, i64** %11, align 8
  store i64 %125, i64* %126, align 8
  %127 = load i64*, i64** %10, align 8
  %128 = load i64*, i64** %12, align 8
  %129 = icmp ult i64* %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load i64, i64* %18, align 8
  %132 = load i64, i64* %14, align 8
  %133 = xor i64 %132, -1
  %134 = and i64 %131, %133
  store i64 %134, i64* %18, align 8
  br label %142

135:                                              ; preds = %122
  %136 = load i64*, i64** %12, align 8
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %14, align 8
  %139 = xor i64 %138, -1
  %140 = and i64 %137, %139
  %141 = load i64*, i64** %12, align 8
  store i64 %140, i64* %141, align 8
  br label %142

142:                                              ; preds = %135, %130
  %143 = load i32, i32* @_IA64_REG_AR_BSPSTORE, align 4
  %144 = load i64*, i64** %10, align 8
  %145 = ptrtoint i64* %144 to i64
  %146 = call i32 @ia64_setreg(i32 %143, i64 %145)
  %147 = load i32, i32* @_IA64_REG_AR_RNAT, align 4
  %148 = load i64, i64* %18, align 8
  %149 = call i32 @ia64_setreg(i32 %147, i64 %148)
  br label %150

150:                                              ; preds = %142, %116
  %151 = load i64, i64* %17, align 8
  %152 = call i32 @local_irq_restore(i64 %151)
  %153 = load i32, i32* @_IA64_REG_AR_RSC, align 4
  %154 = load i64, i64* %15, align 8
  %155 = call i32 @ia64_setreg(i32 %153, i64 %154)
  ret void
}

declare dso_local i64 @rotate_reg(i64, i64, i64) #1

declare dso_local i64 @ia64_getreg(i32) #1

declare dso_local i32 @ia64_setreg(i32, i64) #1

declare dso_local i64* @kvm_rse_skip_regs(i64*, i64) #1

declare dso_local i64 @ia64_rse_slot_num(i64*) #1

declare dso_local i64* @ia64_rse_rnat_addr(i64*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ia64_flushrs(...) #1

declare dso_local i32 @ia64_mf(...) #1

declare dso_local i32 @ia64_loadrs(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
