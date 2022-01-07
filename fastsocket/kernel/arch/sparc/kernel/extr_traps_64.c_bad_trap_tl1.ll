; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_bad_trap_tl1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_bad_trap_tl1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.tl1_traplog = type { i32 }

@DIE_TRAP_TL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bad trap tl1\00", align 1
@SIGTRAP = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad trap %lx at tl>0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad_trap_tl1(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i8], align 16
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @DIE_TRAP_TL1, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* @SIGTRAP, align 4
  %10 = call i64 @notify_die(i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %7, i32 0, i64 %8, i32 %9)
  %11 = load i64, i64* @NOTIFY_STOP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i64 1
  %17 = bitcast %struct.pt_regs* %16 to %struct.tl1_traplog*
  %18 = call i32 @dump_tl1_traplog(%struct.tl1_traplog* %17)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %23 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %24 = call i32 @die_if_kernel(i8* %22, %struct.pt_regs* %23)
  br label %25

25:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @notify_die(i32, i8*, %struct.pt_regs*, i32, i64, i32) #1

declare dso_local i32 @dump_tl1_traplog(%struct.tl1_traplog*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @die_if_kernel(i8*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
