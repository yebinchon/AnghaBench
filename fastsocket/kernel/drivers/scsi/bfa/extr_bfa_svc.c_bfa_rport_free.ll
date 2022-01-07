; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { i32, i32 }
%struct.bfa_rport_mod_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_rport_s*)* @bfa_rport_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_rport_free(%struct.bfa_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_rport_s*, align 8
  %3 = alloca %struct.bfa_rport_mod_s*, align 8
  store %struct.bfa_rport_s* %0, %struct.bfa_rport_s** %2, align 8
  %4 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.bfa_rport_mod_s* @BFA_RPORT_MOD(i32 %6)
  store %struct.bfa_rport_mod_s* %7, %struct.bfa_rport_mod_s** %3, align 8
  %8 = load %struct.bfa_rport_mod_s*, %struct.bfa_rport_mod_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_rport_mod_s, %struct.bfa_rport_mod_s* %8, i32 0, i32 1
  %10 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %2, align 8
  %11 = call i32 @bfa_q_is_on_q(i32* %9, %struct.bfa_rport_s* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %19, i32 0, i32 0
  %21 = load %struct.bfa_rport_mod_s*, %struct.bfa_rport_mod_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_rport_mod_s, %struct.bfa_rport_mod_s* %21, i32 0, i32 0
  %23 = call i32 @list_add_tail(i32* %20, i32* %22)
  ret void
}

declare dso_local %struct.bfa_rport_mod_s* @BFA_RPORT_MOD(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_q_is_on_q(i32*, %struct.bfa_rport_s*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
