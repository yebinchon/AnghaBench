; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_op_shl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_op_shl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atom_dst_to_src = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"   dst: \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"   shift: %d\0A\00", align 1
@atom_arg_mask = common dso_local global i32* null, align 8
@atom_arg_shift = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @atom_op_shl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atom_op_shl(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = call i32 @U8(i32 %14)
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32**, i32*** @atom_dst_to_src, align 8
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 3
  %22 = and i32 %21, 7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %19, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 6
  %28 = and i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @atom_get_dst(i32* %33, i32 %34, i32 %35, i32* %36, i32* %9, i32 1)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @atom_get_src(i32* %39, i32 %40, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** @atom_arg_mask, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32*, i32** @atom_arg_shift, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = ashr i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @atom_put_dst(i32* %63, i32 %64, i32 %65, i32* %11, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @U8(i32) #1

declare dso_local i32 @SDEBUG(i8*, ...) #1

declare dso_local i32 @atom_get_dst(i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @atom_get_src(i32*, i32, i32*) #1

declare dso_local i32 @atom_put_dst(i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
