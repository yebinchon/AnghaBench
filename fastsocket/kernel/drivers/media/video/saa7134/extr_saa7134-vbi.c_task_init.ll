; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-vbi.c_task_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-vbi.c_task_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.saa7134_tvnorm* }
%struct.saa7134_tvnorm = type { i32, i32, i32, i32 }
%struct.saa7134_buf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VBI_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, %struct.saa7134_buf*, i32)* @task_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_init(%struct.saa7134_dev* %0, %struct.saa7134_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.saa7134_tvnorm*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_buf* %1, %struct.saa7134_buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %9 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %8, i32 0, i32 0
  %10 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %9, align 8
  store %struct.saa7134_tvnorm* %10, %struct.saa7134_tvnorm** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @SAA7134_VBI_H_START1(i32 %11)
  %13 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %14 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  %17 = call i32 @saa_writeb(i32 %12, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @SAA7134_VBI_H_START2(i32 %18)
  %20 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %21 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = call i32 @saa_writeb(i32 %19, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @SAA7134_VBI_H_STOP1(i32 %25)
  %27 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %28 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @saa_writeb(i32 %26, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SAA7134_VBI_H_STOP2(i32 %32)
  %34 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %35 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 8
  %38 = call i32 @saa_writeb(i32 %33, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @SAA7134_VBI_V_START1(i32 %39)
  %41 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %42 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 255
  %45 = call i32 @saa_writeb(i32 %40, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @SAA7134_VBI_V_START2(i32 %46)
  %48 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %49 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 8
  %52 = call i32 @saa_writeb(i32 %47, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @SAA7134_VBI_V_STOP1(i32 %53)
  %55 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %56 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @saa_writeb(i32 %54, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @SAA7134_VBI_V_STOP2(i32 %60)
  %62 = load %struct.saa7134_tvnorm*, %struct.saa7134_tvnorm** %7, align 8
  %63 = getelementptr inbounds %struct.saa7134_tvnorm, %struct.saa7134_tvnorm* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = call i32 @saa_writeb(i32 %61, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @SAA7134_VBI_H_SCALE_INC1(i32 %67)
  %69 = load i32, i32* @VBI_SCALE, align 4
  %70 = and i32 %69, 255
  %71 = call i32 @saa_writeb(i32 %68, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @SAA7134_VBI_H_SCALE_INC2(i32 %72)
  %74 = load i32, i32* @VBI_SCALE, align 4
  %75 = ashr i32 %74, 8
  %76 = call i32 @saa_writeb(i32 %73, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @SAA7134_VBI_PHASE_OFFSET_LUMA(i32 %77)
  %79 = call i32 @saa_writeb(i32 %78, i32 0)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @SAA7134_VBI_PHASE_OFFSET_CHROMA(i32 %80)
  %82 = call i32 @saa_writeb(i32 %81, i32 0)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @SAA7134_VBI_H_LEN1(i32 %83)
  %85 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %86 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = call i32 @saa_writeb(i32 %84, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @SAA7134_VBI_H_LEN2(i32 %91)
  %93 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %94 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 8
  %98 = call i32 @saa_writeb(i32 %92, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @SAA7134_VBI_V_LEN1(i32 %99)
  %101 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %102 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 255
  %106 = call i32 @saa_writeb(i32 %100, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @SAA7134_VBI_V_LEN2(i32 %107)
  %109 = load %struct.saa7134_buf*, %struct.saa7134_buf** %5, align 8
  %110 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 8
  %114 = call i32 @saa_writeb(i32 %108, i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @SAA7134_DATA_PATH(i32 %115)
  %117 = call i32 @saa_andorb(i32 %116, i32 192, i32 0)
  ret void
}

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @SAA7134_VBI_H_START1(i32) #1

declare dso_local i32 @SAA7134_VBI_H_START2(i32) #1

declare dso_local i32 @SAA7134_VBI_H_STOP1(i32) #1

declare dso_local i32 @SAA7134_VBI_H_STOP2(i32) #1

declare dso_local i32 @SAA7134_VBI_V_START1(i32) #1

declare dso_local i32 @SAA7134_VBI_V_START2(i32) #1

declare dso_local i32 @SAA7134_VBI_V_STOP1(i32) #1

declare dso_local i32 @SAA7134_VBI_V_STOP2(i32) #1

declare dso_local i32 @SAA7134_VBI_H_SCALE_INC1(i32) #1

declare dso_local i32 @SAA7134_VBI_H_SCALE_INC2(i32) #1

declare dso_local i32 @SAA7134_VBI_PHASE_OFFSET_LUMA(i32) #1

declare dso_local i32 @SAA7134_VBI_PHASE_OFFSET_CHROMA(i32) #1

declare dso_local i32 @SAA7134_VBI_H_LEN1(i32) #1

declare dso_local i32 @SAA7134_VBI_H_LEN2(i32) #1

declare dso_local i32 @SAA7134_VBI_V_LEN1(i32) #1

declare dso_local i32 @SAA7134_VBI_V_LEN2(i32) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @SAA7134_DATA_PATH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
