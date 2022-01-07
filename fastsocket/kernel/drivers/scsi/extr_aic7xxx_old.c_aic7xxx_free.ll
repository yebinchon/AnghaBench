; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32, i32, %struct.TYPE_3__**, i32*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, %struct.aic7xxx_scb_dma* }
%struct.aic7xxx_scb_dma = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @aic7xxx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_free(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.aic7xxx_scb_dma*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  %5 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %6 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %126

9:                                                ; preds = %1
  store %struct.aic7xxx_scb_dma* null, %struct.aic7xxx_scb_dma** %4, align 8
  %10 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %11 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %9
  %17 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %18 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %21 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %26 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %31 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pci_free_consistent(i32 %19, i32 %24, i8* %29, i64 %34)
  %36 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %37 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %41 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %16, %9
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %118, %44
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %48 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %121

53:                                               ; preds = %45
  %54 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %55 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %58, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.aic7xxx_scb_dma*, %struct.aic7xxx_scb_dma** %63, align 8
  %65 = load %struct.aic7xxx_scb_dma*, %struct.aic7xxx_scb_dma** %4, align 8
  %66 = icmp ne %struct.aic7xxx_scb_dma* %64, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %53
  %68 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %69 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load %struct.aic7xxx_scb_dma*, %struct.aic7xxx_scb_dma** %77, align 8
  store %struct.aic7xxx_scb_dma* %78, %struct.aic7xxx_scb_dma** %4, align 8
  %79 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %80 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.aic7xxx_scb_dma*, %struct.aic7xxx_scb_dma** %4, align 8
  %83 = getelementptr inbounds %struct.aic7xxx_scb_dma, %struct.aic7xxx_scb_dma* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.aic7xxx_scb_dma*, %struct.aic7xxx_scb_dma** %4, align 8
  %86 = getelementptr inbounds %struct.aic7xxx_scb_dma, %struct.aic7xxx_scb_dma* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.aic7xxx_scb_dma*, %struct.aic7xxx_scb_dma** %4, align 8
  %89 = getelementptr inbounds %struct.aic7xxx_scb_dma, %struct.aic7xxx_scb_dma* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %87, %90
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.aic7xxx_scb_dma*, %struct.aic7xxx_scb_dma** %4, align 8
  %94 = getelementptr inbounds %struct.aic7xxx_scb_dma, %struct.aic7xxx_scb_dma* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @pci_free_consistent(i32 %81, i32 %84, i8* %92, i64 %95)
  br label %97

97:                                               ; preds = %67, %53
  %98 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %99 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %102, i64 %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = call i32 @kfree(%struct.TYPE_4__* %108)
  %110 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %111 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %114, i64 %116
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %117, align 8
  br label %118

118:                                              ; preds = %97
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %45

121:                                              ; preds = %45
  %122 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %123 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = call i32 @kfree(%struct.TYPE_4__* %124)
  br label %126

126:                                              ; preds = %121, %1
  %127 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %128 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %131 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %135 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @pci_free_consistent(i32 %129, i32 768, i8* %133, i64 %136)
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i8*, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
