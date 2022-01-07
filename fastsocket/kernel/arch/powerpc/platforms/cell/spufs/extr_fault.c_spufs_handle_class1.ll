; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_fault.c_spufs_handle_class1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_fault.c_spufs_handle_class1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.spu_context = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_11__ = type { {}* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MFC_DSISR_PTE_NOT_FOUND = common dso_local global i32 0, align 4
@MFC_DSISR_ACCESS_DENIED = common dso_local global i32 0, align 4
@SPU_UTIL_IOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ctx %p: ea %016llx, dsisr %016llx state %d\0A\00", align 1
@SPU_STATE_RUNNABLE = common dso_local global i64 0, align 8
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_USER = common dso_local global i32 0, align 4
@MFC_DSISR_ACCESS_PUT = common dso_local global i32 0, align 4
@_PAGE_RW = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_12__* null, align 8
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@SPE_EVENT_SPE_DATA_STORAGE = common dso_local global i32 0, align 4
@SPU_UTIL_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spufs_handle_class1(%struct.spu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %11 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %15 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MFC_DSISR_PTE_NOT_FOUND, align 4
  %20 = load i32, i32* @MFC_DSISR_ACCESS_DENIED, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %171

25:                                               ; preds = %1
  %26 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %27 = load i32, i32* @SPU_UTIL_IOWAIT, align 4
  %28 = call i32 @spuctx_switch_state(%struct.spu_context* %26, i32 %27)
  %29 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %33 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.spu_context* %29, i32 %30, i32 %31, i64 %34)
  %36 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %37 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %42 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SPU_STATE_RUNNABLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %25
  %47 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %48 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %25
  %55 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %56 = call i32 @spu_release(%struct.spu_context* %55)
  %57 = load i32, i32* @_PAGE_PRESENT, align 4
  %58 = load i32, i32* @_PAGE_USER, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MFC_DSISR_ACCESS_PUT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i64, i64* @_PAGE_RW, align 8
  br label %67

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i64 [ %65, %64 ], [ 0, %66 ]
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = or i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @local_irq_save(i64 %73)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @hash_page(i32 %75, i32 %76, i32 768)
  store i32 %77, i32* %9, align 4
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @local_irq_restore(i64 %78)
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %67
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @spu_handle_mm_fault(i32 %85, i32 %86, i32 %87, i32* %8)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %82, %67
  %90 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %91 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %90, i32 0, i32 5
  %92 = call i32 @mutex_lock(i32* %91)
  %93 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %94 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %97 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %161, label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %108 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %118

112:                                              ; preds = %101
  %113 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %114 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %120 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SPU_STATE_RUNNABLE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %131 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %130, i32 0, i32 2
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %145

137:                                              ; preds = %124
  %138 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %139 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %137, %129
  br label %146

146:                                              ; preds = %145, %118
  %147 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %148 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %147, i32 0, i32 2
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = icmp ne %struct.TYPE_10__* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %153 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = bitcast {}** %155 to i32 (%struct.spu_context*)**
  %157 = load i32 (%struct.spu_context*)*, i32 (%struct.spu_context*)** %156, align 8
  %158 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %159 = call i32 %157(%struct.spu_context* %158)
  br label %160

160:                                              ; preds = %151, %146
  br label %166

161:                                              ; preds = %89
  %162 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @SPE_EVENT_SPE_DATA_STORAGE, align 4
  %165 = call i32 @spufs_handle_event(%struct.spu_context* %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %161, %160
  %167 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %168 = load i32, i32* @SPU_UTIL_SYSTEM, align 4
  %169 = call i32 @spuctx_switch_state(%struct.spu_context* %167, i32 %168)
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %166, %24
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @spuctx_switch_state(%struct.spu_context*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.spu_context*, i32, i32, i64) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @hash_page(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @spu_handle_mm_fault(i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spufs_handle_event(%struct.spu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
