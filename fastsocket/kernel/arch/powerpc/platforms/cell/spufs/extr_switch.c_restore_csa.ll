; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_restore_csa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_restore_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { i32 }
%struct.spu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_state*, %struct.spu*)* @restore_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_csa(%struct.spu_state* %0, %struct.spu* %1) #0 {
  %3 = alloca %struct.spu_state*, align 8
  %4 = alloca %struct.spu*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %3, align 8
  store %struct.spu* %1, %struct.spu** %4, align 8
  %5 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %6 = load %struct.spu*, %struct.spu** %4, align 8
  %7 = call i32 @restore_spu_privcntl(%struct.spu_state* %5, %struct.spu* %6)
  %8 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %9 = load %struct.spu*, %struct.spu** %4, align 8
  %10 = call i32 @restore_status_part1(%struct.spu_state* %8, %struct.spu* %9)
  %11 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %12 = load %struct.spu*, %struct.spu** %4, align 8
  %13 = call i32 @restore_status_part2(%struct.spu_state* %11, %struct.spu* %12)
  %14 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %15 = load %struct.spu*, %struct.spu** %4, align 8
  %16 = call i32 @restore_ls_16kb(%struct.spu_state* %14, %struct.spu* %15)
  %17 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %18 = load %struct.spu*, %struct.spu** %4, align 8
  %19 = call i32 @wait_tag_complete(%struct.spu_state* %17, %struct.spu* %18)
  %20 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %21 = load %struct.spu*, %struct.spu** %4, align 8
  %22 = call i32 @suspend_mfc(%struct.spu_state* %20, %struct.spu* %21)
  %23 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %24 = load %struct.spu*, %struct.spu** %4, align 8
  %25 = call i32 @wait_suspend_mfc_complete(%struct.spu_state* %23, %struct.spu* %24)
  %26 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %27 = load %struct.spu*, %struct.spu** %4, align 8
  %28 = call i32 @issue_mfc_tlbie(%struct.spu_state* %26, %struct.spu* %27)
  %29 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %30 = load %struct.spu*, %struct.spu** %4, align 8
  %31 = call i32 @clear_interrupts(%struct.spu_state* %29, %struct.spu* %30)
  %32 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %33 = load %struct.spu*, %struct.spu** %4, align 8
  %34 = call i32 @restore_mfc_queues(%struct.spu_state* %32, %struct.spu* %33)
  %35 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %36 = load %struct.spu*, %struct.spu** %4, align 8
  %37 = call i32 @restore_ppu_querymask(%struct.spu_state* %35, %struct.spu* %36)
  %38 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %39 = load %struct.spu*, %struct.spu** %4, align 8
  %40 = call i32 @restore_ppu_querytype(%struct.spu_state* %38, %struct.spu* %39)
  %41 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %42 = load %struct.spu*, %struct.spu** %4, align 8
  %43 = call i32 @restore_mfc_csr_tsq(%struct.spu_state* %41, %struct.spu* %42)
  %44 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %45 = load %struct.spu*, %struct.spu** %4, align 8
  %46 = call i32 @restore_mfc_csr_cmd(%struct.spu_state* %44, %struct.spu* %45)
  %47 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %48 = load %struct.spu*, %struct.spu** %4, align 8
  %49 = call i32 @restore_mfc_csr_ato(%struct.spu_state* %47, %struct.spu* %48)
  %50 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %51 = load %struct.spu*, %struct.spu** %4, align 8
  %52 = call i32 @restore_mfc_tclass_id(%struct.spu_state* %50, %struct.spu* %51)
  %53 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %54 = load %struct.spu*, %struct.spu** %4, align 8
  %55 = call i32 @set_llr_event(%struct.spu_state* %53, %struct.spu* %54)
  %56 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %57 = load %struct.spu*, %struct.spu** %4, align 8
  %58 = call i32 @restore_decr_wrapped(%struct.spu_state* %56, %struct.spu* %57)
  %59 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %60 = load %struct.spu*, %struct.spu** %4, align 8
  %61 = call i32 @restore_ch_part1(%struct.spu_state* %59, %struct.spu* %60)
  %62 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %63 = load %struct.spu*, %struct.spu** %4, align 8
  %64 = call i32 @restore_ch_part2(%struct.spu_state* %62, %struct.spu* %63)
  %65 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %66 = load %struct.spu*, %struct.spu** %4, align 8
  %67 = call i32 @restore_spu_lslr(%struct.spu_state* %65, %struct.spu* %66)
  %68 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %69 = load %struct.spu*, %struct.spu** %4, align 8
  %70 = call i32 @restore_spu_cfg(%struct.spu_state* %68, %struct.spu* %69)
  %71 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %72 = load %struct.spu*, %struct.spu** %4, align 8
  %73 = call i32 @restore_pm_trace(%struct.spu_state* %71, %struct.spu* %72)
  %74 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %75 = load %struct.spu*, %struct.spu** %4, align 8
  %76 = call i32 @restore_spu_npc(%struct.spu_state* %74, %struct.spu* %75)
  %77 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %78 = load %struct.spu*, %struct.spu** %4, align 8
  %79 = call i32 @restore_spu_mb(%struct.spu_state* %77, %struct.spu* %78)
  %80 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %81 = load %struct.spu*, %struct.spu** %4, align 8
  %82 = call i32 @check_ppu_mb_stat(%struct.spu_state* %80, %struct.spu* %81)
  %83 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %84 = load %struct.spu*, %struct.spu** %4, align 8
  %85 = call i32 @check_ppuint_mb_stat(%struct.spu_state* %83, %struct.spu* %84)
  %86 = load %struct.spu*, %struct.spu** %4, align 8
  %87 = call i32 @spu_invalidate_slbs(%struct.spu* %86)
  %88 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %89 = load %struct.spu*, %struct.spu** %4, align 8
  %90 = call i32 @restore_mfc_sr1(%struct.spu_state* %88, %struct.spu* %89)
  %91 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %92 = load %struct.spu*, %struct.spu** %4, align 8
  %93 = call i32 @set_int_route(%struct.spu_state* %91, %struct.spu* %92)
  %94 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %95 = load %struct.spu*, %struct.spu** %4, align 8
  %96 = call i32 @restore_other_spu_access(%struct.spu_state* %94, %struct.spu* %95)
  %97 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %98 = load %struct.spu*, %struct.spu** %4, align 8
  %99 = call i32 @restore_spu_runcntl(%struct.spu_state* %97, %struct.spu* %98)
  %100 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %101 = load %struct.spu*, %struct.spu** %4, align 8
  %102 = call i32 @restore_mfc_cntl(%struct.spu_state* %100, %struct.spu* %101)
  %103 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %104 = load %struct.spu*, %struct.spu** %4, align 8
  %105 = call i32 @enable_user_access(%struct.spu_state* %103, %struct.spu* %104)
  %106 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %107 = load %struct.spu*, %struct.spu** %4, align 8
  %108 = call i32 @reset_switch_active(%struct.spu_state* %106, %struct.spu* %107)
  %109 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %110 = load %struct.spu*, %struct.spu** %4, align 8
  %111 = call i32 @reenable_interrupts(%struct.spu_state* %109, %struct.spu* %110)
  ret void
}

declare dso_local i32 @restore_spu_privcntl(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_status_part1(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_status_part2(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_ls_16kb(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @wait_tag_complete(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @suspend_mfc(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @wait_suspend_mfc_complete(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @issue_mfc_tlbie(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @clear_interrupts(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_mfc_queues(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_ppu_querymask(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_ppu_querytype(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_mfc_csr_tsq(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_mfc_csr_cmd(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_mfc_csr_ato(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_mfc_tclass_id(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @set_llr_event(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_decr_wrapped(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_ch_part1(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_ch_part2(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_spu_lslr(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_spu_cfg(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_pm_trace(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_spu_npc(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_spu_mb(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @check_ppu_mb_stat(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @check_ppuint_mb_stat(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @spu_invalidate_slbs(%struct.spu*) #1

declare dso_local i32 @restore_mfc_sr1(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @set_int_route(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_other_spu_access(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_spu_runcntl(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @restore_mfc_cntl(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @enable_user_access(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @reset_switch_active(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @reenable_interrupts(%struct.spu_state*, %struct.spu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
