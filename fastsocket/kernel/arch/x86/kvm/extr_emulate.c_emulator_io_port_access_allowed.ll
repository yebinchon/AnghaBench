; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulator_io_port_access_allowed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulator_io_port_access_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }
%struct.x86_emulate_ops = type { i32 (i64, i32*, i32, i32, i32*)* }
%struct.kvm_segment = type { i32, i64, i64 }

@VCPU_SREG_TR = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*, i32, i32)* @emulator_io_port_access_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_io_port_access_allowed(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x86_emulate_ctxt*, align 8
  %7 = alloca %struct.x86_emulate_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_segment, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %6, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 7
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %15, align 4
  %21 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %22 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VCPU_SREG_TR, align 4
  %25 = call i32 @kvm_get_segment(i32 %23, %struct.kvm_segment* %10, i32 %24)
  %26 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %10, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 103
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %89

35:                                               ; preds = %30
  %36 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %7, align 8
  %37 = getelementptr inbounds %struct.x86_emulate_ops, %struct.x86_emulate_ops* %36, i32 0, i32 0
  %38 = load i32 (i64, i32*, i32, i32, i32*)*, i32 (i64, i32*, i32, i32, i32*)** %37, align 8
  %39 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %10, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 102
  %42 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %43 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %38(i64 %41, i32* %12, i32 2, i32 %44, i32* null)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %89

50:                                               ; preds = %35
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %52, 8
  %54 = add nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %89

59:                                               ; preds = %50
  %60 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %7, align 8
  %61 = getelementptr inbounds %struct.x86_emulate_ops, %struct.x86_emulate_ops* %60, i32 0, i32 0
  %62 = load i32 (i64, i32*, i32, i32, i32*)*, i32 (i64, i32*, i32, i32, i32*)** %61, align 8
  %63 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %10, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %73 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %62(i64 %71, i32* %13, i32 1, i32 %74, i32* null)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %89

80:                                               ; preds = %59
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = lshr i32 %81, %82
  %84 = load i32, i32* %15, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %89

88:                                               ; preds = %80
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %87, %79, %58, %49, %34, %29
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @kvm_get_segment(i32, %struct.kvm_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
