; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@sh = common dso_local global %struct.Scsi_Host** null, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: release, invalid Scsi_Host pointer.\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@sha = common dso_local global i32* null, align 8
@NO_DMA = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @u14_34f_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u14_34f_release(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %6, i64 %8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %11 = icmp ne %struct.Scsi_Host* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %13 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %13, i64 %15
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %19 = icmp ne %struct.Scsi_Host* %17, %18
  br label %20

20:                                               ; preds = %12, %5
  %21 = phi i1 [ false, %5 ], [ %19, %12 ]
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %5

26:                                               ; preds = %20
  %27 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %27, i64 %29
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %30, align 8
  %32 = icmp eq %struct.Scsi_Host* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @driver_name, align 4
  %35 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %26
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %39, i64 %41
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %42, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %38, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = call %struct.TYPE_4__* @HD(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kfree(i32 %56)
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %3, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %37

61:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %64, i64 %66
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %67, align 8
  %69 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %63, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %62
  %73 = load i32, i32* %4, align 4
  %74 = call %struct.TYPE_4__* @HD(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call %struct.TYPE_4__* @HD(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %87 = call i32 @pci_unmap_single(i32 %76, i32 %85, i32 4, i32 %86)
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %3, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %62

91:                                               ; preds = %62
  %92 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %92, i64 %94
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %95, align 8
  %97 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** @sha, align 8
  %100 = load i32, i32* %4, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @free_irq(i32 %98, i32* %102)
  %104 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %105 = load i32, i32* %4, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %104, i64 %106
  %108 = load %struct.Scsi_Host*, %struct.Scsi_Host** %107, align 8
  %109 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NO_DMA, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %91
  %114 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %115 = load i32, i32* %4, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %114, i64 %116
  %118 = load %struct.Scsi_Host*, %struct.Scsi_Host** %117, align 8
  %119 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @free_dma(i64 %120)
  br label %122

122:                                              ; preds = %113, %91
  %123 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %124 = load i32, i32* %4, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %123, i64 %125
  %127 = load %struct.Scsi_Host*, %struct.Scsi_Host** %126, align 8
  %128 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %131 = load i32, i32* %4, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %130, i64 %132
  %134 = load %struct.Scsi_Host*, %struct.Scsi_Host** %133, align 8
  %135 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @release_region(i32 %129, i32 %136)
  %138 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @sh, align 8
  %139 = load i32, i32* %4, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %138, i64 %140
  %142 = load %struct.Scsi_Host*, %struct.Scsi_Host** %141, align 8
  %143 = call i32 @scsi_unregister(%struct.Scsi_Host* %142)
  %144 = load i32, i32* @FALSE, align 4
  ret i32 %144
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.TYPE_4__* @HD(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @scsi_unregister(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
