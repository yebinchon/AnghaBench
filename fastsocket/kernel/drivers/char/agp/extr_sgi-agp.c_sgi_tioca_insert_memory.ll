; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sgi-agp.c_sgi_tioca_insert_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sgi-agp.c_sgi_tioca_insert_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i32, i32, i32*, %struct.agp_bridge_data* }
%struct.agp_bridge_data = type { %struct.TYPE_6__*, i8*, i64 }
%struct.TYPE_6__ = type { i32, i32 (%struct.agp_memory*)*, i64 (%struct.agp_bridge_data*, i32, i32)*, i32 (...)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@agp_memory_reserved = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @sgi_tioca_insert_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgi_tioca_insert_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.agp_bridge_data*, align 8
  %13 = alloca i64*, align 8
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %15 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %14, i32 0, i32 4
  %16 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %15, align 8
  store %struct.agp_bridge_data* %16, %struct.agp_bridge_data** %12, align 8
  %17 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %18 = icmp ne %struct.agp_bridge_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %171

22:                                               ; preds = %3
  %23 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %24 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i64*
  store i64* %26, i64** %13, align 8
  %27 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %28 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %11, align 8
  %30 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %31 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %58 [
    i32 128, label %35
    i32 130, label %40
    i32 129, label %45
    i32 132, label %50
    i32 131, label %55
  ]

35:                                               ; preds = %22
  %36 = load i8*, i8** %11, align 8
  %37 = call %struct.TYPE_8__* @A_SIZE_8(i8* %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  br label %59

40:                                               ; preds = %22
  %41 = load i8*, i8** %11, align 8
  %42 = call %struct.TYPE_10__* @A_SIZE_16(i8* %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %8, align 4
  br label %59

45:                                               ; preds = %22
  %46 = load i8*, i8** %11, align 8
  %47 = call %struct.TYPE_9__* @A_SIZE_32(i8* %46)
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  br label %59

50:                                               ; preds = %22
  %51 = load i8*, i8** %11, align 8
  %52 = call %struct.TYPE_7__* @A_SIZE_FIX(i8* %51)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  br label %59

55:                                               ; preds = %22
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %171

58:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %50, %45, %40, %35
  %60 = load i32, i32* @agp_memory_reserved, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %59
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %73 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71, %68
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %171

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %82 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %80, %83
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %171

90:                                               ; preds = %79
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %110, %90
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %96 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %94, %97
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %92
  %101 = load i64*, i64** %13, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @EBUSY, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %171

110:                                              ; preds = %100
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %92

113:                                              ; preds = %92
  %114 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %115 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %113
  %119 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %120 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i32 (...)*, i32 (...)** %122, align 8
  %124 = call i32 (...) %123()
  %125 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %126 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %118, %113
  store i64 0, i64* %9, align 8
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %158, %127
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %132 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = icmp ult i64 %130, %134
  br i1 %135, label %136, label %163

136:                                              ; preds = %129
  %137 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %138 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i64 (%struct.agp_bridge_data*, i32, i32)*, i64 (%struct.agp_bridge_data*, i32, i32)** %140, align 8
  %142 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %143 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %144 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %9, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @page_to_phys(i32 %148)
  %150 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %151 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i64 %141(%struct.agp_bridge_data* %142, i32 %149, i32 %152)
  %154 = load i64*, i64** %13, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  store i64 %153, i64* %157, align 8
  br label %158

158:                                              ; preds = %136
  %159 = load i64, i64* %9, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %9, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %129

163:                                              ; preds = %129
  %164 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %12, align 8
  %165 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %167, align 8
  %169 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %170 = call i32 %168(%struct.agp_memory* %169)
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %163, %107, %87, %76, %55, %19
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.TYPE_8__* @A_SIZE_8(i8*) #1

declare dso_local %struct.TYPE_10__* @A_SIZE_16(i8*) #1

declare dso_local %struct.TYPE_9__* @A_SIZE_32(i8*) #1

declare dso_local %struct.TYPE_7__* @A_SIZE_FIX(i8*) #1

declare dso_local i32 @page_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
