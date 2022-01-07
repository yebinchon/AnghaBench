; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smp-cmp.c_cmp_init_secondary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smp-cmp.c_cmp_init_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i8*, i8* }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 8
@ST0_IM = common dso_local global i32 0, align 4
@STATUSF_IP3 = common dso_local global i32 0, align 4
@STATUSF_IP4 = common dso_local global i32 0, align 4
@STATUSF_IP6 = common dso_local global i32 0, align 4
@STATUSF_IP7 = common dso_local global i32 0, align 4
@TCBIND_CURTC = common dso_local global i8* null, align 8
@TCBIND_CURTC_SHIFT = common dso_local global i8* null, align 8
@TCBIND_CURVPE = common dso_local global i8* null, align 8
@TCBIND_CURVPE_SHIFT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cmp_init_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmp_init_secondary() #0 {
  %1 = alloca %struct.cpuinfo_mips*, align 8
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %1, align 8
  %2 = load i32, i32* @ST0_IM, align 4
  %3 = load i32, i32* @STATUSF_IP3, align 4
  %4 = load i32, i32* @STATUSF_IP4, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @STATUSF_IP6, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @STATUSF_IP7, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @change_c0_status(i32 %2, i32 %9)
  %11 = call i32 (...) @read_c0_ebase()
  %12 = ashr i32 %11, 1
  %13 = and i32 %12, 255
  %14 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  ret void
}

declare dso_local i32 @change_c0_status(i32, i32) #1

declare dso_local i32 @read_c0_ebase(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
