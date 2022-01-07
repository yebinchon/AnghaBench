; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_segment_access_rights.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_segment_access_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@AR_UNUSABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_segment*)* @vmx_segment_access_rights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_segment_access_rights(%struct.kvm_segment* %0) #0 {
  %2 = alloca %struct.kvm_segment*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_segment* %0, %struct.kvm_segment** %2, align 8
  %4 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %4, i32 0, i32 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 65536, i32* %3, align 4
  br label %63

9:                                                ; preds = %1
  %10 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 15
  store i32 %13, i32* %3, align 4
  %14 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  %18 = shl i32 %17, 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 3
  %25 = shl i32 %24, 5
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = shl i32 %31, 7
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %36 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 1
  %39 = shl i32 %38, 12
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %43 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = shl i32 %45, 13
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %50 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 1
  %53 = shl i32 %52, 14
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.kvm_segment*, %struct.kvm_segment** %2, align 8
  %57 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = shl i32 %59, 15
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %9, %8
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @AR_UNUSABLE_MASK, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
