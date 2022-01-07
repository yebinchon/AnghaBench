; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_meye_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_meye_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i8* }

@meye_irq.sequence = internal global i32 0, align 4
@MCHIP_MM_INTA = common dso_local global i32 0, align 4
@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MCHIP_HIC_MODE_CONT_OUT = common dso_local global i64 0, align 8
@MCHIP_HIC_MODE_CONT_COMP = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@MCHIP_MM_FIR_RDY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@gbufsize = common dso_local global i32 0, align 4
@MEYE_BUF_DONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meye_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meye_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @MCHIP_MM_INTA, align 4
  %10 = call i32 @mchip_read(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  %12 = load i64, i64* @MCHIP_HIC_MODE_CONT_OUT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  %16 = load i64, i64* @MCHIP_HIC_MODE_CONT_COMP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %145

20:                                               ; preds = %14, %2
  br label %21

21:                                               ; preds = %143, %102, %94, %20
  %22 = call i32 (...) @mchip_get_frame()
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MCHIP_MM_FIR_RDY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %145

29:                                               ; preds = %21
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  %31 = load i64, i64* @MCHIP_HIC_MODE_CONT_OUT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 6), align 8
  %35 = bitcast i32* %7 to i8*
  %36 = call i32 @kfifo_get(i32 %34, i8* %35, i32 4)
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i32 (...) @mchip_free_frame()
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %3, align 4
  br label %145

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 5), align 8
  %45 = load i32, i32* @gbufsize, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = call i32 (...) @mchip_hsize()
  %51 = call i32 (...) @mchip_vsize()
  %52 = mul nsw i32 %50, %51
  %53 = mul nsw i32 %52, 2
  %54 = call i32 @mchip_cont_read_frame(i32 %43, i64 %49, i32 %53)
  %55 = call i32 (...) @mchip_hsize()
  %56 = call i32 (...) @mchip_vsize()
  %57 = mul nsw i32 %55, %56
  %58 = mul nsw i32 %57, 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 8
  %64 = load i8*, i8** @MEYE_BUF_DONE, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i8* %64, i8** %69, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = call i32 @do_gettimeofday(i32* %74)
  %76 = load i32, i32* @meye_irq.sequence, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @meye_irq.sequence, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 4
  %84 = bitcast i32* %7 to i8*
  %85 = call i32 @kfifo_put(i32 %83, i8* %84, i32 4)
  %86 = call i32 @wake_up_interruptible(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1))
  br label %143

87:                                               ; preds = %29
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %90 = load i32, i32* @gbufsize, align 4
  %91 = call i32 @mchip_comp_read_frame(i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = call i32 (...) @mchip_free_frame()
  br label %21

96:                                               ; preds = %87
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 6), align 8
  %98 = bitcast i32* %7 to i8*
  %99 = call i32 @kfifo_get(i32 %97, i8* %98, i32 4)
  %100 = sext i32 %99 to i64
  %101 = icmp ne i64 %100, 4
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 (...) @mchip_free_frame()
  br label %21

104:                                              ; preds = %96
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 5), align 8
  %106 = load i32, i32* @gbufsize, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @memcpy(i64 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 8
  %120 = load i8*, i8** @MEYE_BUF_DONE, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i8* %120, i8** %125, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = call i32 @do_gettimeofday(i32* %130)
  %132 = load i32, i32* @meye_irq.sequence, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* @meye_irq.sequence, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  store i32 %132, i32* %138, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 4
  %140 = bitcast i32* %7 to i8*
  %141 = call i32 @kfifo_put(i32 %139, i8* %140, i32 4)
  %142 = call i32 @wake_up_interruptible(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1))
  br label %143

143:                                              ; preds = %104, %42
  %144 = call i32 (...) @mchip_free_frame()
  br label %21

145:                                              ; preds = %39, %27, %18
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @mchip_read(i32) #1

declare dso_local i32 @mchip_get_frame(...) #1

declare dso_local i32 @kfifo_get(i32, i8*, i32) #1

declare dso_local i32 @mchip_free_frame(...) #1

declare dso_local i32 @mchip_cont_read_frame(i32, i64, i32) #1

declare dso_local i32 @mchip_hsize(...) #1

declare dso_local i32 @mchip_vsize(...) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @kfifo_put(i32, i8*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mchip_comp_read_frame(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
