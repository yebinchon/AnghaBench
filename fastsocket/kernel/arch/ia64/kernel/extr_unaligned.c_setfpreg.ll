; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unaligned.c_setfpreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unaligned.c_setfpreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ia64_fpreg* }
%struct.ia64_fpreg = type { i32 }
%struct.pt_regs = type { i32 }
%struct.switch_stack = type { i32 }

@IA64_FIRST_ROTATING_FR = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"tmp_base=%lx offset=%d\0A\00", align 1
@IA64_PSR_MFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.ia64_fpreg*, %struct.pt_regs*)* @setfpreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfpreg(i64 %0, %struct.ia64_fpreg* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ia64_fpreg*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.switch_stack*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.ia64_fpreg* %1, %struct.ia64_fpreg** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %10 = bitcast %struct.pt_regs* %9 to %struct.switch_stack*
  %11 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %10, i64 -1
  store %struct.switch_stack* %11, %struct.switch_stack** %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @IA64_FIRST_ROTATING_FR, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %17 = call i32 @ia64_sync_fph(%struct.TYPE_5__* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %20, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @fph_index(%struct.pt_regs* %22, i64 %23)
  %25 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %21, i64 %24
  %26 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %27 = bitcast %struct.ia64_fpreg* %25 to i8*
  %28 = bitcast %struct.ia64_fpreg* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %58

29:                                               ; preds = %3
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @FR_IN_SW(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %35 = ptrtoint %struct.switch_stack* %34 to i64
  store i64 %35, i64* %8, align 8
  br label %39

36:                                               ; preds = %29
  %37 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %38 = ptrtoint %struct.pt_regs* %37 to i64
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @FR_OFFS(i64 %41)
  %43 = call i32 @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %42)
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @FR_OFFS(i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = inttoptr i64 %48 to %struct.ia64_fpreg*
  %50 = load %struct.ia64_fpreg*, %struct.ia64_fpreg** %5, align 8
  %51 = bitcast %struct.ia64_fpreg* %49 to i8*
  %52 = bitcast %struct.ia64_fpreg* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i32, i32* @IA64_PSR_MFL, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %39, %15
  ret void
}

declare dso_local i32 @ia64_sync_fph(%struct.TYPE_5__*) #1

declare dso_local i64 @fph_index(%struct.pt_regs*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @FR_IN_SW(i64) #1

declare dso_local i32 @DPRINT(i8*, i64, i64) #1

declare dso_local i64 @FR_OFFS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
