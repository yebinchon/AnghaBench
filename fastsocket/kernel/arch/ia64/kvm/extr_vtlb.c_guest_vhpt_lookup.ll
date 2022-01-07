; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_guest_vhpt_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_guest_vhpt_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thash_data = type { i32, i32 }

@current_vcpu = common dso_local global i32 0, align 4
@D_TLB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @guest_vhpt_lookup(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thash_data*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @current_vcpu, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @D_TLB, align 4
  %10 = call %struct.thash_data* @__vtr_lookup(i32 %7, i32 %8, i32 %9)
  store %struct.thash_data* %10, %struct.thash_data** %6, align 8
  %11 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %12 = icmp ne %struct.thash_data* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @current_vcpu, align 4
  %15 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %16 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %19 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @D_TLB, align 4
  %23 = call i32 @thash_vhpt_insert(i32 %14, i32 %17, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %13, %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 asm sideeffect "rsm psr.ic$|psr.i;;srlz.d;;ld8.s r9=[$1];;tnat.nz p6,p7=r9;;(p6) mov $0=1;(p6) mov r9=r0;(p7) extr.u r9=r9,0,53;;(p7) mov $0=r0;(p7) st8 [$2]=r9;;ssm psr.ic;;srlz.d;;ssm psr.i;;srlz.d;;", "=r,r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %25, i32* %26) #2, !srcloc !2
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.thash_data* @__vtr_lookup(i32, i32, i32) #1

declare dso_local i32 @thash_vhpt_insert(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 595}
