; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_tx_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_fsl_rio_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.TYPE_4__*, %struct.rio_priv* }
%struct.TYPE_4__ = type { i32 (%struct.rio_mport*, i32, i32, i32)* }
%struct.rio_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@RIO_MSG_OSR_TE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"RIO: outbound message transmission error\0A\00", align 1
@RIO_MSG_OSR_QOI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"RIO: outbound message queue overflow\0A\00", align 1
@RIO_MSG_OSR_EOMI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_rio_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_rio_tx_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca %struct.rio_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.rio_mport*
  store %struct.rio_mport* %11, %struct.rio_mport** %6, align 8
  %12 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %13 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %12, i32 0, i32 1
  %14 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  store %struct.rio_priv* %14, %struct.rio_priv** %7, align 8
  %15 = load %struct.rio_priv*, %struct.rio_priv** %7, align 8
  %16 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @in_be32(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RIO_MSG_OSR_TE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.rio_priv*, %struct.rio_priv** %7, align 8
  %27 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* @RIO_MSG_OSR_TE, align 4
  %31 = call i32 @out_be32(i32* %29, i32 %30)
  br label %83

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RIO_MSG_OSR_QOI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.rio_priv*, %struct.rio_priv** %7, align 8
  %40 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* @RIO_MSG_OSR_QOI, align 4
  %44 = call i32 @out_be32(i32* %42, i32 %43)
  br label %83

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @RIO_MSG_OSR_EOMI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %45
  %51 = load %struct.rio_priv*, %struct.rio_priv** %7, align 8
  %52 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = call i32 @in_be32(i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.rio_priv*, %struct.rio_priv** %7, align 8
  %58 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %56, %60
  %62 = ashr i32 %61, 5
  store i32 %62, i32* %9, align 4
  %63 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %64 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.rio_mport*, i32, i32, i32)*, i32 (%struct.rio_mport*, i32, i32, i32)** %67, align 8
  %69 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %70 = load %struct.rio_priv*, %struct.rio_priv** %7, align 8
  %71 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 %68(%struct.rio_mport* %69, i32 %73, i32 -1, i32 %74)
  %76 = load %struct.rio_priv*, %struct.rio_priv** %7, align 8
  %77 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* @RIO_MSG_OSR_EOMI, align 4
  %81 = call i32 @out_be32(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %50, %45
  br label %83

83:                                               ; preds = %82, %37, %24
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %84
}

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
