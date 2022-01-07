; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_get_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_get_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vmx_segment_field = type { i32, i32, i32, i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@kvm_vmx_segment_fields = common dso_local global %struct.kvm_vmx_segment_field* null, align 8
@AR_UNUSABLE_MASK = common dso_local global i32 0, align 4
@emulate_invalid_guest_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_segment*, i32)* @vmx_get_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_get_segment(%struct.kvm_vcpu* %0, %struct.kvm_segment* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_segment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vmx_segment_field*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** @kvm_vmx_segment_fields, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %9, i64 %11
  store %struct.kvm_vmx_segment_field* %12, %struct.kvm_vmx_segment_field** %7, align 8
  %13 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %7, align 8
  %14 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vmcs_readl(i32 %15)
  %17 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 8
  %19 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @vmcs_read32(i32 %21)
  %23 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %23, i32 0, i32 10
  store i8* %22, i8** %24, align 8
  %25 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %7, align 8
  %26 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vmcs_read16(i32 %27)
  %29 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @vmcs_read32(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @AR_UNUSABLE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load i32, i32* @emulate_invalid_guest_state, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %40, %3
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 15
  %47 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 4
  %51 = and i32 %50, 1
  %52 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 5
  %56 = and i32 %55, 3
  %57 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %58 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 7
  %61 = and i32 %60, 1
  %62 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %63 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 12
  %66 = and i32 %65, 1
  %67 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %68 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 13
  %71 = and i32 %70, 1
  %72 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %73 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 14
  %76 = and i32 %75, 1
  %77 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %78 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = ashr i32 %79, 15
  %81 = and i32 %80, 1
  %82 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %83 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = ashr i32 %84, 16
  %86 = and i32 %85, 1
  %87 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %88 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  ret void
}

declare dso_local i32 @vmcs_readl(i32) #1

declare dso_local i8* @vmcs_read32(i32) #1

declare dso_local i32 @vmcs_read16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
