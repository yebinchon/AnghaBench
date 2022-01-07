; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_parse_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_parse_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx4008_dma_ch_ctrl = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@WIDTH_BYTE = common dso_local global i8* null, align 8
@WIDTH_HWORD = common dso_local global i8* null, align 8
@WIDTH_WORD = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_dma_parse_control(i64 %0, %struct.pnx4008_dma_ch_ctrl* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pnx4008_dma_ch_ctrl*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.pnx4008_dma_ch_ctrl* %1, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %7 = icmp ne %struct.pnx4008_dma_ch_ctrl* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  br label %140

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = and i64 %12, 2047
  %14 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = lshr i64 %16, 12
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, 7
  %20 = trunc i64 %19 to i32
  %21 = shl i32 1, %20
  %22 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %23 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %11
  %29 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %30 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %11
  %34 = load i64, i64* %3, align 8
  %35 = lshr i64 %34, 3
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = and i64 %36, 7
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %48 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %33
  %52 = load i64, i64* %3, align 8
  %53 = lshr i64 %52, 3
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = and i64 %54, 7
  switch i64 %55, label %68 [
    i64 0, label %56
    i64 1, label %60
    i64 2, label %64
  ]

56:                                               ; preds = %51
  %57 = load i8*, i8** @WIDTH_BYTE, align 8
  %58 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %59 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %58, i32 0, i32 12
  store i8* %57, i8** %59, align 8
  br label %71

60:                                               ; preds = %51
  %61 = load i8*, i8** @WIDTH_HWORD, align 8
  %62 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %63 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %62, i32 0, i32 12
  store i8* %61, i8** %63, align 8
  br label %71

64:                                               ; preds = %51
  %65 = load i8*, i8** @WIDTH_WORD, align 8
  %66 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %67 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %66, i32 0, i32 12
  store i8* %65, i8** %67, align 8
  br label %71

68:                                               ; preds = %51
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %140

71:                                               ; preds = %64, %60, %56
  %72 = load i64, i64* %3, align 8
  %73 = lshr i64 %72, 3
  store i64 %73, i64* %3, align 8
  %74 = load i64, i64* %3, align 8
  %75 = and i64 %74, 7
  switch i64 %75, label %88 [
    i64 0, label %76
    i64 1, label %80
    i64 2, label %84
  ]

76:                                               ; preds = %71
  %77 = load i8*, i8** @WIDTH_BYTE, align 8
  %78 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %79 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %78, i32 0, i32 11
  store i8* %77, i8** %79, align 8
  br label %91

80:                                               ; preds = %71
  %81 = load i8*, i8** @WIDTH_HWORD, align 8
  %82 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %83 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %82, i32 0, i32 11
  store i8* %81, i8** %83, align 8
  br label %91

84:                                               ; preds = %71
  %85 = load i8*, i8** @WIDTH_WORD, align 8
  %86 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %87 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %86, i32 0, i32 11
  store i8* %85, i8** %87, align 8
  br label %91

88:                                               ; preds = %71
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %140

91:                                               ; preds = %84, %80, %76
  %92 = load i64, i64* %3, align 8
  %93 = lshr i64 %92, 3
  store i64 %93, i64* %3, align 8
  %94 = load i64, i64* %3, align 8
  %95 = and i64 %94, 1
  %96 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %97 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %3, align 8
  %99 = lshr i64 %98, 1
  store i64 %99, i64* %3, align 8
  %100 = load i64, i64* %3, align 8
  %101 = and i64 %100, 1
  %102 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %103 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %102, i32 0, i32 4
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %3, align 8
  %105 = lshr i64 %104, 1
  store i64 %105, i64* %3, align 8
  %106 = load i64, i64* %3, align 8
  %107 = and i64 %106, 1
  %108 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %109 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %108, i32 0, i32 5
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %3, align 8
  %111 = lshr i64 %110, 1
  store i64 %111, i64* %3, align 8
  %112 = load i64, i64* %3, align 8
  %113 = and i64 %112, 1
  %114 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %115 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %114, i32 0, i32 6
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %3, align 8
  %117 = lshr i64 %116, 1
  store i64 %117, i64* %3, align 8
  %118 = load i64, i64* %3, align 8
  %119 = and i64 %118, 1
  %120 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %121 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %120, i32 0, i32 7
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %3, align 8
  %123 = lshr i64 %122, 1
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %3, align 8
  %125 = and i64 %124, 1
  %126 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %127 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %126, i32 0, i32 8
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %3, align 8
  %129 = lshr i64 %128, 1
  store i64 %129, i64* %3, align 8
  %130 = load i64, i64* %3, align 8
  %131 = and i64 %130, 1
  %132 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %133 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %132, i32 0, i32 9
  store i64 %131, i64* %133, align 8
  %134 = load i64, i64* %3, align 8
  %135 = lshr i64 %134, 1
  store i64 %135, i64* %3, align 8
  %136 = load i64, i64* %3, align 8
  %137 = and i64 %136, 1
  %138 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %139 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %138, i32 0, i32 10
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %91, %88, %68, %8
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
