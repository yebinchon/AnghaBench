; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_harvest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_harvest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { i32 }
%struct.spu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_state*, %struct.spu*)* @harvest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @harvest(%struct.spu_state* %0, %struct.spu* %1) #0 {
  %3 = alloca %struct.spu_state*, align 8
  %4 = alloca %struct.spu*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %3, align 8
  store %struct.spu* %1, %struct.spu** %4, align 8
  %5 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %6 = load %struct.spu*, %struct.spu** %4, align 8
  %7 = call i32 @disable_interrupts(%struct.spu_state* %5, %struct.spu* %6)
  %8 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %9 = load %struct.spu*, %struct.spu** %4, align 8
  %10 = call i32 @inhibit_user_access(%struct.spu_state* %8, %struct.spu* %9)
  %11 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %12 = load %struct.spu*, %struct.spu** %4, align 8
  %13 = call i32 @terminate_spu_app(%struct.spu_state* %11, %struct.spu* %12)
  %14 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %15 = load %struct.spu*, %struct.spu** %4, align 8
  %16 = call i32 @set_switch_pending(%struct.spu_state* %14, %struct.spu* %15)
  %17 = load %struct.spu*, %struct.spu** %4, align 8
  %18 = call i32 @stop_spu_isolate(%struct.spu* %17)
  %19 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %20 = load %struct.spu*, %struct.spu** %4, align 8
  %21 = call i32 @remove_other_spu_access(%struct.spu_state* %19, %struct.spu* %20)
  %22 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %23 = load %struct.spu*, %struct.spu** %4, align 8
  %24 = call i32 @suspend_mfc_and_halt_decr(%struct.spu_state* %22, %struct.spu* %23)
  %25 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %26 = load %struct.spu*, %struct.spu** %4, align 8
  %27 = call i32 @wait_suspend_mfc_complete(%struct.spu_state* %25, %struct.spu* %26)
  %28 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %29 = load %struct.spu*, %struct.spu** %4, align 8
  %30 = call i32 @suspend_spe(%struct.spu_state* %28, %struct.spu* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %34 = load %struct.spu*, %struct.spu** %4, align 8
  %35 = call i32 @clear_spu_status(%struct.spu_state* %33, %struct.spu* %34)
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %38 = load %struct.spu*, %struct.spu** %4, align 8
  %39 = call i32 @do_mfc_mssync(%struct.spu_state* %37, %struct.spu* %38)
  %40 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %41 = load %struct.spu*, %struct.spu** %4, align 8
  %42 = call i32 @issue_mfc_tlbie(%struct.spu_state* %40, %struct.spu* %41)
  %43 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %44 = load %struct.spu*, %struct.spu** %4, align 8
  %45 = call i32 @handle_pending_interrupts(%struct.spu_state* %43, %struct.spu* %44)
  %46 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %47 = load %struct.spu*, %struct.spu** %4, align 8
  %48 = call i32 @purge_mfc_queue(%struct.spu_state* %46, %struct.spu* %47)
  %49 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %50 = load %struct.spu*, %struct.spu** %4, align 8
  %51 = call i32 @wait_purge_complete(%struct.spu_state* %49, %struct.spu* %50)
  %52 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %53 = load %struct.spu*, %struct.spu** %4, align 8
  %54 = call i32 @reset_spu_privcntl(%struct.spu_state* %52, %struct.spu* %53)
  %55 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %56 = load %struct.spu*, %struct.spu** %4, align 8
  %57 = call i32 @reset_spu_lslr(%struct.spu_state* %55, %struct.spu* %56)
  %58 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %59 = load %struct.spu*, %struct.spu** %4, align 8
  %60 = call i32 @setup_mfc_sr1(%struct.spu_state* %58, %struct.spu* %59)
  %61 = load %struct.spu*, %struct.spu** %4, align 8
  %62 = call i32 @spu_invalidate_slbs(%struct.spu* %61)
  %63 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %64 = load %struct.spu*, %struct.spu** %4, align 8
  %65 = call i32 @reset_ch_part1(%struct.spu_state* %63, %struct.spu* %64)
  %66 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %67 = load %struct.spu*, %struct.spu** %4, align 8
  %68 = call i32 @reset_ch_part2(%struct.spu_state* %66, %struct.spu* %67)
  %69 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %70 = load %struct.spu*, %struct.spu** %4, align 8
  %71 = call i32 @enable_interrupts(%struct.spu_state* %69, %struct.spu* %70)
  %72 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %73 = load %struct.spu*, %struct.spu** %4, align 8
  %74 = call i32 @set_switch_active(%struct.spu_state* %72, %struct.spu* %73)
  %75 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %76 = load %struct.spu*, %struct.spu** %4, align 8
  %77 = call i32 @set_mfc_tclass_id(%struct.spu_state* %75, %struct.spu* %76)
  %78 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %79 = load %struct.spu*, %struct.spu** %4, align 8
  %80 = call i32 @resume_mfc_queue(%struct.spu_state* %78, %struct.spu* %79)
  ret void
}

declare dso_local i32 @disable_interrupts(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @inhibit_user_access(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @terminate_spu_app(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @set_switch_pending(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @stop_spu_isolate(%struct.spu*) #1

declare dso_local i32 @remove_other_spu_access(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @suspend_mfc_and_halt_decr(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @wait_suspend_mfc_complete(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @suspend_spe(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @clear_spu_status(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @do_mfc_mssync(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @issue_mfc_tlbie(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @handle_pending_interrupts(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @purge_mfc_queue(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @wait_purge_complete(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @reset_spu_privcntl(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @reset_spu_lslr(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @setup_mfc_sr1(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @spu_invalidate_slbs(%struct.spu*) #1

declare dso_local i32 @reset_ch_part1(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @reset_ch_part2(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @enable_interrupts(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @set_switch_active(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @set_mfc_tclass_id(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @resume_mfc_queue(%struct.spu_state*, %struct.spu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
