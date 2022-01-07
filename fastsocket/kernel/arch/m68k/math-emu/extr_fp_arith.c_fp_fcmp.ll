; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fcmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.fp_ext* }
%struct.fp_ext = type { i32 }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fcmp \00", align 1
@FPDATA = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fcmp(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  store %struct.fp_ext* %0, %struct.fp_ext** %3, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %4, align 8
  %5 = load i32, i32* @PINSTR, align 4
  %6 = call i32 @dprint(i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FPDATA, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.fp_ext*, %struct.fp_ext** %8, align 8
  %10 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %9, i64 1
  %11 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %12 = bitcast %struct.fp_ext* %10 to i8*
  %13 = bitcast %struct.fp_ext* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %15 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %21 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FPDATA, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.fp_ext*, %struct.fp_ext** %23, align 8
  %25 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %24, i64 1
  %26 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %27 = call %struct.fp_ext* @fp_fadd(%struct.fp_ext* %25, %struct.fp_ext* %26)
  ret %struct.fp_ext* %27
}

declare dso_local i32 @dprint(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.fp_ext* @fp_fadd(%struct.fp_ext*, %struct.fp_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
