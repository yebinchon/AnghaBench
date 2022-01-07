; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_amd64-agp.c_amd64_insert_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_amd64-agp.c_amd64_insert_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_8__*, i32, i32)* }
%struct.agp_memory = type { i32, i64, i32, i32*, %struct.agp_bridge_data* }
%struct.agp_bridge_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.agp_bridge_data*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_8__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@GPTE_VALID = common dso_local global i64 0, align 8
@GPTE_COHERENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @amd64_insert_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_insert_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.agp_bridge_data*, align 8
  %14 = alloca i64, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %16 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %15, i32 0, i32 4
  %17 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %16, align 8
  store %struct.agp_bridge_data* %17, %struct.agp_bridge_data** %13, align 8
  %18 = call i32 (...) @agp_num_entries()
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %21 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %156

27:                                               ; preds = %3
  %28 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %13, align 8
  %29 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (%struct.agp_bridge_data*, i32)*, i32 (%struct.agp_bridge_data*, i32)** %31, align 8
  %33 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %13, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 %32(%struct.agp_bridge_data* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %156

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %45 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %156

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %80, %54
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %62 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %60, %63
  %65 = icmp ult i64 %58, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %56
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @readl(i64 %73)
  %75 = call i32 @PGE_EMPTY(%struct.TYPE_8__* %67, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %156

80:                                               ; preds = %66
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %56

83:                                               ; preds = %56
  %84 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %85 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = call i32 (...) @global_cache_flush()
  %90 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %91 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %83
  store i32 0, i32* %8, align 4
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %148, %92
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %98 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %153

101:                                              ; preds = %94
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64 (%struct.TYPE_8__*, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)** %105, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %108 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %109 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @page_to_phys(i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = call i64 %106(%struct.TYPE_8__* %107, i32 %115, i32 %116)
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %11, align 8
  %119 = and i64 %118, -1099511623684
  %120 = call i32 @BUG_ON(i64 %119)
  %121 = load i64, i64* %11, align 8
  %122 = and i64 %121, 1095216660480
  %123 = lshr i64 %122, 28
  store i64 %123, i64* %14, align 8
  %124 = load i64, i64* %11, align 8
  %125 = and i64 %124, 4294963200
  %126 = load i64, i64* %14, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %14, align 8
  %128 = load i64, i64* @GPTE_VALID, align 8
  %129 = load i64, i64* @GPTE_COHERENT, align 8
  %130 = or i64 %128, %129
  %131 = load i64, i64* %14, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %14, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = call i32 @writel(i64 %133, i64 %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @agp_bridge, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = call i32 @readl(i64 %146)
  br label %148

148:                                              ; preds = %101
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %94

153:                                              ; preds = %94
  %154 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %155 = call i32 @amd64_tlbflush(%struct.agp_memory* %154)
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %153, %77, %51, %38, %24
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @agp_num_entries(...) #1

declare dso_local i32 @PGE_EMPTY(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @global_cache_flush(...) #1

declare dso_local i32 @page_to_phys(i32) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @amd64_tlbflush(%struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
