; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_config_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.rio_priv* }
%struct.rio_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"fsl_rio_config_read: index %d destid %d hopcount %d offset %8.8x len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i32, i32, i32, i32, i32*)* @fsl_rio_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_rio_config_read(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.rio_mport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.rio_priv*, align 8
  %16 = alloca i32*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %17 = load %struct.rio_mport*, %struct.rio_mport** %8, align 8
  %18 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %17, i32 0, i32 0
  %19 = load %struct.rio_priv*, %struct.rio_priv** %18, align 8
  store %struct.rio_priv* %19, %struct.rio_priv** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.rio_priv*, %struct.rio_priv** %15, align 8
  %27 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 %30, 22
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 %32, 12
  %34 = or i32 %31, %33
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, -4
  %37 = ashr i32 %36, 9
  %38 = or i32 %34, %37
  %39 = call i32 @out_be32(i32* %29, i32 %38)
  %40 = load %struct.rio_priv*, %struct.rio_priv** %15, align 8
  %41 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %16, align 8
  %47 = load i32, i32* %13, align 4
  switch i32 %47, label %56 [
    i32 1, label %48
    i32 2, label %52
  ]

48:                                               ; preds = %7
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @in_8(i32* %49)
  %51 = load i32*, i32** %14, align 8
  store i32 %50, i32* %51, align 4
  br label %60

52:                                               ; preds = %7
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @in_be16(i32* %53)
  %55 = load i32*, i32** %14, align 8
  store i32 %54, i32* %55, align 4
  br label %60

56:                                               ; preds = %7
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @in_be32(i32* %57)
  %59 = load i32*, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %52, %48
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @in_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
