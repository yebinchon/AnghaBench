; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_seg_desct_to_kvm_desct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_seg_desct_to_kvm_desct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_struct = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.kvm_segment = type { i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.desc_struct*, i32, %struct.kvm_segment*)* @seg_desct_to_kvm_desct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seg_desct_to_kvm_desct(%struct.desc_struct* %0, i32 %1, %struct.kvm_segment* %2) #0 {
  %4 = alloca %struct.desc_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_segment*, align 8
  store %struct.desc_struct* %0, %struct.desc_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.kvm_segment* %2, %struct.kvm_segment** %6, align 8
  %7 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %8 = call i32 @get_desc_base(%struct.desc_struct* %7)
  %9 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %10 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %9, i32 0, i32 12
  store i32 %8, i32* %10, align 4
  %11 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %12 = call i32 @get_desc_limit(%struct.desc_struct* %11)
  %13 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %16 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 12
  store i32 %23, i32* %21, align 8
  %24 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %25 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, 4095
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %19, %3
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 8
  %32 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %33 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %36 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 4
  %37 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %38 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %43 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %46 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %48 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %51 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %53 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %56 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %58 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %61 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %63 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %66 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %68 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %71 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %28
  %75 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %76 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %80

77:                                               ; preds = %28
  %78 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %79 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %82 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  ret void
}

declare dso_local i32 @get_desc_base(%struct.desc_struct*) #1

declare dso_local i32 @get_desc_limit(%struct.desc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
