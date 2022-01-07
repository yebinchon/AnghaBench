; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_doorbell_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_doorbell_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32, %struct.rio_priv* }
%struct.rio_priv = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"fsl_doorbell_send: index %d destid %4.4x data %4.4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i32, i32)* @fsl_rio_doorbell_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_rio_doorbell_send(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rio_priv*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %11 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %10, i32 0, i32 1
  %12 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  store %struct.rio_priv* %12, %struct.rio_priv** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %18 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %62 [
    i32 129, label %20
    i32 128, label %33
  ]

20:                                               ; preds = %4
  %21 = load %struct.rio_priv*, %struct.rio_priv** %9, align 8
  %22 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 22
  %27 = call i32 @out_be32(i32* %24, i32 %26)
  %28 = load %struct.rio_priv*, %struct.rio_priv** %9, align 8
  %29 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @out_be16(i32 %30, i32 %31)
  br label %62

33:                                               ; preds = %4
  %34 = load %struct.rio_priv*, %struct.rio_priv** %9, align 8
  %35 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @out_be32(i32* %37, i32 0)
  %39 = load %struct.rio_priv*, %struct.rio_priv** %9, align 8
  %40 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = call i32 @out_be32(i32* %42, i32 4)
  %44 = load %struct.rio_priv*, %struct.rio_priv** %9, align 8
  %45 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 16
  %50 = call i32 @out_be32(i32* %47, i32 %49)
  %51 = load %struct.rio_priv*, %struct.rio_priv** %9, align 8
  %52 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @out_be32(i32* %54, i32 %55)
  %57 = load %struct.rio_priv*, %struct.rio_priv** %9, align 8
  %58 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @out_be32(i32* %60, i32 1)
  br label %62

62:                                               ; preds = %4, %33, %20
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @out_be16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
