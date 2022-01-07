; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_use_inline_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_use_inline_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i8*, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@DM_BUFIO_INLINE_VECS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*, i32, i32, i32*)* @use_inline_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use_inline_bio(%struct.dm_buffer* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dm_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_buffer* %0, %struct.dm_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %11, i32 0, i32 1
  %13 = call i32 @bio_init(%struct.TYPE_6__* %12)
  %14 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @DM_BUFIO_INLINE_VECS, align 4
  %21 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %24, %29
  %31 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %9, align 8
  %49 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %4
  %58 = load i8*, i8** %9, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = and i64 %59, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  br label %75

66:                                               ; preds = %4
  %67 = load i8*, i8** %9, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = and i64 %68, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  br label %75

75:                                               ; preds = %66, %57
  br label %76

76:                                               ; preds = %120, %75
  %77 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %78 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %77, i32 0, i32 1
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @virt_to_page(i8* %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  br label %88

86:                                               ; preds = %76
  %87 = load i32, i32* @PAGE_SIZE, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @virt_to_phys(i8* %90)
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = sub nsw i32 %92, 1
  %94 = and i32 %91, %93
  %95 = call i32 @bio_add_page(%struct.TYPE_6__* %78, i32 %80, i32 %89, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %88
  %98 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %99 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %98, i32 0, i32 2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = icmp sle i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @BUG_ON(i32 %105)
  %107 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @use_dmio(%struct.dm_buffer* %107, i32 %108, i32 %109, i32* %110)
  br label %128

112:                                              ; preds = %88
  %113 = load i32, i32* @PAGE_SIZE, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %9, align 8
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %76, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.dm_buffer*, %struct.dm_buffer** %5, align 8
  %126 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %125, i32 0, i32 1
  %127 = call i32 @submit_bio(i32 %124, %struct.TYPE_6__* %126)
  br label %128

128:                                              ; preds = %123, %97
  ret void
}

declare dso_local i32 @bio_init(%struct.TYPE_6__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_add_page(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @use_dmio(%struct.dm_buffer*, i32, i32, i32*) #1

declare dso_local i32 @submit_bio(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
