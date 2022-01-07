; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_get_mem_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_get_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_mem_map = type { i32, i32, i32, i32, i32 }

@cardu_sockets = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADR_WIN_EN = common dso_local global i32 0, align 4
@MAP_ACTIVE = common dso_local global i32 0, align 4
@MEM_WIN_DSIZE = common dso_local global i32 0, align 4
@MAP_16BIT = common dso_local global i32 0, align 4
@MEM_WIN_WP = common dso_local global i32 0, align 4
@MAP_WRPROT = common dso_local global i32 0, align 4
@MEM_WIN_REGSET = common dso_local global i32 0, align 4
@MAP_ATTRIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pccard_mem_map*)* @cardu_get_mem_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardu_get_mem_map(i32 %0, %struct.pccard_mem_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pccard_mem_map*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pccard_mem_map* %1, %struct.pccard_mem_map** %5, align 8
  %13 = load i32*, i32** @cardu_sockets, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %6, align 8
  %17 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %18 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %123

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @ADR_WIN_EN, align 4
  %28 = call i32 @exca_readb(i32* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @MEM_WIN_EN(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @MAP_ACTIVE, align 4
  br label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %40 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @MEM_WIN_SA(i32 %42)
  %44 = call i32 @exca_readw(i32* %41, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MEM_WIN_DSIZE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @MAP_16BIT, align 4
  br label %52

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %55 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 4095
  %60 = shl i32 %59, 12
  store i32 %60, i32* %7, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @MEM_WIN_EA(i32 %62)
  %64 = call i32 @exca_readw(i32* %61, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 4095
  %67 = shl i32 %66, 12
  %68 = add nsw i32 %67, 4095
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @MEM_WIN_OA(i32 %70)
  %72 = call i32 @exca_readw(i32* %69, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @MEM_WIN_WP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %52
  %78 = load i32, i32* @MAP_WRPROT, align 4
  br label %80

79:                                               ; preds = %52
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %83 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @MEM_WIN_REGSET, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* @MAP_ATTRIB, align 4
  br label %93

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %96 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, 16383
  %101 = shl i32 %100, 12
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %104, 67108863
  %106 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %107 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @MEM_WIN_SAU(i32 %109)
  %111 = call i32 @exca_readb(i32* %108, i32 %110)
  %112 = shl i32 %111, 24
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %113, %114
  %116 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %117 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %118, %119
  %121 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %122 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %93, %22
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @exca_readb(i32*, i32) #1

declare dso_local i32 @MEM_WIN_EN(i32) #1

declare dso_local i32 @exca_readw(i32*, i32) #1

declare dso_local i32 @MEM_WIN_SA(i32) #1

declare dso_local i32 @MEM_WIN_EA(i32) #1

declare dso_local i32 @MEM_WIN_OA(i32) #1

declare dso_local i32 @MEM_WIN_SAU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
