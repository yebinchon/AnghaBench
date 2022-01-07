; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_kgdb.c_gdb_regs_to_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32* }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@ST0_CU1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_regs_to_pt_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = bitcast i64* %7 to i32*
  store i32* %8, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* %13, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %15, i32* %21, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %26, align 4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %31, align 4
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* %36, align 4
  %39 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %41, align 4
  %44 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %6, align 8
  %48 = load i32, i32* %46, align 4
  %49 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %6, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %25
  %59 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ST0_CU1, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58, %25
  br label %88

66:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 32
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* %71, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %73, i32* %81, align 4
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %67

85:                                               ; preds = %67
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %87 = call i32 @restore_fp(%struct.TYPE_7__* %86)
  br label %88

88:                                               ; preds = %85, %65
  ret void
}

declare dso_local i32 @restore_fp(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
