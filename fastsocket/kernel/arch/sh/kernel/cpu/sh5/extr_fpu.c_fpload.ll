; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh5/extr_fpu.c_fpload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh5/extr_fpu.c_fpload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_hard_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_fpu_hard_struct*)* @fpload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpload(%struct.sh_fpu_hard_struct* %0) #0 {
  %2 = alloca %struct.sh_fpu_hard_struct*, align 8
  store %struct.sh_fpu_hard_struct* %0, %struct.sh_fpu_hard_struct** %2, align 8
  %3 = load %struct.sh_fpu_hard_struct*, %struct.sh_fpu_hard_struct** %2, align 8
  call void asm sideeffect "fld.p     $0, (0*8), fp0\0A\09fld.p     $0, (1*8), fp2\0A\09fld.p     $0, (2*8), fp4\0A\09fld.p     $0, (3*8), fp6\0A\09fld.p     $0, (4*8), fp8\0A\09fld.p     $0, (5*8), fp10\0A\09fld.p     $0, (6*8), fp12\0A\09fld.p     $0, (7*8), fp14\0A\09fld.p     $0, (8*8), fp16\0A\09fld.p     $0, (9*8), fp18\0A\09fld.p     $0, (10*8), fp20\0A\09fld.p     $0, (11*8), fp22\0A\09fld.p     $0, (12*8), fp24\0A\09fld.p     $0, (13*8), fp26\0A\09fld.p     $0, (14*8), fp28\0A\09fld.p     $0, (15*8), fp30\0A\09fld.p     $0, (16*8), fp32\0A\09fld.p     $0, (17*8), fp34\0A\09fld.p     $0, (18*8), fp36\0A\09fld.p     $0, (19*8), fp38\0A\09fld.p     $0, (20*8), fp40\0A\09fld.p     $0, (21*8), fp42\0A\09fld.p     $0, (22*8), fp44\0A\09fld.p     $0, (23*8), fp46\0A\09fld.p     $0, (24*8), fp48\0A\09fld.p     $0, (25*8), fp50\0A\09fld.p     $0, (26*8), fp52\0A\09fld.p     $0, (27*8), fp54\0A\09fld.p     $0, (28*8), fp56\0A\09fld.p     $0, (29*8), fp58\0A\09fld.p     $0, (30*8), fp60\0A\09fld.s     $0, (32*8), fr63\0A\09fputscr   fr63\0A\09fld.p     $0, (31*8), fp62\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(%struct.sh_fpu_hard_struct* %3) #1, !srcloc !2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 283, i32 310, i32 348, i32 386, i32 424, i32 462, i32 501, i32 540, i32 579, i32 618, i32 657, i32 697, i32 737, i32 777, i32 817, i32 857, i32 897, i32 937, i32 977, i32 1017, i32 1057, i32 1097, i32 1137, i32 1177, i32 1217, i32 1257, i32 1297, i32 1337, i32 1377, i32 1417, i32 1457, i32 1497, i32 1538, i32 1566, i32 1607}
