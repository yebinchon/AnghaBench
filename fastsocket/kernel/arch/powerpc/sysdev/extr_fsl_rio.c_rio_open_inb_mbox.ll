; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_rio_open_inb_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_rio_open_inb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.rio_priv* }
%struct.rio_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32, i64, i32, i32**, i64, i8* }

@RIO_MIN_RX_RING_SIZE = common dso_local global i32 0, align 4
@RIO_MAX_RX_RING_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RIO_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fsl_rio_rx_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"msg_rx\00", align 1
@RIO_MSG_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_open_inb_mbox(%struct.rio_mport* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rio_priv*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %13 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %12, i32 0, i32 0
  %14 = load %struct.rio_priv*, %struct.rio_priv** %13, align 8
  store %struct.rio_priv* %14, %struct.rio_priv** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @RIO_MIN_RX_RING_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @RIO_MAX_RX_RING_SIZE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @is_power_of_2(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %18, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %161

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %32 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %36 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %39 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %56, %29
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %44 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %50 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %61 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %64 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RIO_MAX_MSG_SIZE, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %70 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @dma_alloc_coherent(i32 %62, i32 %68, i64* %71, i32 %72)
  %74 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %75 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %78 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %59
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %161

85:                                               ; preds = %59
  %86 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %87 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %91 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @out_be32(i32* %89, i32 %94)
  %96 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %97 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %101 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @out_be32(i32* %99, i32 %104)
  %106 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %107 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = call i32 @out_be32(i32* %109, i32 145)
  %111 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %112 = call i32 @IRQ_RIO_RX(%struct.rio_mport* %111)
  %113 = load i32, i32* @fsl_rio_rx_handler, align 4
  %114 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %115 = bitcast %struct.rio_mport* %114 to i8*
  %116 = call i32 @request_irq(i32 %112, i32 %113, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %85
  %120 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %121 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @RIO_MSG_BUFFER_SIZE, align 4
  %124 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %125 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %133 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dma_free_coherent(i32 %122, i32 %123, i32 %131, i32 %139)
  br label %161

141:                                              ; preds = %85
  %142 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %143 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = call i32 @out_be32(i32* %145, i32 1769568)
  %147 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %148 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @get_bitmask_order(i32 %151)
  %153 = sub nsw i32 %152, 2
  %154 = shl i32 %153, 12
  %155 = call i32 @setbits32(i32* %150, i32 %154)
  %156 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %157 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = call i32 @setbits32(i32* %159, i32 1)
  br label %161

161:                                              ; preds = %141, %119, %82, %26
  %162 = load i32, i32* %10, align 4
  ret i32 %162
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @IRQ_RIO_RX(%struct.rio_mport*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @setbits32(i32*, i32) #1

declare dso_local i32 @get_bitmask_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
