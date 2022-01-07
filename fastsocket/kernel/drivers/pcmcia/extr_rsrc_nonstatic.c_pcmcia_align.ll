; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_pcmcia_align.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_pcmcia_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64 }
%struct.pcmcia_align_data = type { %struct.resource_map* }
%struct.resource_map = type { i64, i32, %struct.resource_map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.resource*, i32, i32)* @pcmcia_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmcia_align(i8* %0, %struct.resource* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcmcia_align_data*, align 8
  %10 = alloca %struct.resource_map*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.pcmcia_align_data*
  store %struct.pcmcia_align_data* %14, %struct.pcmcia_align_data** %9, align 8
  %15 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @pcmcia_common_align(%struct.pcmcia_align_data* %15, %struct.resource* %16, i32 %17, i32 %18)
  %20 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %21 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %20, i32 0, i32 0
  %22 = load %struct.resource_map*, %struct.resource_map** %21, align 8
  %23 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %22, i32 0, i32 2
  %24 = load %struct.resource_map*, %struct.resource_map** %23, align 8
  store %struct.resource_map* %24, %struct.resource_map** %10, align 8
  br label %25

25:                                               ; preds = %79, %4
  %26 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %27 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %28 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %27, i32 0, i32 0
  %29 = load %struct.resource_map*, %struct.resource_map** %28, align 8
  %30 = icmp ne %struct.resource_map* %26, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %25
  %32 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %33 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %36 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %39 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add i64 %37, %41
  %43 = sub i64 %42, 1
  store i64 %43, i64* %12, align 8
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %31
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pcmcia_common_align(%struct.pcmcia_align_data* %53, %struct.resource* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %31
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.resource*, %struct.resource** %6, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp uge i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %83

67:                                               ; preds = %58
  %68 = load %struct.resource*, %struct.resource** %6, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = sub i64 %73, 1
  %75 = load i64, i64* %12, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %83

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %81 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %80, i32 0, i32 2
  %82 = load %struct.resource_map*, %struct.resource_map** %81, align 8
  store %struct.resource_map* %82, %struct.resource_map** %10, align 8
  br label %25

83:                                               ; preds = %77, %66, %25
  %84 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %85 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %86 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %85, i32 0, i32 0
  %87 = load %struct.resource_map*, %struct.resource_map** %86, align 8
  %88 = icmp eq %struct.resource_map* %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.resource*, %struct.resource** %6, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.resource*, %struct.resource** %6, align 8
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %83
  ret void
}

declare dso_local i32 @pcmcia_common_align(%struct.pcmcia_align_data*, %struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
