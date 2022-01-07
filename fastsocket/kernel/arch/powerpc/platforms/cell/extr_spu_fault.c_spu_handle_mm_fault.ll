; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_fault.c_spu_handle_mm_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_fault.c_spu_handle_mm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mm_struct = type { i32, i32* }
%struct.vm_area_struct = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@MFC_DSISR_ACCESS_PUT = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@MFC_DSISR_ACCESS_DENIED = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_handle_mm_fault(%struct.mm_struct* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %14 = icmp eq %struct.mm_struct* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %153

18:                                               ; preds = %4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %153

26:                                               ; preds = %18
  %27 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %32, i64 %33)
  store %struct.vm_area_struct* %34, %struct.vm_area_struct** %10, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %36 = icmp ne %struct.vm_area_struct* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %148

38:                                               ; preds = %26
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @VM_GROWSDOWN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %148

52:                                               ; preds = %44
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @expand_stack(%struct.vm_area_struct* %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %148

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @MFC_DSISR_ACCESS_PUT, align 8
  %62 = and i64 %60, %61
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @VM_WRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %148

73:                                               ; preds = %65
  br label %91

74:                                               ; preds = %59
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @MFC_DSISR_ACCESS_DENIED, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %148

80:                                               ; preds = %74
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VM_READ, align 4
  %85 = load i32, i32* @VM_EXEC, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  br label %148

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %73
  store i32 0, i32* %12, align 4
  %92 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  br label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = call i32 @handle_mm_fault(%struct.mm_struct* %92, %struct.vm_area_struct* %93, i64 %94, i32 %101)
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @VM_FAULT_ERROR, align 4
  %107 = and i32 %105, %106
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %100
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @VM_FAULT_OOM, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %12, align 4
  br label %148

119:                                              ; preds = %110
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @EFAULT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %12, align 4
  br label %148

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128
  %130 = call i32 (...) @BUG()
  br label %131

131:                                              ; preds = %129, %100
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %147

142:                                              ; preds = %131
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %142, %137
  br label %148

148:                                              ; preds = %147, %125, %116, %89, %79, %72, %57, %51, %37
  %149 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %150 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %149, i32 0, i32 0
  %151 = call i32 @up_read(i32* %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %148, %23, %15
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @handle_mm_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
