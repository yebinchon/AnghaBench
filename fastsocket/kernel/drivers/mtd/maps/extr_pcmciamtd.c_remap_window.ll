; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pcmciamtd.c_remap_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pcmciamtd.c_remap_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32, i64 }
%struct.pcmciamtd_dev = type { i32, i64, i32*, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"device removed\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Remapping window from 0x%8.8x to 0x%8.8x\00", align 1
@MapMemPage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.map_info*, i64)* @remap_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @remap_window(%struct.map_info* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pcmciamtd_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.map_info*, %struct.map_info** %4, align 8
  %11 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.pcmciamtd_dev*
  store %struct.pcmciamtd_dev* %13, %struct.pcmciamtd_dev** %6, align 8
  %14 = load %struct.map_info*, %struct.map_info** %4, align 8
  %15 = getelementptr inbounds %struct.map_info, %struct.map_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %6, align 8
  %18 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pcmcia_dev_present(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %76

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %6, align 8
  %27 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = xor i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = and i64 %25, %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %6, align 8
  %37 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %24
  %41 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %6, align 8
  %42 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @pcmcia_map_mem_page(i32 %48, %struct.TYPE_3__* %8)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %6, align 8
  %54 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MapMemPage, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @cs_error(i32 %55, i32 %56, i32 %57)
  store i32* null, i32** %3, align 8
  br label %76

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %6, align 8
  %63 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %24
  %65 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %6, align 8
  %66 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %6, align 8
  %70 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = and i64 %68, %73
  %75 = getelementptr inbounds i32, i32* %67, i64 %74
  store i32* %75, i32** %3, align 8
  br label %76

76:                                               ; preds = %64, %52, %22
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32 @pcmcia_dev_present(i32) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @pcmcia_map_mem_page(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cs_error(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
