; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_u3_insert_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_u3_insert_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32*, %struct.TYPE_6__*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.agp_memory = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_8__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"u3_insert_memory: entry 0x%x occupied (%x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @u3_insert_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u3_insert_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call %struct.TYPE_9__* @A_SIZE_32(i8* %16)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %22 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %143

28:                                               ; preds = %3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %33(%struct.TYPE_8__* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %143

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %45 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %143

53:                                               ; preds = %42
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32* %59, i32** %11, align 8
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %88, %53
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %63 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %60
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %8, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %83)
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %143

87:                                               ; preds = %66
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %60

91:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %136, %91
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %95 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %139

98:                                               ; preds = %92
  %99 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %100 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @page_to_phys(i32 %105)
  %107 = load i32, i32* @PAGE_SHIFT, align 4
  %108 = ashr i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = or i64 %109, 2147483648
  %111 = trunc i64 %110 to i32
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %117 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @page_to_phys(i32 %122)
  %124 = call i64 @__va(i32 %123)
  %125 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %126 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @page_to_phys(i32 %131)
  %133 = call i64 @__va(i32 %132)
  %134 = add i64 %133, 4096
  %135 = call i32 @flush_dcache_range(i64 %124, i64 %134)
  br label %136

136:                                              ; preds = %98
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %92

139:                                              ; preds = %92
  %140 = call i32 (...) @mb()
  %141 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %142 = call i32 @uninorth_tlbflush(%struct.agp_memory* %141)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %139, %73, %50, %39, %25
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_9__* @A_SIZE_32(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @page_to_phys(i32) #1

declare dso_local i32 @flush_dcache_range(i64, i64) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @uninorth_tlbflush(%struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
