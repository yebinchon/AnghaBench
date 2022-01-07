; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_quiece_spu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_quiece_spu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { i32 }
%struct.spu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_state*, %struct.spu*)* @quiece_spu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quiece_spu(%struct.spu_state* %0, %struct.spu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spu_state*, align 8
  %5 = alloca %struct.spu*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %4, align 8
  store %struct.spu* %1, %struct.spu** %5, align 8
  %6 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %7 = load %struct.spu*, %struct.spu** %5, align 8
  %8 = call i64 @check_spu_isolate(%struct.spu_state* %6, %struct.spu* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 2, i32* %3, align 4
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %13 = load %struct.spu*, %struct.spu** %5, align 8
  %14 = call i32 @disable_interrupts(%struct.spu_state* %12, %struct.spu* %13)
  %15 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %16 = load %struct.spu*, %struct.spu** %5, align 8
  %17 = call i32 @set_watchdog_timer(%struct.spu_state* %15, %struct.spu* %16)
  %18 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %19 = load %struct.spu*, %struct.spu** %5, align 8
  %20 = call i32 @inhibit_user_access(%struct.spu_state* %18, %struct.spu* %19)
  %21 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %22 = load %struct.spu*, %struct.spu** %5, align 8
  %23 = call i64 @check_spu_isolate(%struct.spu_state* %21, %struct.spu* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  store i32 6, i32* %3, align 4
  br label %63

26:                                               ; preds = %11
  %27 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %28 = load %struct.spu*, %struct.spu** %5, align 8
  %29 = call i32 @set_switch_pending(%struct.spu_state* %27, %struct.spu* %28)
  %30 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %31 = load %struct.spu*, %struct.spu** %5, align 8
  %32 = call i32 @save_mfc_cntl(%struct.spu_state* %30, %struct.spu* %31)
  %33 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %34 = load %struct.spu*, %struct.spu** %5, align 8
  %35 = call i32 @save_spu_runcntl(%struct.spu_state* %33, %struct.spu* %34)
  %36 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %37 = load %struct.spu*, %struct.spu** %5, align 8
  %38 = call i32 @save_mfc_sr1(%struct.spu_state* %36, %struct.spu* %37)
  %39 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %40 = load %struct.spu*, %struct.spu** %5, align 8
  %41 = call i32 @save_spu_status(%struct.spu_state* %39, %struct.spu* %40)
  %42 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %43 = load %struct.spu*, %struct.spu** %5, align 8
  %44 = call i32 @save_mfc_stopped_status(%struct.spu_state* %42, %struct.spu* %43)
  %45 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %46 = load %struct.spu*, %struct.spu** %5, align 8
  %47 = call i32 @halt_mfc_decr(%struct.spu_state* %45, %struct.spu* %46)
  %48 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %49 = load %struct.spu*, %struct.spu** %5, align 8
  %50 = call i32 @save_timebase(%struct.spu_state* %48, %struct.spu* %49)
  %51 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %52 = load %struct.spu*, %struct.spu** %5, align 8
  %53 = call i32 @remove_other_spu_access(%struct.spu_state* %51, %struct.spu* %52)
  %54 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %55 = load %struct.spu*, %struct.spu** %5, align 8
  %56 = call i32 @do_mfc_mssync(%struct.spu_state* %54, %struct.spu* %55)
  %57 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %58 = load %struct.spu*, %struct.spu** %5, align 8
  %59 = call i32 @issue_mfc_tlbie(%struct.spu_state* %57, %struct.spu* %58)
  %60 = load %struct.spu_state*, %struct.spu_state** %4, align 8
  %61 = load %struct.spu*, %struct.spu** %5, align 8
  %62 = call i32 @handle_pending_interrupts(%struct.spu_state* %60, %struct.spu* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %26, %25, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @check_spu_isolate(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @disable_interrupts(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @set_watchdog_timer(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @inhibit_user_access(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @set_switch_pending(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @save_mfc_cntl(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @save_spu_runcntl(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @save_mfc_sr1(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @save_spu_status(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @save_mfc_stopped_status(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @halt_mfc_decr(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @save_timebase(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @remove_other_spu_access(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @do_mfc_mssync(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @issue_mfc_tlbie(%struct.spu_state*, %struct.spu*) #1

declare dso_local i32 @handle_pending_interrupts(%struct.spu_state*, %struct.spu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
