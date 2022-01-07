; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_remove_bpts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_remove_bpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpt = type { i32, i64, i32 }

@bpts = common dso_local global %struct.bpt* null, align 8
@NBPTS = common dso_local global i32 0, align 4
@BP_TRAP = common dso_local global i32 0, align 4
@BP_IABR = common dso_local global i32 0, align 4
@bpinstr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Couldn't remove breakpoint at %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_bpts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_bpts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bpt*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.bpt*, %struct.bpt** @bpts, align 8
  store %struct.bpt* %4, %struct.bpt** %2, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %50, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NBPTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %5
  %10 = load %struct.bpt*, %struct.bpt** %2, align 8
  %11 = getelementptr inbounds %struct.bpt, %struct.bpt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BP_TRAP, align 4
  %14 = load i32, i32* @BP_IABR, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @BP_TRAP, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %50

20:                                               ; preds = %9
  %21 = load %struct.bpt*, %struct.bpt** %2, align 8
  %22 = getelementptr inbounds %struct.bpt, %struct.bpt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mread(i64 %23, i32* %3, i32 4)
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @bpinstr, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.bpt*, %struct.bpt** %2, align 8
  %32 = getelementptr inbounds %struct.bpt, %struct.bpt* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bpt*, %struct.bpt** %2, align 8
  %35 = getelementptr inbounds %struct.bpt, %struct.bpt* %34, i32 0, i32 2
  %36 = call i32 @mwrite(i64 %33, i32* %35, i32 4)
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.bpt*, %struct.bpt** %2, align 8
  %40 = getelementptr inbounds %struct.bpt, %struct.bpt* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %49

43:                                               ; preds = %30, %26, %20
  %44 = load %struct.bpt*, %struct.bpt** %2, align 8
  %45 = getelementptr inbounds %struct.bpt, %struct.bpt* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @store_inst(i8* %47)
  br label %49

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  %53 = load %struct.bpt*, %struct.bpt** %2, align 8
  %54 = getelementptr inbounds %struct.bpt, %struct.bpt* %53, i32 1
  store %struct.bpt* %54, %struct.bpt** %2, align 8
  br label %5

55:                                               ; preds = %5
  ret void
}

declare dso_local i32 @mread(i64, i32*, i32) #1

declare dso_local i32 @mwrite(i64, i32*, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @store_inst(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
