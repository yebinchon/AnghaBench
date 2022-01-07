; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_show_spu_loadavg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_sched.c_show_spu_loadavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.seq_file = type { i32 }

@spu_avenrun = common dso_local global i32* null, align 8
@FIXED_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%d.%02d %d.%02d %d.%02d %ld/%d %d\0A\00", align 1
@nr_spu_contexts = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_spu_loadavg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_spu_loadavg(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32*, i32** @spu_avenrun, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FIXED_1, align 4
  %12 = sdiv i32 %11, 200
  %13 = add nsw i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** @spu_avenrun, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FIXED_1, align 4
  %18 = sdiv i32 %17, 200
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** @spu_avenrun, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FIXED_1, align 4
  %24 = sdiv i32 %23, 200
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @LOAD_INT(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @LOAD_FRAC(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @LOAD_INT(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @LOAD_FRAC(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @LOAD_INT(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @LOAD_FRAC(i32 %37)
  %39 = call i32 (...) @count_active_contexts()
  %40 = call i32 @atomic_read(i32* @nr_spu_contexts)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %39, i32 %40, i32 %47)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LOAD_INT(i32) #1

declare dso_local i32 @LOAD_FRAC(i32) #1

declare dso_local i32 @count_active_contexts(...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
