; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_set_mem_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_set_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_mem_map = type { i32, i32, i32, i32, i32 }

@cardu_sockets = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADR_WIN_EN = common dso_local global i32 0, align 4
@MAP_16BIT = common dso_local global i32 0, align 4
@MEM_WIN_DSIZE = common dso_local global i32 0, align 4
@MAP_WRPROT = common dso_local global i32 0, align 4
@MEM_WIN_WP = common dso_local global i32 0, align 4
@MAP_ATTRIB = common dso_local global i32 0, align 4
@MEM_WIN_REGSET = common dso_local global i32 0, align 4
@MAP_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pccard_mem_map*)* @cardu_set_mem_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardu_set_mem_map(i32 %0, %struct.pccard_mem_map* %1) #0 {
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
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pccard_mem_map* %1, %struct.pccard_mem_map** %5, align 8
  %14 = load i32*, i32** @cardu_sockets, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %6, align 8
  %18 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %19 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %22 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %25 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %28 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp sgt i32 %30, 4
  br i1 %31, label %46, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = xor i32 %37, %38
  %40 = ashr i32 %39, 24
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = ashr i32 %43, 26
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %36, %32, %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %148

49:                                               ; preds = %42
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @ADR_WIN_EN, align 4
  %52 = call i32 @exca_readb(i32* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @MEM_WIN_EN(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @ADR_WIN_EN, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @exca_writeb(i32* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %49
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @MEM_WIN_SAU(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %72, 24
  %74 = call i32 @exca_writeb(i32* %69, i32 %71, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, 12
  %77 = and i32 %76, 4095
  store i32 %77, i32* %7, align 4
  %78 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %79 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MAP_16BIT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %68
  %85 = load i32, i32* @MEM_WIN_DSIZE, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %68
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @MEM_WIN_SA(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @exca_writew(i32* %89, i32 %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = ashr i32 %94, 12
  %96 = and i32 %95, 4095
  store i32 %96, i32* %7, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @MEM_WIN_EA(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @exca_writew(i32* %97, i32 %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %102, %103
  %105 = ashr i32 %104, 12
  %106 = and i32 %105, 16383
  store i32 %106, i32* %7, align 4
  %107 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %108 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MAP_WRPROT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %88
  %114 = load i32, i32* @MEM_WIN_WP, align 4
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %113, %88
  %118 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %119 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MAP_ATTRIB, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i32, i32* @MEM_WIN_REGSET, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %124, %117
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @MEM_WIN_OA(i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @exca_writew(i32* %129, i32 %131, i32 %132)
  %134 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %5, align 8
  %135 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MAP_ACTIVE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %128
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* @ADR_WIN_EN, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @exca_writeb(i32* %141, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %140, %128
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %46
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @exca_readb(i32*, i32) #1

declare dso_local i32 @MEM_WIN_EN(i32) #1

declare dso_local i32 @exca_writeb(i32*, i32, i32) #1

declare dso_local i32 @MEM_WIN_SAU(i32) #1

declare dso_local i32 @exca_writew(i32*, i32, i32) #1

declare dso_local i32 @MEM_WIN_SA(i32) #1

declare dso_local i32 @MEM_WIN_EA(i32) #1

declare dso_local i32 @MEM_WIN_OA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
